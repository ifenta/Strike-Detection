import processing.serial.*;

PrintWriter output;
Serial myPort;
String val;

void setup()
{
  // I know that the first port in the serial list on my mac
  // is Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  printArray(Serial.list());
  //String portName = Serial.list()[2]; //change the 0 to a 1 or 2 etc. to match your port
  String portName = "/dev/cu.SLAB_USBtoUART";
  myPort = new Serial(this, portName, 115200);
  
  output = createWriter("positions.txt");
  println("Starting code");
}

void draw()
{
  if ( myPort.available() > 0) 
  {  // If data is available,
    val = myPort.readStringUntil('\n');         // read it and store it in val
    output.print(val); //add to file
    println(val);
    if(val.equals("complete")==true || val.indexOf('c') == 0){
      println("finished");
      output.flush(); // Writes the remaining data to the file
      output.close(); // Finishes the file
      exit(); // Stops the program
    }
  } 
  
}

void keyPressed(){
  println("key pressed cancel - may not have finished reading all data");
  output.flush(); // Writes the remaining data to the file
  output.close(); // Finishes the file
  exit(); // Stops the program 
}
