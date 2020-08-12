<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="MMBT2222A-7-F" urn="urn:adsk.eagle:library:22594200">
<packages>
<package name="SOT103P240X110-3N" urn="urn:adsk.eagle:footprint:22594201/1" library_version="2">
<wire x1="0.7112" y1="0.6096" x2="0.7112" y2="1.4986" width="0.1524" layer="21"/>
<wire x1="-0.1016" y1="-1.4986" x2="0.7112" y2="-1.4986" width="0.1524" layer="21"/>
<wire x1="0.7112" y1="-1.4986" x2="0.7112" y2="-0.6096" width="0.1524" layer="21"/>
<wire x1="0.7112" y1="1.4986" x2="0.3048" y2="1.4986" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="1.4986" x2="-0.1016" y2="1.4986" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="1.4986" x2="-0.0254" y2="1.1938" width="0.1524" layer="21" curve="-95"/>
<wire x1="-0.7112" y1="-1.4986" x2="0.7112" y2="-1.4986" width="0" layer="51"/>
<wire x1="0.7112" y1="-1.4986" x2="0.7112" y2="-0.254" width="0" layer="51"/>
<wire x1="0.7112" y1="-0.254" x2="0.7112" y2="0.254" width="0" layer="51"/>
<wire x1="0.7112" y1="0.254" x2="0.7112" y2="1.4986" width="0" layer="51"/>
<wire x1="0.7112" y1="1.4986" x2="0.3048" y2="1.4986" width="0" layer="51"/>
<wire x1="0.3048" y1="1.4986" x2="-0.3048" y2="1.4986" width="0" layer="51"/>
<wire x1="-0.3048" y1="1.4986" x2="-0.7112" y2="1.4986" width="0" layer="51"/>
<wire x1="-0.7112" y1="1.4986" x2="-0.7112" y2="1.27" width="0" layer="51"/>
<wire x1="-0.7112" y1="1.27" x2="-0.7112" y2="0.762" width="0" layer="51"/>
<wire x1="-0.7112" y1="0.762" x2="-0.7112" y2="-0.762" width="0" layer="51"/>
<wire x1="-0.7112" y1="1.27" x2="-1.2446" y2="1.27" width="0" layer="51"/>
<wire x1="-1.2446" y1="1.27" x2="-1.2446" y2="0.762" width="0" layer="51"/>
<wire x1="-1.2446" y1="0.762" x2="-0.7112" y2="0.762" width="0" layer="51"/>
<wire x1="-0.7112" y1="-1.4986" x2="-0.7112" y2="-1.27" width="0" layer="51"/>
<wire x1="-0.7112" y1="-1.27" x2="-0.7112" y2="-0.762" width="0" layer="51"/>
<wire x1="-0.7112" y1="-0.762" x2="-1.2446" y2="-0.762" width="0" layer="51"/>
<wire x1="-1.2446" y1="-0.762" x2="-1.2446" y2="-1.27" width="0" layer="51"/>
<wire x1="-1.2446" y1="-1.27" x2="-0.7112" y2="-1.27" width="0" layer="51"/>
<wire x1="0.7112" y1="-0.254" x2="1.2446" y2="-0.254" width="0" layer="51"/>
<wire x1="1.2446" y1="-0.254" x2="1.2446" y2="0.254" width="0" layer="51"/>
<wire x1="1.2446" y1="0.254" x2="0.7112" y2="0.254" width="0" layer="51"/>
<wire x1="0.3048" y1="1.4986" x2="-0.3048" y2="1.4986" width="0" layer="51" curve="-180"/>
<text x="-3.458459375" y="2.542990625" size="2.08525" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.45821875" y="-4.449909375" size="2.0851" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
<smd name="1" x="-1.016" y="1.016" dx="1.3208" dy="0.5588" layer="1"/>
<smd name="2" x="-1.016" y="-1.016" dx="1.3208" dy="0.5588" layer="1"/>
<smd name="3" x="1.016" y="0" dx="1.3208" dy="0.5588" layer="1"/>
</package>
</packages>
<packages3d>
<package3d name="SOT103P240X110-3N" urn="urn:adsk.eagle:package:22594203/2" type="model" library_version="2">
<packageinstances>
<packageinstance name="SOT103P240X110-3N"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MMBT2222A-7-F" urn="urn:adsk.eagle:symbol:22594202/1" library_version="2">
<wire x1="-12.7" y1="5.08" x2="-12.7" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="-10.16" x2="12.7" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="12.7" y1="-10.16" x2="12.7" y2="5.08" width="0.4064" layer="94"/>
<wire x1="12.7" y1="5.08" x2="-12.7" y2="5.08" width="0.4064" layer="94"/>
<text x="-5.416040625" y="7.6028" size="2.08505" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.280909375" y="-14.8277" size="2.085540625" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<pin name="B" x="-17.78" y="0" length="middle" direction="in"/>
<pin name="E" x="-17.78" y="-5.08" length="middle" direction="pas"/>
<pin name="C" x="17.78" y="0" length="middle" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MMBT2222A-7-F" urn="urn:adsk.eagle:component:22594204/2" prefix="U" library_version="2">
<description>NPN SMALL SIGNAL SURFACE MOUNT TRANSISTOR </description>
<gates>
<gate name="A" symbol="MMBT2222A-7-F" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT103P240X110-3N">
<connects>
<connect gate="A" pin="B" pad="1"/>
<connect gate="A" pin="C" pad="3"/>
<connect gate="A" pin="E" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22594203/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value=" Bipolar (BJT) Transistor NPN 40V 600mA 300MHz 310mW Surface Mount SOT-23-3 "/>
<attribute name="DIGI-KEY_PART_NUMBER" value="MMBT2222A-FDICT-ND"/>
<attribute name="DIGIKEY-PURCHASE-URL" value="https://snapeda.com/shop?store=DigiKey&amp;id=229424"/>
<attribute name="MF" value="Diodes Inc."/>
<attribute name="MOUSER-PURCHASE-URL" value="https://snapeda.com/shop?store=Mouser&amp;id=229424"/>
<attribute name="MP" value="MMBT2222A-7-F"/>
<attribute name="PACKAGE" value="SOT-23-3 Diodes Inc."/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MCP73831T-2ACI_OT" urn="urn:adsk.eagle:library:22594219">
<packages>
<package name="SOT95P280X145-5N" urn="urn:adsk.eagle:footprint:22594220/1" library_version="2">
<wire x1="0.6096" y1="1.5494" x2="0.3048" y2="1.5494" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="1.5494" x2="-0.3048" y2="1.5494" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="1.5494" x2="-0.6096" y2="1.5494" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="1.5494" x2="-0.3048" y2="1.5494" width="0" layer="21" curve="-180"/>
<wire x1="-0.8636" y1="-1.5494" x2="0.8636" y2="-1.5494" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-1.5494" x2="0.8636" y2="-1.1938" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-1.1938" x2="0.8636" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-0.7112" x2="0.8636" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="1.5494" x2="0.3048" y2="1.5494" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="1.5494" x2="-0.3048" y2="1.5494" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="1.5494" x2="-0.8636" y2="1.5494" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="1.5494" x2="-0.8636" y2="1.1938" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="1.1938" x2="-0.8636" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="0.7112" x2="-0.8636" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="0.254" x2="-0.8636" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-0.254" x2="-0.8636" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="1.1938" x2="-1.4986" y2="1.1938" width="0.1524" layer="51"/>
<wire x1="-1.4986" y1="1.1938" x2="-1.4986" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="-1.4986" y1="0.7112" x2="-0.8636" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="0.254" x2="-1.4986" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.4986" y1="0.254" x2="-1.4986" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-1.4986" y1="-0.254" x2="-0.8636" y2="-0.254" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-1.5494" x2="-0.8636" y2="-1.1938" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-1.1938" x2="-0.8636" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-0.7112" x2="-1.4986" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="-1.4986" y1="-0.7112" x2="-1.4986" y2="-1.1938" width="0.1524" layer="51"/>
<wire x1="-1.4986" y1="-1.1938" x2="-0.8636" y2="-1.1938" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-1.1938" x2="1.4986" y2="-1.1938" width="0.1524" layer="51"/>
<wire x1="1.4986" y1="-1.1938" x2="1.4986" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="1.4986" y1="-0.7112" x2="0.8636" y2="-0.7112" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="1.5494" x2="0.8636" y2="1.1938" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="1.1938" x2="0.8636" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="0.7112" x2="1.4986" y2="0.7112" width="0.1524" layer="51"/>
<wire x1="1.4986" y1="0.7112" x2="1.4986" y2="1.1938" width="0.1524" layer="51"/>
<wire x1="1.4986" y1="1.1938" x2="0.8636" y2="1.1938" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="1.5494" x2="-0.3048" y2="1.5494" width="0" layer="51" curve="-180"/>
<text x="-4.7523" y="1.880590625" size="2.0839" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.773759375" y="-3.917" size="2.08566875" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
<smd name="1" x="-1.2954" y="0.9398" dx="1.27" dy="0.5588" layer="1"/>
<smd name="2" x="-1.2954" y="0" dx="1.27" dy="0.5588" layer="1"/>
<smd name="3" x="-1.2954" y="-0.9398" dx="1.27" dy="0.5588" layer="1"/>
<smd name="4" x="1.2954" y="-0.9398" dx="1.27" dy="0.5588" layer="1"/>
<smd name="5" x="1.2954" y="0.9398" dx="1.27" dy="0.5588" layer="1"/>
</package>
</packages>
<packages3d>
<package3d name="SOT95P280X145-5N" urn="urn:adsk.eagle:package:22594222/2" type="model" library_version="2">
<packageinstances>
<packageinstance name="SOT95P280X145-5N"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MCP73831T-2ACI/OT" urn="urn:adsk.eagle:symbol:22594221/1" library_version="2">
<wire x1="-12.7" y1="7.62" x2="-12.7" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="-12.7" x2="12.7" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="12.7" y1="-12.7" x2="12.7" y2="7.62" width="0.4064" layer="94"/>
<wire x1="12.7" y1="7.62" x2="-12.7" y2="7.62" width="0.4064" layer="94"/>
<text x="-4.122740625" y="10.0778" size="2.08681875" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.95256875" y="-17.1963" size="2.085940625" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<pin name="VDD" x="-17.78" y="2.54" length="middle" direction="pwr"/>
<pin name="PROG" x="-17.78" y="-2.54" length="middle" direction="in"/>
<pin name="VSS" x="-17.78" y="-7.62" length="middle" direction="pwr"/>
<pin name="STAT" x="17.78" y="2.54" length="middle" direction="out" rot="R180"/>
<pin name="VBAT" x="17.78" y="-2.54" length="middle" direction="out" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MCP73831T-2ACI/OT" urn="urn:adsk.eagle:component:22594223/2" library_version="2">
<description>Charge Management Controller </description>
<gates>
<gate name="A" symbol="MCP73831T-2ACI/OT" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT95P280X145-5N">
<connects>
<connect gate="A" pin="PROG" pad="5"/>
<connect gate="A" pin="STAT" pad="1"/>
<connect gate="A" pin="VBAT" pad="3"/>
<connect gate="A" pin="VDD" pad="4"/>
<connect gate="A" pin="VSS" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22594222/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value=" Charger IC Lithium Ion/Polymer SOT-23-5 "/>
<attribute name="DIGI-KEY_PART_NUMBER" value="MCP73831T-2ACI/OTCT-ND"/>
<attribute name="DIGIKEY-PURCHASE-URL" value="https://snapeda.com/shop?store=DigiKey&amp;id=53208"/>
<attribute name="MF" value="Microchip"/>
<attribute name="MOUSER-PURCHASE-URL" value="https://snapeda.com/shop?store=Mouser&amp;id=53208"/>
<attribute name="MP" value="MCP73831T-2ACI/OT"/>
<attribute name="PACKAGE" value="SOT-23 Microchip"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="LSM9DS1TR" urn="urn:adsk.eagle:library:22594171">
<packages>
<package name="PQFN43P300X350X102-24N" urn="urn:adsk.eagle:footprint:22594173/1" library_version="1">
<wire x1="-1.83" y1="-1.58" x2="-1.83" y2="1.58" width="0.127" layer="51"/>
<wire x1="-1.83" y1="1.58" x2="1.83" y2="1.58" width="0.127" layer="51"/>
<wire x1="1.83" y1="1.58" x2="1.83" y2="-1.58" width="0.127" layer="51"/>
<wire x1="1.83" y1="-1.58" x2="-1.83" y2="-1.58" width="0.127" layer="51"/>
<wire x1="-1.99" y1="-1.74" x2="-1.99" y2="1.74" width="0.05" layer="39"/>
<wire x1="-1.99" y1="1.74" x2="1.99" y2="1.74" width="0.05" layer="39"/>
<wire x1="1.99" y1="1.74" x2="1.99" y2="-1.74" width="0.05" layer="39"/>
<wire x1="1.99" y1="-1.74" x2="-1.99" y2="-1.74" width="0.05" layer="39"/>
<wire x1="-1.86" y1="1.58" x2="-1.86" y2="0.94" width="0.127" layer="21"/>
<wire x1="1.86" y1="1.58" x2="1.86" y2="0.94" width="0.127" layer="21"/>
<wire x1="-1.86" y1="-1.58" x2="-1.86" y2="-0.94" width="0.127" layer="21"/>
<wire x1="1.86" y1="-1.58" x2="1.86" y2="-0.94" width="0.127" layer="21"/>
<circle x="-2.4" y="1.2" radius="0.1" width="0.2" layer="21"/>
<circle x="-2.4" y="1.2" radius="0.1" width="0.2" layer="51"/>
<text x="-2.00321875" y="1.903059375" size="0.40705625" layer="25">&gt;NAME</text>
<text x="-2.0016" y="-2.201759375" size="0.406725" layer="27">&gt;VALUE</text>
<smd name="1" x="-1.505" y="1.22" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R90"/>
<smd name="2" x="-1.47" y="0.645" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R180"/>
<smd name="3" x="-1.47" y="0.215" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R180"/>
<smd name="4" x="-1.47" y="-0.215" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R180"/>
<smd name="5" x="-1.47" y="-0.645" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R180"/>
<smd name="6" x="-1.505" y="-1.22" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R270"/>
<smd name="7" x="-1.075" y="-1.22" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R270"/>
<smd name="8" x="-0.645" y="-1.22" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R270"/>
<smd name="9" x="-0.215" y="-1.22" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R270"/>
<smd name="10" x="0.215" y="-1.22" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R270"/>
<smd name="11" x="0.645" y="-1.22" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R270"/>
<smd name="12" x="1.075" y="-1.22" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R270"/>
<smd name="13" x="1.505" y="-1.22" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R270"/>
<smd name="14" x="1.47" y="-0.645" dx="0.53" dy="0.28" layer="1" roundness="7"/>
<smd name="15" x="1.47" y="-0.215" dx="0.53" dy="0.28" layer="1" roundness="7"/>
<smd name="16" x="1.47" y="0.215" dx="0.53" dy="0.28" layer="1" roundness="7"/>
<smd name="17" x="1.47" y="0.645" dx="0.53" dy="0.28" layer="1" roundness="7"/>
<smd name="18" x="1.505" y="1.22" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R90"/>
<smd name="19" x="1.075" y="1.22" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R90"/>
<smd name="20" x="0.645" y="1.22" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R90"/>
<smd name="21" x="0.215" y="1.22" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R90"/>
<smd name="22" x="-0.215" y="1.22" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R90"/>
<smd name="23" x="-0.645" y="1.22" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R90"/>
<smd name="24" x="-1.075" y="1.22" dx="0.53" dy="0.28" layer="1" roundness="7" rot="R90"/>
</package>
</packages>
<packages3d>
<package3d name="PQFN43P300X350X102-24N" urn="urn:adsk.eagle:package:22594175/1" type="box" library_version="1">
<packageinstances>
<packageinstance name="PQFN43P300X350X102-24N"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="LSM9DS1TR" urn="urn:adsk.eagle:symbol:22594174/1" library_version="1">
<wire x1="12.7" y1="-22.86" x2="-12.7" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-22.86" x2="-12.7" y2="25.4" width="0.254" layer="94"/>
<wire x1="-12.7" y1="25.4" x2="12.7" y2="25.4" width="0.254" layer="94"/>
<wire x1="12.7" y1="25.4" x2="12.7" y2="-22.86" width="0.254" layer="94"/>
<text x="-12.7213" y="26.0786" size="1.78098125" layer="95">&gt;NAME</text>
<text x="-12.7214" y="-25.4427" size="1.780990625" layer="96">&gt;VALUE</text>
<pin name="VDDIO" x="17.78" y="20.32" length="middle" direction="pwr" rot="R180"/>
<pin name="SCL/SPC" x="-17.78" y="15.24" length="middle" direction="in" function="clk"/>
<pin name="SDA/SDI/SDO" x="-17.78" y="12.7" length="middle"/>
<pin name="SDO_A/G" x="17.78" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="SDO_M" x="17.78" y="-2.54" length="middle" direction="out" rot="R180"/>
<pin name="CS_A/G" x="-17.78" y="7.62" length="middle" direction="in"/>
<pin name="CS_M" x="-17.78" y="-5.08" length="middle" direction="in"/>
<pin name="DRDY_M" x="17.78" y="-7.62" length="middle" direction="out" rot="R180"/>
<pin name="INT_M" x="17.78" y="-5.08" length="middle" direction="out" rot="R180"/>
<pin name="INT1_A/G" x="17.78" y="5.08" length="middle" direction="out" rot="R180"/>
<pin name="INT2_A/G" x="17.78" y="2.54" length="middle" direction="out" rot="R180"/>
<pin name="DEN_A/G" x="-17.78" y="5.08" length="middle" direction="in"/>
<pin name="GND" x="17.78" y="-20.32" length="middle" direction="pwr" rot="R180"/>
<pin name="CAP" x="17.78" y="-15.24" length="middle" direction="pas" rot="R180"/>
<pin name="VDD" x="17.78" y="22.86" length="middle" direction="pwr" rot="R180"/>
<pin name="C1" x="17.78" y="-12.7" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LSM9DS1TR" urn="urn:adsk.eagle:component:22594176/1" prefix="U" library_version="1">
<description>The LSM9DS1 is a system-in-package featuring a
3D digital linear acceleration sensor, a 3D digital
angular rate sensor, and a 3D digital magnetic
sensor. </description>
<gates>
<gate name="G$1" symbol="LSM9DS1TR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PQFN43P300X350X102-24N">
<connects>
<connect gate="G$1" pin="C1" pad="24"/>
<connect gate="G$1" pin="CAP" pad="21"/>
<connect gate="G$1" pin="CS_A/G" pad="7"/>
<connect gate="G$1" pin="CS_M" pad="8"/>
<connect gate="G$1" pin="DEN_A/G" pad="13"/>
<connect gate="G$1" pin="DRDY_M" pad="9"/>
<connect gate="G$1" pin="GND" pad="19 20"/>
<connect gate="G$1" pin="INT1_A/G" pad="11"/>
<connect gate="G$1" pin="INT2_A/G" pad="12"/>
<connect gate="G$1" pin="INT_M" pad="10"/>
<connect gate="G$1" pin="SCL/SPC" pad="2"/>
<connect gate="G$1" pin="SDA/SDI/SDO" pad="4"/>
<connect gate="G$1" pin="SDO_A/G" pad="5"/>
<connect gate="G$1" pin="SDO_M" pad="6"/>
<connect gate="G$1" pin="VDD" pad="22 23"/>
<connect gate="G$1" pin="VDDIO" pad="1 3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22594175/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value=" Accelerometer, Gyroscope, Magnetometer, Temperature, 9 Axis Sensor I²C, SPI Output "/>
<attribute name="DIGI-KEY_PART_NUMBER" value="497-14946-1-ND"/>
<attribute name="DIGIKEY-PURCHASE-URL" value="https://snapeda.com/shop?store=DigiKey&amp;id=106273"/>
<attribute name="MF" value="STMicroelectronics"/>
<attribute name="MOUSER-PURCHASE-URL" value="https://snapeda.com/shop?store=Mouser&amp;id=106273"/>
<attribute name="MP" value="LSM9DS1TR"/>
<attribute name="PACKAGE" value="TFLGA-24 STMicroelectronics"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ESP32-WROOM-32" urn="urn:adsk.eagle:library:22594138">
<packages>
<package name="MODULE_ESP32-WROOM-32" urn="urn:adsk.eagle:footprint:22594139/1" library_version="2">
<wire x1="-9" y1="12.75" x2="9" y2="12.75" width="0.127" layer="51"/>
<wire x1="9" y1="12.75" x2="9" y2="6.45" width="0.127" layer="51"/>
<wire x1="9" y1="6.45" x2="9" y2="-12.75" width="0.127" layer="51"/>
<wire x1="9" y1="-12.75" x2="-9" y2="-12.75" width="0.127" layer="51"/>
<wire x1="-9" y1="-12.75" x2="-9" y2="6.45" width="0.127" layer="51"/>
<wire x1="-9" y1="12.75" x2="-9" y2="6.45" width="0.127" layer="51"/>
<wire x1="-9" y1="6.45" x2="9" y2="6.45" width="0.127" layer="51"/>
<wire x1="-9.25" y1="13" x2="9.25" y2="13" width="0.05" layer="39"/>
<wire x1="9.25" y1="13" x2="9.25" y2="6" width="0.05" layer="39"/>
<wire x1="9.25" y1="6" x2="9.75" y2="6" width="0.05" layer="39"/>
<wire x1="9.75" y1="6" x2="9.75" y2="-13.5" width="0.05" layer="39"/>
<wire x1="9.75" y1="-13.5" x2="-9.75" y2="-13.5" width="0.05" layer="39"/>
<wire x1="-9.75" y1="-13.5" x2="-9.75" y2="6" width="0.05" layer="39"/>
<wire x1="-9.75" y1="6" x2="-9.25" y2="6" width="0.05" layer="39"/>
<wire x1="-9.25" y1="6" x2="-9.25" y2="13" width="0.05" layer="39"/>
<wire x1="-9" y1="-12.1" x2="-9" y2="-12.75" width="0.127" layer="21"/>
<wire x1="-9" y1="-12.75" x2="-6.55" y2="-12.75" width="0.127" layer="21"/>
<wire x1="6.55" y1="-12.75" x2="9" y2="-12.75" width="0.127" layer="21"/>
<wire x1="9" y1="-12.75" x2="9" y2="-12.1" width="0.127" layer="21"/>
<wire x1="-9" y1="6.25" x2="-9" y2="12.75" width="0.127" layer="21"/>
<wire x1="-9" y1="12.75" x2="9" y2="12.75" width="0.127" layer="21"/>
<wire x1="9" y1="12.75" x2="9" y2="6.25" width="0.127" layer="21"/>
<rectangle x1="-9" y1="6.45" x2="9" y2="12.75" layer="41"/>
<rectangle x1="-9" y1="6.45" x2="9" y2="12.75" layer="43"/>
<text x="-6" y="9" size="1.778" layer="51">ANTENNA</text>
<text x="-9.5" y="13.25" size="1.27" layer="25">&gt;NAME</text>
<text x="-9.5" y="-15" size="1.27" layer="27">&gt;VALUE</text>
<circle x="-10" y="5.25" radius="0.1" width="0.2" layer="51"/>
<circle x="-10" y="5.25" radius="0.1" width="0.2" layer="21"/>
<smd name="1" x="-8.5" y="5.26" dx="2" dy="0.9" layer="1"/>
<smd name="2" x="-8.5" y="3.99" dx="2" dy="0.9" layer="1"/>
<smd name="3" x="-8.5" y="2.72" dx="2" dy="0.9" layer="1"/>
<smd name="4" x="-8.5" y="1.45" dx="2" dy="0.9" layer="1"/>
<smd name="5" x="-8.5" y="0.18" dx="2" dy="0.9" layer="1"/>
<smd name="6" x="-8.5" y="-1.09" dx="2" dy="0.9" layer="1"/>
<smd name="7" x="-8.5" y="-2.36" dx="2" dy="0.9" layer="1"/>
<smd name="8" x="-8.5" y="-3.63" dx="2" dy="0.9" layer="1"/>
<smd name="9" x="-8.5" y="-4.9" dx="2" dy="0.9" layer="1"/>
<smd name="10" x="-8.5" y="-6.17" dx="2" dy="0.9" layer="1"/>
<smd name="11" x="-8.5" y="-7.44" dx="2" dy="0.9" layer="1"/>
<smd name="12" x="-8.5" y="-8.71" dx="2" dy="0.9" layer="1"/>
<smd name="13" x="-8.5" y="-9.98" dx="2" dy="0.9" layer="1"/>
<smd name="14" x="-8.5" y="-11.25" dx="2" dy="0.9" layer="1"/>
<smd name="15" x="-5.715" y="-12.25" dx="0.9" dy="2" layer="1"/>
<smd name="16" x="-4.445" y="-12.25" dx="0.9" dy="2" layer="1"/>
<smd name="17" x="-3.175" y="-12.25" dx="0.9" dy="2" layer="1"/>
<smd name="18" x="-1.905" y="-12.25" dx="0.9" dy="2" layer="1"/>
<smd name="19" x="-0.635" y="-12.25" dx="0.9" dy="2" layer="1"/>
<smd name="20" x="0.635" y="-12.25" dx="0.9" dy="2" layer="1"/>
<smd name="21" x="1.905" y="-12.25" dx="0.9" dy="2" layer="1"/>
<smd name="22" x="3.175" y="-12.25" dx="0.9" dy="2" layer="1"/>
<smd name="23" x="4.445" y="-12.25" dx="0.9" dy="2" layer="1"/>
<smd name="24" x="5.715" y="-12.25" dx="0.9" dy="2" layer="1"/>
<smd name="25" x="8.5" y="-11.25" dx="2" dy="0.9" layer="1"/>
<smd name="26" x="8.5" y="-9.98" dx="2" dy="0.9" layer="1"/>
<smd name="27" x="8.5" y="-8.71" dx="2" dy="0.9" layer="1"/>
<smd name="28" x="8.5" y="-7.44" dx="2" dy="0.9" layer="1"/>
<smd name="29" x="8.5" y="-6.17" dx="2" dy="0.9" layer="1"/>
<smd name="30" x="8.5" y="-4.9" dx="2" dy="0.9" layer="1"/>
<smd name="31" x="8.5" y="-3.63" dx="2" dy="0.9" layer="1"/>
<smd name="32" x="8.5" y="-2.36" dx="2" dy="0.9" layer="1"/>
<smd name="33" x="8.5" y="-1.09" dx="2" dy="0.9" layer="1"/>
<smd name="34" x="8.5" y="0.18" dx="2" dy="0.9" layer="1"/>
<smd name="35" x="8.5" y="1.45" dx="2" dy="0.9" layer="1"/>
<smd name="36" x="8.5" y="2.72" dx="2" dy="0.9" layer="1"/>
<smd name="37" x="8.5" y="3.99" dx="2" dy="0.9" layer="1"/>
<smd name="38" x="8.5" y="5.26" dx="2" dy="0.9" layer="1"/>
<smd name="39_1" x="-2.835" y="-0.405" dx="1.33" dy="1.33" layer="1"/>
<smd name="39_2" x="-1" y="-0.405" dx="1.33" dy="1.33" layer="1"/>
<smd name="39_3" x="0.835" y="-0.405" dx="1.33" dy="1.33" layer="1"/>
<smd name="39_4" x="-2.835" y="-2.24" dx="1.33" dy="1.33" layer="1"/>
<smd name="39_5" x="-1" y="-2.24" dx="1.33" dy="1.33" layer="1"/>
<smd name="39_6" x="0.835" y="-2.24" dx="1.33" dy="1.33" layer="1"/>
<smd name="39_7" x="-2.835" y="-4.075" dx="1.33" dy="1.33" layer="1"/>
<smd name="39_8" x="-1" y="-4.075" dx="1.33" dy="1.33" layer="1"/>
<smd name="39_9" x="0.835" y="-4.075" dx="1.33" dy="1.33" layer="1"/>
<pad name="39_10" x="-1.9175" y="-0.405" drill="0.2" diameter="0.3"/>
<pad name="39_11" x="-0.0825" y="-0.405" drill="0.2" diameter="0.3"/>
<pad name="39_12" x="-2.835" y="-1.3225" drill="0.2" diameter="0.3"/>
<pad name="39_13" x="-1" y="-1.3225" drill="0.2" diameter="0.3"/>
<pad name="39_14" x="0.835" y="-1.3225" drill="0.2" diameter="0.3"/>
<pad name="39_15" x="-1.9175" y="-2.24" drill="0.2" diameter="0.3"/>
<pad name="39_16" x="-0.0825" y="-2.24" drill="0.2" diameter="0.3"/>
<pad name="39_17" x="-2.835" y="-3.1575" drill="0.2" diameter="0.3"/>
<pad name="39_18" x="-1" y="-3.1575" drill="0.2" diameter="0.3"/>
<pad name="39_19" x="0.835" y="-3.1575" drill="0.2" diameter="0.3"/>
<pad name="39_20" x="-1.9175" y="-4.075" drill="0.2" diameter="0.3"/>
<pad name="39_21" x="-0.0825" y="-4.075" drill="0.2" diameter="0.3"/>
</package>
</packages>
<packages3d>
<package3d name="MODULE_ESP32-WROOM-32" urn="urn:adsk.eagle:package:22594141/2" type="model" library_version="2">
<packageinstances>
<packageinstance name="MODULE_ESP32-WROOM-32"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="ESP32-WROOM-32" urn="urn:adsk.eagle:symbol:22594140/1" library_version="2">
<wire x1="-15.24" y1="30.48" x2="15.24" y2="30.48" width="0.254" layer="94"/>
<wire x1="15.24" y1="30.48" x2="15.24" y2="-33.02" width="0.254" layer="94"/>
<wire x1="15.24" y1="-33.02" x2="-15.24" y2="-33.02" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-33.02" x2="-15.24" y2="30.48" width="0.254" layer="94"/>
<text x="-15.0359" y="31.5945" size="1.778" layer="95">&gt;NAME</text>
<text x="-15.2867" y="-35.6681" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="20.32" y="-30.48" length="middle" direction="pwr" rot="R180"/>
<pin name="3V3" x="20.32" y="27.94" length="middle" direction="pwr" rot="R180"/>
<pin name="EN" x="-20.32" y="22.86" length="middle" direction="in"/>
<pin name="SENSOR_VP" x="-20.32" y="15.24" length="middle" direction="in"/>
<pin name="SENSOR_VN" x="-20.32" y="12.7" length="middle" direction="in"/>
<pin name="IO34" x="-20.32" y="7.62" length="middle" direction="in"/>
<pin name="IO35" x="-20.32" y="5.08" length="middle" direction="in"/>
<pin name="IO33" x="20.32" y="-25.4" length="middle" rot="R180"/>
<pin name="IO32" x="20.32" y="-22.86" length="middle" rot="R180"/>
<pin name="IO25" x="20.32" y="-15.24" length="middle" rot="R180"/>
<pin name="IO26" x="20.32" y="-17.78" length="middle" rot="R180"/>
<pin name="IO27" x="20.32" y="-20.32" length="middle" rot="R180"/>
<pin name="IO14" x="20.32" y="7.62" length="middle" rot="R180"/>
<pin name="IO12" x="20.32" y="12.7" length="middle" rot="R180"/>
<pin name="IO13" x="20.32" y="10.16" length="middle" rot="R180"/>
<pin name="IO15" x="20.32" y="5.08" length="middle" rot="R180"/>
<pin name="IO2" x="20.32" y="20.32" length="middle" rot="R180"/>
<pin name="IO0" x="20.32" y="22.86" length="middle" rot="R180"/>
<pin name="IO4" x="20.32" y="17.78" length="middle" rot="R180"/>
<pin name="IO16" x="20.32" y="2.54" length="middle" rot="R180"/>
<pin name="IO17" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="IO5" x="20.32" y="15.24" length="middle" rot="R180"/>
<pin name="IO18" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="IO19" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="IO21" x="20.32" y="-7.62" length="middle" rot="R180"/>
<pin name="IO22" x="20.32" y="-10.16" length="middle" rot="R180"/>
<pin name="IO23" x="20.32" y="-12.7" length="middle" rot="R180"/>
<pin name="RXD0" x="-20.32" y="-2.54" length="middle"/>
<pin name="TXD0" x="-20.32" y="0" length="middle"/>
<pin name="SHD/SD2" x="-20.32" y="-22.86" length="middle"/>
<pin name="SWP/SD3" x="-20.32" y="-25.4" length="middle"/>
<pin name="SCS/CMD" x="-20.32" y="-7.62" length="middle"/>
<pin name="SCK/CLK" x="-20.32" y="-10.16" length="middle" function="clk"/>
<pin name="SDO/SD0" x="-20.32" y="-15.24" length="middle"/>
<pin name="SDI/SD1" x="-20.32" y="-17.78" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ESP32-WROOM-32" urn="urn:adsk.eagle:component:22594142/2" prefix="U" library_version="2">
<description>Bluetooth, WiFi Transceiver Module 2.4GHz ~ 2.5GHz Surface Mount </description>
<gates>
<gate name="G$1" symbol="ESP32-WROOM-32" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MODULE_ESP32-WROOM-32">
<connects>
<connect gate="G$1" pin="3V3" pad="2"/>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="1 15 38 39_1 39_2 39_3 39_4 39_5 39_6 39_7 39_8 39_9 39_10 39_11 39_12 39_13 39_14 39_15 39_16 39_17 39_18 39_19 39_20 39_21"/>
<connect gate="G$1" pin="IO0" pad="25"/>
<connect gate="G$1" pin="IO12" pad="14"/>
<connect gate="G$1" pin="IO13" pad="16"/>
<connect gate="G$1" pin="IO14" pad="13"/>
<connect gate="G$1" pin="IO15" pad="23"/>
<connect gate="G$1" pin="IO16" pad="27"/>
<connect gate="G$1" pin="IO17" pad="28"/>
<connect gate="G$1" pin="IO18" pad="30"/>
<connect gate="G$1" pin="IO19" pad="31"/>
<connect gate="G$1" pin="IO2" pad="24"/>
<connect gate="G$1" pin="IO21" pad="33"/>
<connect gate="G$1" pin="IO22" pad="36"/>
<connect gate="G$1" pin="IO23" pad="37"/>
<connect gate="G$1" pin="IO25" pad="10"/>
<connect gate="G$1" pin="IO26" pad="11"/>
<connect gate="G$1" pin="IO27" pad="12"/>
<connect gate="G$1" pin="IO32" pad="8"/>
<connect gate="G$1" pin="IO33" pad="9"/>
<connect gate="G$1" pin="IO34" pad="6"/>
<connect gate="G$1" pin="IO35" pad="7"/>
<connect gate="G$1" pin="IO4" pad="26"/>
<connect gate="G$1" pin="IO5" pad="29"/>
<connect gate="G$1" pin="RXD0" pad="34"/>
<connect gate="G$1" pin="SCK/CLK" pad="20"/>
<connect gate="G$1" pin="SCS/CMD" pad="19"/>
<connect gate="G$1" pin="SDI/SD1" pad="22"/>
<connect gate="G$1" pin="SDO/SD0" pad="21"/>
<connect gate="G$1" pin="SENSOR_VN" pad="5"/>
<connect gate="G$1" pin="SENSOR_VP" pad="4"/>
<connect gate="G$1" pin="SHD/SD2" pad="17"/>
<connect gate="G$1" pin="SWP/SD3" pad="18"/>
<connect gate="G$1" pin="TXD0" pad="35"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22594141/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value=" Bluetooth, WiFi Transceiver Module 2.4GHz ~ 2.5GHz Surface Mount "/>
<attribute name="DIGI-KEY_PART_NUMBER" value="1904-1010-1-ND"/>
<attribute name="MF" value="Espressif Systems"/>
<attribute name="MP" value="ESP32-WROOM-32"/>
<attribute name="PACKAGE" value="Module Espressif Systems"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="CP2104-F03-GM" urn="urn:adsk.eagle:library:22594178">
<packages>
<package name="QFN50P400X400X80-25N" urn="urn:adsk.eagle:footprint:22594179/1" library_version="1">
<wire x1="-1.62" y1="2" x2="-2" y2="2" width="0.127" layer="21"/>
<wire x1="-2" y1="2" x2="-2" y2="1.62" width="0.127" layer="21"/>
<wire x1="-2" y1="-1.62" x2="-2" y2="-2" width="0.127" layer="21"/>
<wire x1="-2" y1="-2" x2="-1.62" y2="-2" width="0.127" layer="21"/>
<wire x1="2" y1="1.62" x2="2" y2="2" width="0.127" layer="21"/>
<wire x1="2" y1="2" x2="1.62" y2="2" width="0.127" layer="21"/>
<wire x1="1.62" y1="-2" x2="2" y2="-2" width="0.127" layer="21"/>
<wire x1="2" y1="-2" x2="2" y2="-1.62" width="0.127" layer="21"/>
<wire x1="-2" y1="2" x2="-2" y2="-2" width="0.127" layer="51"/>
<wire x1="-2" y1="-2" x2="2" y2="-2" width="0.127" layer="51"/>
<wire x1="2" y1="-2" x2="2" y2="2" width="0.127" layer="51"/>
<wire x1="2" y1="2" x2="-2" y2="2" width="0.127" layer="51"/>
<wire x1="-1.63" y1="2.61" x2="-1.63" y2="2.25" width="0.05" layer="39"/>
<wire x1="-1.63" y1="2.25" x2="-2.25" y2="2.25" width="0.05" layer="39"/>
<wire x1="-2.25" y1="2.25" x2="-2.25" y2="1.63" width="0.05" layer="39"/>
<wire x1="-2.25" y1="1.63" x2="-2.61" y2="1.63" width="0.05" layer="39"/>
<wire x1="1.63" y1="-2.61" x2="1.63" y2="-2.25" width="0.05" layer="39"/>
<wire x1="1.63" y1="-2.25" x2="2.25" y2="-2.25" width="0.05" layer="39"/>
<wire x1="2.61" y1="1.63" x2="2.25" y2="1.63" width="0.05" layer="39"/>
<wire x1="2.25" y1="1.63" x2="2.25" y2="2.25" width="0.05" layer="39"/>
<wire x1="-2.61" y1="-1.63" x2="-2.25" y2="-1.63" width="0.05" layer="39"/>
<wire x1="-2.25" y1="-1.63" x2="-2.25" y2="-2.25" width="0.05" layer="39"/>
<wire x1="-2.25" y1="-2.25" x2="-1.63" y2="-2.25" width="0.05" layer="39"/>
<wire x1="-1.63" y1="-2.25" x2="-1.63" y2="-2.61" width="0.05" layer="39"/>
<wire x1="2.25" y1="-2.25" x2="2.25" y2="-1.63" width="0.05" layer="39"/>
<wire x1="2.25" y1="-1.63" x2="2.61" y2="-1.63" width="0.05" layer="39"/>
<wire x1="2.25" y1="2.25" x2="1.63" y2="2.25" width="0.05" layer="39"/>
<wire x1="1.63" y1="2.25" x2="1.63" y2="2.61" width="0.05" layer="39"/>
<wire x1="-2.61" y1="1.63" x2="-2.61" y2="-1.63" width="0.05" layer="39"/>
<wire x1="-1.63" y1="2.61" x2="1.63" y2="2.61" width="0.05" layer="39"/>
<wire x1="2.61" y1="-1.63" x2="2.61" y2="1.63" width="0.05" layer="39"/>
<wire x1="1.63" y1="-2.61" x2="-1.63" y2="-2.61" width="0.05" layer="39"/>
<circle x="-2.754" y="1.24" radius="0.1" width="0.2" layer="21"/>
<text x="-2.90853125" y="3.435240625" size="1.016" layer="25">&gt;NAME</text>
<text x="-2.899459375" y="-4.56616875" size="1.016" layer="27">&gt;VALUE</text>
<rectangle x1="0.13" y1="0.13" x2="1.09" y2="1.09" layer="31"/>
<rectangle x1="-1.09" y1="0.13" x2="-0.13" y2="1.09" layer="31" rot="R90"/>
<rectangle x1="-1.09" y1="-1.09" x2="-0.13" y2="-0.13" layer="31" rot="R180"/>
<rectangle x1="0.13" y1="-1.09" x2="1.09" y2="-0.13" layer="31" rot="R270"/>
<smd name="3" x="-1.955" y="0.25" dx="0.82" dy="0.26" layer="1" roundness="7"/>
<smd name="2" x="-1.955" y="0.75" dx="0.82" dy="0.26" layer="1" roundness="7"/>
<smd name="1" x="-1.97" y="1.25" dx="0.84" dy="0.26" layer="1" roundness="7"/>
<smd name="4" x="-1.955" y="-0.25" dx="0.82" dy="0.26" layer="1" roundness="7"/>
<smd name="5" x="-1.955" y="-0.75" dx="0.82" dy="0.26" layer="1" roundness="7"/>
<smd name="6" x="-1.955" y="-1.25" dx="0.82" dy="0.26" layer="1" roundness="7"/>
<smd name="9" x="-0.25" y="-1.955" dx="0.82" dy="0.26" layer="1" roundness="7" rot="R90"/>
<smd name="8" x="-0.75" y="-1.955" dx="0.82" dy="0.26" layer="1" roundness="7" rot="R90"/>
<smd name="7" x="-1.25" y="-1.955" dx="0.82" dy="0.26" layer="1" roundness="7" rot="R90"/>
<smd name="10" x="0.25" y="-1.955" dx="0.82" dy="0.26" layer="1" roundness="7" rot="R90"/>
<smd name="11" x="0.75" y="-1.955" dx="0.82" dy="0.26" layer="1" roundness="7" rot="R90"/>
<smd name="12" x="1.25" y="-1.955" dx="0.82" dy="0.26" layer="1" roundness="7" rot="R90"/>
<smd name="15" x="1.955" y="-0.25" dx="0.82" dy="0.26" layer="1" roundness="7" rot="R180"/>
<smd name="14" x="1.955" y="-0.75" dx="0.82" dy="0.26" layer="1" roundness="7" rot="R180"/>
<smd name="13" x="1.955" y="-1.25" dx="0.82" dy="0.26" layer="1" roundness="7" rot="R180"/>
<smd name="16" x="1.955" y="0.25" dx="0.82" dy="0.26" layer="1" roundness="7" rot="R180"/>
<smd name="17" x="1.955" y="0.75" dx="0.82" dy="0.26" layer="1" roundness="7" rot="R180"/>
<smd name="18" x="1.955" y="1.25" dx="0.82" dy="0.26" layer="1" roundness="7" rot="R180"/>
<smd name="21" x="0.25" y="1.955" dx="0.82" dy="0.26" layer="1" roundness="7" rot="R270"/>
<smd name="20" x="0.75" y="1.955" dx="0.82" dy="0.26" layer="1" roundness="7" rot="R270"/>
<smd name="19" x="1.25" y="1.955" dx="0.82" dy="0.26" layer="1" roundness="7" rot="R270"/>
<smd name="22" x="-0.25" y="1.955" dx="0.82" dy="0.26" layer="1" roundness="7" rot="R270"/>
<smd name="23" x="-0.75" y="1.955" dx="0.82" dy="0.26" layer="1" roundness="7" rot="R270"/>
<smd name="24" x="-1.25" y="1.955" dx="0.82" dy="0.26" layer="1" roundness="7" rot="R270"/>
<smd name="25" x="0" y="0" dx="2.7" dy="2.7" layer="1" cream="no"/>
</package>
</packages>
<packages3d>
<package3d name="QFN50P400X400X80-25N" urn="urn:adsk.eagle:package:22594181/1" type="box" library_version="1">
<packageinstances>
<packageinstance name="QFN50P400X400X80-25N"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="CP2104-F03-GM" urn="urn:adsk.eagle:symbol:22594180/1" library_version="1">
<wire x1="-15.24" y1="22.86" x2="-15.24" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-22.86" x2="15.24" y2="-22.86" width="0.254" layer="94"/>
<wire x1="15.24" y1="-22.86" x2="15.24" y2="22.86" width="0.254" layer="94"/>
<wire x1="15.24" y1="22.86" x2="-15.24" y2="22.86" width="0.254" layer="94"/>
<text x="-15.24" y="22.86" size="1.778" layer="95">&gt;NAME</text>
<text x="-15.24" y="-25.4" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VDD" x="20.32" y="20.32" length="middle" direction="pwr" rot="R180"/>
<pin name="VIO" x="20.32" y="17.78" length="middle" direction="pwr" rot="R180"/>
<pin name="GND" x="20.32" y="-20.32" length="middle" direction="pwr" rot="R180"/>
<pin name="!RST" x="-20.32" y="5.08" length="middle" direction="in"/>
<pin name="REGIN" x="-20.32" y="2.54" length="middle" direction="in"/>
<pin name="VBUS" x="-20.32" y="12.7" length="middle" direction="in"/>
<pin name="VPP" x="-20.32" y="-17.78" length="middle" direction="pas"/>
<pin name="D+" x="-20.32" y="10.16" length="middle"/>
<pin name="D-" x="-20.32" y="7.62" length="middle"/>
<pin name="TXD" x="20.32" y="12.7" length="middle" direction="out" rot="R180"/>
<pin name="RXD" x="20.32" y="2.54" length="middle" direction="in" rot="R180"/>
<pin name="CTS" x="20.32" y="5.08" length="middle" direction="in" rot="R180"/>
<pin name="RTS" x="20.32" y="10.16" length="middle" direction="out" rot="R180"/>
<pin name="DSR" x="-20.32" y="-2.54" length="middle" direction="in"/>
<pin name="DTR" x="20.32" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="DCD" x="-20.32" y="-5.08" length="middle" direction="in"/>
<pin name="RI" x="-20.32" y="-10.16" length="middle" direction="in"/>
<pin name="SUSPEND" x="20.32" y="0" length="middle" direction="out" rot="R180"/>
<pin name="!SUSPEND" x="20.32" y="-2.54" length="middle" direction="out" rot="R180"/>
<pin name="GPIO.3" x="20.32" y="-7.62" length="middle" rot="R180"/>
<pin name="GPIO.2" x="20.32" y="-10.16" length="middle" rot="R180"/>
<pin name="GPIO.1" x="20.32" y="-12.7" length="middle" rot="R180"/>
<pin name="GPIO.0" x="20.32" y="-15.24" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CP2104-F03-GM" urn="urn:adsk.eagle:component:22594182/1" prefix="U" library_version="1">
<description>USB-to-UART 1-CH 576byte FIFO 3.3V 24-Pin QFN EP T/R </description>
<gates>
<gate name="G$1" symbol="CP2104-F03-GM" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFN50P400X400X80-25N">
<connects>
<connect gate="G$1" pin="!RST" pad="9"/>
<connect gate="G$1" pin="!SUSPEND" pad="15"/>
<connect gate="G$1" pin="CTS" pad="18"/>
<connect gate="G$1" pin="D+" pad="3"/>
<connect gate="G$1" pin="D-" pad="4"/>
<connect gate="G$1" pin="DCD" pad="24"/>
<connect gate="G$1" pin="DSR" pad="22"/>
<connect gate="G$1" pin="DTR" pad="23"/>
<connect gate="G$1" pin="GND" pad="2 25"/>
<connect gate="G$1" pin="GPIO.0" pad="14"/>
<connect gate="G$1" pin="GPIO.1" pad="13"/>
<connect gate="G$1" pin="GPIO.2" pad="12"/>
<connect gate="G$1" pin="GPIO.3" pad="11"/>
<connect gate="G$1" pin="REGIN" pad="7"/>
<connect gate="G$1" pin="RI" pad="1"/>
<connect gate="G$1" pin="RTS" pad="19"/>
<connect gate="G$1" pin="RXD" pad="20"/>
<connect gate="G$1" pin="SUSPEND" pad="17"/>
<connect gate="G$1" pin="TXD" pad="21"/>
<connect gate="G$1" pin="VBUS" pad="8"/>
<connect gate="G$1" pin="VDD" pad="6"/>
<connect gate="G$1" pin="VIO" pad="5"/>
<connect gate="G$1" pin="VPP" pad="16"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22594181/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value=" USB Bridge, USB to UART USB 2.0 UART Interface 24-QFN (4x4) "/>
<attribute name="DIGI-KEY_PART_NUMBER" value="336-4146-2-ND"/>
<attribute name="MF" value="Silicon Labs"/>
<attribute name="MP" value="CP2104-F03-GM"/>
<attribute name="PACKAGE" value="QFN-24 Silicon Labs"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="CJS-1200TA" urn="urn:adsk.eagle:library:22594258">
<packages>
<package name="SW_CJS-1200TA" urn="urn:adsk.eagle:footprint:22594259/1" library_version="2">
<wire x1="-2.7" y1="1.25" x2="2.7" y2="1.25" width="0.127" layer="51"/>
<wire x1="2.7" y1="1.25" x2="2.7" y2="-1.25" width="0.127" layer="51"/>
<wire x1="2.7" y1="-1.25" x2="-2.7" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-2.7" y1="-1.25" x2="-2.7" y2="1.25" width="0.127" layer="51"/>
<wire x1="-0.9" y1="1.25" x2="-2.7" y2="1.25" width="0.127" layer="21"/>
<wire x1="-2.7" y1="1.25" x2="-2.7" y2="-1.25" width="0.127" layer="21"/>
<wire x1="-2.7" y1="-1.25" x2="-2.55" y2="-1.25" width="0.127" layer="21"/>
<wire x1="-0.95" y1="-1.25" x2="0.95" y2="-1.25" width="0.127" layer="21"/>
<wire x1="2.55" y1="-1.25" x2="2.7" y2="-1.25" width="0.127" layer="21"/>
<wire x1="2.7" y1="-1.25" x2="2.7" y2="1.25" width="0.127" layer="21"/>
<wire x1="2.7" y1="1.25" x2="0.85" y2="1.25" width="0.127" layer="21"/>
<wire x1="-2.95" y1="1.5" x2="-0.8" y2="1.5" width="0.05" layer="39"/>
<wire x1="-0.8" y1="1.5" x2="-0.8" y2="2.25" width="0.05" layer="39"/>
<wire x1="-0.8" y1="2.25" x2="0.8" y2="2.25" width="0.05" layer="39"/>
<wire x1="0.8" y1="2.25" x2="0.8" y2="1.5" width="0.05" layer="39"/>
<wire x1="0.8" y1="1.5" x2="2.95" y2="1.5" width="0.05" layer="39"/>
<wire x1="2.95" y1="1.5" x2="2.95" y2="-1.5" width="0.05" layer="39"/>
<wire x1="2.95" y1="-1.5" x2="2.55" y2="-1.5" width="0.05" layer="39"/>
<wire x1="2.55" y1="-1.5" x2="2.55" y2="-2.15" width="0.05" layer="39"/>
<wire x1="2.55" y1="-2.15" x2="-2.55" y2="-2.15" width="0.05" layer="39"/>
<wire x1="-2.55" y1="-2.15" x2="-2.55" y2="-1.5" width="0.05" layer="39"/>
<wire x1="-2.55" y1="-1.5" x2="-2.95" y2="-1.5" width="0.05" layer="39"/>
<wire x1="-2.95" y1="-1.5" x2="-2.95" y2="1.5" width="0.05" layer="39"/>
<circle x="-1.75" y="-2.365" radius="0.1" width="0.2" layer="21"/>
<text x="-3.814240625" y="2.54283125" size="1.77998125" layer="25">&gt;NAME</text>
<text x="-4.06345" y="-4.583890625" size="1.779509375" layer="27">&gt;VALUE</text>
<smd name="2" x="0" y="1.15" dx="1" dy="1.6" layer="1"/>
<smd name="1" x="-1.75" y="-1.15" dx="1" dy="1.6" layer="1"/>
<smd name="3" x="1.75" y="-1.15" dx="1" dy="1.6" layer="1"/>
</package>
</packages>
<packages3d>
<package3d name="SW_CJS-1200TA" urn="urn:adsk.eagle:package:22594261/2" type="model" library_version="2">
<packageinstances>
<packageinstance name="SW_CJS-1200TA"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="CJS-1200TA" urn="urn:adsk.eagle:symbol:22594260/1" library_version="2">
<circle x="-1.524" y="2.54" radius="0.508" width="0.254" layer="94"/>
<circle x="-1.524" y="-2.54" radius="0.508" width="0.254" layer="94"/>
<circle x="1.524" y="0" radius="0.508" width="0.254" layer="94"/>
<text x="-5.084390625" y="5.338609375" size="1.779540625" layer="95">&gt;NAME</text>
<text x="-5.18135" y="-7.121859375" size="1.778459375" layer="96">&gt;VALUE</text>
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-5.08" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="-5.08" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-5.08" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="5.08" y1="0" x2="5.08" y2="5.08" width="0.1524" layer="94"/>
<wire x1="5.08" y1="5.08" x2="-5.08" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-1.524" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-2.032" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.032" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="1.016" y1="0" x2="-1.27" y2="-2.032" width="0.1524" layer="94"/>
<pin name="1" x="-10.16" y="2.54" visible="pad" length="middle" direction="pas"/>
<pin name="3" x="-10.16" y="-2.54" visible="pad" length="middle" direction="pas"/>
<pin name="2" x="10.16" y="0" visible="pad" length="middle" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CJS-1200TA" urn="urn:adsk.eagle:component:22594262/2" prefix="S" library_version="2">
<description>Switch Slide N.O./N.C. SPDT Raised Slide 0.1A 24VDC J-Hook SMD Embossed T/R </description>
<gates>
<gate name="G$1" symbol="CJS-1200TA" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SW_CJS-1200TA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22594261/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value=" Slide Switch SPDT Surface Mount "/>
<attribute name="DIGI-KEY_PART_NUMBER" value="563-1021-1-ND"/>
<attribute name="DIGIKEY-PURCHASE-URL" value="https://snapeda.com/shop?store=DigiKey&amp;id=2766327"/>
<attribute name="MF" value="Nidec Copal"/>
<attribute name="MOUSER-PURCHASE-URL" value="https://snapeda.com/shop?store=Mouser&amp;id=2766327"/>
<attribute name="MP" value="CJS-1200TA"/>
<attribute name="PACKAGE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="AP2112K-3.3TRG1" urn="urn:adsk.eagle:library:22594207">
<packages>
<package name="SOT95P285X140-5N" urn="urn:adsk.eagle:footprint:22594208/1" library_version="2">
<wire x1="-0.85" y1="1.55" x2="0.85" y2="1.55" width="0.127" layer="51"/>
<wire x1="0.85" y1="1.55" x2="0.85" y2="-1.55" width="0.127" layer="51"/>
<wire x1="0.85" y1="-1.55" x2="-0.85" y2="-1.55" width="0.127" layer="51"/>
<wire x1="-0.85" y1="-1.55" x2="-0.85" y2="1.55" width="0.127" layer="51"/>
<wire x1="0.85" y1="1.55" x2="-0.85" y2="1.55" width="0.127" layer="21"/>
<wire x1="0.85" y1="-1.55" x2="-0.85" y2="-1.55" width="0.127" layer="21"/>
<wire x1="-0.85" y1="-1.55" x2="-0.85" y2="-1.45" width="0.127" layer="21"/>
<wire x1="0.85" y1="-1.55" x2="0.85" y2="-1.45" width="0.127" layer="21"/>
<wire x1="0.85" y1="1.55" x2="0.85" y2="1.45" width="0.127" layer="21"/>
<wire x1="-0.85" y1="1.55" x2="-0.85" y2="1.45" width="0.127" layer="21"/>
<wire x1="1.1" y1="1.8" x2="-1.1" y2="1.8" width="0.05" layer="39"/>
<wire x1="-1.1" y1="1.8" x2="-1.1" y2="1.5" width="0.05" layer="39"/>
<wire x1="-1.1" y1="1.5" x2="-2.11" y2="1.5" width="0.05" layer="39"/>
<wire x1="-2.11" y1="1.5" x2="-2.11" y2="-1.5" width="0.05" layer="39"/>
<wire x1="-2.11" y1="-1.5" x2="-1.1" y2="-1.5" width="0.05" layer="39"/>
<wire x1="-1.1" y1="-1.5" x2="-1.1" y2="-1.8" width="0.05" layer="39"/>
<wire x1="-1.1" y1="-1.8" x2="1.1" y2="-1.8" width="0.05" layer="39"/>
<wire x1="1.1" y1="-1.8" x2="1.1" y2="-1.5" width="0.05" layer="39"/>
<wire x1="1.1" y1="-1.5" x2="2.11" y2="-1.5" width="0.05" layer="39"/>
<wire x1="2.11" y1="-1.5" x2="2.11" y2="1.5" width="0.05" layer="39"/>
<wire x1="2.11" y1="1.5" x2="1.1" y2="1.5" width="0.05" layer="39"/>
<wire x1="1.1" y1="1.5" x2="1.1" y2="1.8" width="0.05" layer="39"/>
<circle x="-2.469" y="0.95" radius="0.1" width="0.2" layer="21"/>
<circle x="-0.469" y="0.95" radius="0.1" width="0.2" layer="51"/>
<text x="-1.88393125" y="2.02061875" size="1.019340625" layer="25">&gt;NAME</text>
<text x="-2.181440625" y="-2.9625" size="1.0179" layer="27">&gt;VALUE</text>
<smd name="1" x="-1.185" y="0.95" dx="0.6" dy="1.35" layer="1" roundness="15" rot="R270"/>
<smd name="2" x="-1.185" y="0" dx="0.6" dy="1.35" layer="1" roundness="15" rot="R270"/>
<smd name="3" x="-1.185" y="-0.95" dx="0.6" dy="1.35" layer="1" roundness="15" rot="R270"/>
<smd name="4" x="1.185" y="-0.95" dx="0.6" dy="1.35" layer="1" roundness="15" rot="R270"/>
<smd name="5" x="1.185" y="0.95" dx="0.6" dy="1.35" layer="1" roundness="15" rot="R270"/>
</package>
</packages>
<packages3d>
<package3d name="SOT95P285X140-5N" urn="urn:adsk.eagle:package:22594210/2" type="model" library_version="2">
<packageinstances>
<packageinstance name="SOT95P285X140-5N"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="AP2112K-3.3TRG1" urn="urn:adsk.eagle:symbol:22594209/1" library_version="2">
<wire x1="-7.62" y1="7.62" x2="7.62" y2="7.62" width="0.41" layer="94"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="-7.62" width="0.41" layer="94"/>
<wire x1="7.62" y1="-7.62" x2="-7.62" y2="-7.62" width="0.41" layer="94"/>
<wire x1="-7.62" y1="-7.62" x2="-7.62" y2="7.62" width="0.41" layer="94"/>
<text x="-7.66295" y="8.647609375" size="2.08946875" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-7.6489" y="-11.6507" size="2.0883" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<pin name="GND" x="12.7" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="VIN" x="-12.7" y="5.08" length="middle" direction="pwr"/>
<pin name="VOUT" x="12.7" y="5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="EN" x="-12.7" y="0" length="middle" direction="in"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="AP2112K-3.3TRG1" urn="urn:adsk.eagle:component:22594211/2" prefix="U" library_version="2">
<description>AP2112 Series 0.6 A 3.3 V Fixed Output SMT LDO Linear Regulator - SOT23-5 </description>
<gates>
<gate name="G$1" symbol="AP2112K-3.3TRG1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT95P285X140-5N">
<connects>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="VIN" pad="1"/>
<connect gate="G$1" pin="VOUT" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22594210/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value=" Linear Voltage Regulator IC 1 Output 600mA SOT-25 "/>
<attribute name="DIGI-KEY_PART_NUMBER" value="AP2112K-3.3TRG1DICT-ND"/>
<attribute name="DIGIKEY-PURCHASE-URL" value="https://snapeda.com/shop?store=DigiKey&amp;id=454988"/>
<attribute name="MF" value="Diodes Inc."/>
<attribute name="MOUSER-PURCHASE-URL" value="https://snapeda.com/shop?store=Mouser&amp;id=454988"/>
<attribute name="MP" value="AP2112K-3.3TRG1"/>
<attribute name="PACKAGE" value="SOT-753 Diodes Inc."/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="10118193-0001LF" urn="urn:adsk.eagle:library:22594189">
<packages>
<package name="FCI_10118193-0001LF" urn="urn:adsk.eagle:footprint:22594190/1" library_version="2">
<wire x1="-3.55" y1="0.35" x2="-3.3" y2="0.6" width="0" layer="46" curve="-90"/>
<wire x1="-3.3" y1="0.6" x2="-3.05" y2="0.35" width="0" layer="46" curve="-90"/>
<wire x1="-3.05" y1="0.35" x2="-3.05" y2="-0.35" width="0" layer="46"/>
<wire x1="-3.05" y1="-0.35" x2="-3.3" y2="-0.6" width="0" layer="46" curve="-90"/>
<wire x1="-3.3" y1="-0.6" x2="-3.55" y2="-0.35" width="0" layer="46" curve="-90"/>
<wire x1="-3.55" y1="-0.35" x2="-3.55" y2="0.35" width="0" layer="46"/>
<wire x1="3.05" y1="0.35" x2="3.3" y2="0.6" width="0" layer="46" curve="-90"/>
<wire x1="3.3" y1="0.6" x2="3.55" y2="0.35" width="0" layer="46" curve="-90"/>
<wire x1="3.55" y1="0.35" x2="3.55" y2="-0.35" width="0" layer="46"/>
<wire x1="3.55" y1="-0.35" x2="3.3" y2="-0.6" width="0" layer="46" curve="-90"/>
<wire x1="3.3" y1="-0.6" x2="3.05" y2="-0.35" width="0" layer="46" curve="-90"/>
<wire x1="3.05" y1="-0.35" x2="3.05" y2="0.35" width="0" layer="46"/>
<wire x1="-4.2" y1="3.6" x2="-4.2" y2="-3" width="0.05" layer="39"/>
<wire x1="-4.2" y1="-3" x2="4.2" y2="-3" width="0.05" layer="39"/>
<wire x1="4.2" y1="-3" x2="4.2" y2="3.6" width="0.05" layer="39"/>
<wire x1="4.2" y1="3.6" x2="-4.2" y2="3.6" width="0.05" layer="39"/>
<wire x1="-3.8" y1="-1.45" x2="3.8" y2="-1.45" width="0.127" layer="21"/>
<wire x1="-3.8" y1="2.9" x2="3.8" y2="2.9" width="0.127" layer="51"/>
<wire x1="3.8" y1="2.9" x2="3.8" y2="-1.45" width="0.127" layer="51"/>
<wire x1="3.8" y1="-1.45" x2="3.8" y2="-2.15" width="0.127" layer="51"/>
<wire x1="3.8" y1="-2.15" x2="-3.8" y2="-2.15" width="0.127" layer="51"/>
<wire x1="-3.8" y1="-2.15" x2="-3.8" y2="-2.1" width="0.127" layer="51"/>
<wire x1="-3.8" y1="-2.1" x2="-3.8" y2="2.9" width="0.127" layer="51"/>
<wire x1="-3.8" y1="-2.1" x2="-3.93" y2="-2.5" width="0.127" layer="51" curve="-90"/>
<wire x1="-3.93" y1="-2.5" x2="-3.75" y2="-2.75" width="0.127" layer="51"/>
<wire x1="-3.75" y1="-2.75" x2="-3.4" y2="-2.2" width="0.127" layer="51" curve="90"/>
<wire x1="-3.2" y1="-2.2" x2="-3.2" y2="-2.75" width="0.127" layer="51"/>
<wire x1="-3.2" y1="-2.75" x2="3.2" y2="-2.75" width="0.127" layer="51"/>
<wire x1="3.2" y1="-2.75" x2="3.2" y2="-2.2" width="0.127" layer="51"/>
<wire x1="3.8" y1="-2.1" x2="3.93" y2="-2.5" width="0.127" layer="51" curve="90"/>
<wire x1="3.93" y1="-2.5" x2="3.75" y2="-2.8" width="0.127" layer="51"/>
<wire x1="3.75" y1="-2.8" x2="3.4" y2="-2.2" width="0.127" layer="51" curve="-90"/>
<wire x1="-3.8" y1="1.5" x2="-3.8" y2="1.1" width="0.127" layer="21"/>
<wire x1="3.8" y1="1.1" x2="3.8" y2="1.5" width="0.127" layer="21"/>
<wire x1="-3.8" y1="-1.1" x2="-3.8" y2="-1.4" width="0.127" layer="21"/>
<wire x1="3.8" y1="-1.1" x2="3.8" y2="-1.4" width="0.127" layer="21"/>
<wire x1="3.8" y1="-1.45" x2="6.15" y2="-1.45" width="0.127" layer="51"/>
<text x="-3.854409375" y="3.85391875" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.88608125" y="-4.40371875" size="1.27" layer="27">&gt;VALUE</text>
<text x="4.75" y="-1.3" size="0.4064" layer="51">PCB END</text>
<circle x="-2" y="3.5" radius="0.1" width="0.2" layer="21"/>
<smd name="1" x="-1.3" y="2.675" dx="0.4" dy="1.35" layer="1"/>
<smd name="2" x="-0.65" y="2.675" dx="0.4" dy="1.35" layer="1"/>
<smd name="3" x="0" y="2.675" dx="0.4" dy="1.35" layer="1"/>
<smd name="4" x="0.65" y="2.675" dx="0.4" dy="1.35" layer="1"/>
<smd name="5" x="1.3" y="2.675" dx="0.4" dy="1.35" layer="1"/>
<smd name="S1" x="-3.2" y="2.45" dx="1.6" dy="1.4" layer="1"/>
<smd name="S2" x="3.2" y="2.45" dx="1.6" dy="1.4" layer="1"/>
<smd name="S4" x="-1.2" y="0" dx="1.9" dy="1.9" layer="1"/>
<smd name="S3" x="1.2" y="0" dx="1.9" dy="1.9" layer="1"/>
<hole x="-3.3" y="0" drill="0.5"/>
<hole x="3.3" y="0" drill="0.5"/>
<pad name="S5" x="-3.3" y="0" drill="0.5" diameter="0.9" shape="long" rot="R90"/>
<pad name="S6" x="3.3" y="0" drill="0.5" diameter="0.9" shape="long" rot="R90"/>
</package>
</packages>
<packages3d>
<package3d name="FCI_10118193-0001LF" urn="urn:adsk.eagle:package:22594192/2" type="model" library_version="2">
<packageinstances>
<packageinstance name="FCI_10118193-0001LF"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="10118193-0001LF" urn="urn:adsk.eagle:symbol:22594191/1" library_version="2">
<text x="-5.08165" y="10.9286" size="1.778" layer="95">&gt;NAME</text>
<text x="-5.08193125" y="-12.7097" size="1.778" layer="96">&gt;VALUE</text>
<wire x1="-5.08" y1="10.16" x2="5.08" y2="10.16" width="0.1524" layer="94"/>
<wire x1="5.08" y1="10.16" x2="5.08" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="5.08" y1="-10.16" x2="-5.08" y2="-10.16" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-10.16" x2="-5.08" y2="10.16" width="0.1524" layer="94"/>
<pin name="VUSB" x="-10.16" y="7.62" length="middle" direction="pas"/>
<pin name="D-" x="-10.16" y="5.08" length="middle" direction="pas"/>
<pin name="D+" x="-10.16" y="2.54" length="middle" direction="pas"/>
<pin name="ID" x="-10.16" y="0" length="middle" direction="pas"/>
<pin name="GND" x="-10.16" y="-2.54" length="middle" direction="pas"/>
<pin name="SHIELD" x="-10.16" y="-7.62" length="middle" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="10118193-0001LF" urn="urn:adsk.eagle:component:22594193/2" prefix="J" library_version="2">
<description>Micro USB B Type Receptacle </description>
<gates>
<gate name="G$1" symbol="10118193-0001LF" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FCI_10118193-0001LF">
<connects>
<connect gate="G$1" pin="D+" pad="3"/>
<connect gate="G$1" pin="D-" pad="2"/>
<connect gate="G$1" pin="GND" pad="5"/>
<connect gate="G$1" pin="ID" pad="4"/>
<connect gate="G$1" pin="SHIELD" pad="S1 S2 S3 S4 S5 S6"/>
<connect gate="G$1" pin="VUSB" pad="1"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22594192/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="DESCRIPTION" value=" USB - micro B USB 2.0 Receptacle Connector 5 Position Surface Mount, Right Angle; Through Hole "/>
<attribute name="DIGI-KEY_PART_NUMBER" value="609-4616-1-ND"/>
<attribute name="DIGIKEY-PURCHASE-URL" value="https://snapeda.com/shop?store=DigiKey&amp;id=4800618"/>
<attribute name="MF" value="Amphenol ICC (FCI)"/>
<attribute name="MOUSER-PURCHASE-URL" value="https://snapeda.com/shop?store=Mouser&amp;id=4800618"/>
<attribute name="MP" value="10118193-0001LF"/>
<attribute name="PACKAGE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="MMBT2222A-7-F" library_urn="urn:adsk.eagle:library:22594200" deviceset="MMBT2222A-7-F" device="" package3d_urn="urn:adsk.eagle:package:22594203/2"/>
<part name="U2" library="MMBT2222A-7-F" library_urn="urn:adsk.eagle:library:22594200" deviceset="MMBT2222A-7-F" device="" package3d_urn="urn:adsk.eagle:package:22594203/2"/>
<part name="U$1" library="MCP73831T-2ACI_OT" library_urn="urn:adsk.eagle:library:22594219" deviceset="MCP73831T-2ACI/OT" device="" package3d_urn="urn:adsk.eagle:package:22594222/2"/>
<part name="U3" library="LSM9DS1TR" library_urn="urn:adsk.eagle:library:22594171" deviceset="LSM9DS1TR" device="" package3d_urn="urn:adsk.eagle:package:22594175/1"/>
<part name="U4" library="ESP32-WROOM-32" library_urn="urn:adsk.eagle:library:22594138" deviceset="ESP32-WROOM-32" device="" package3d_urn="urn:adsk.eagle:package:22594141/2"/>
<part name="U5" library="CP2104-F03-GM" library_urn="urn:adsk.eagle:library:22594178" deviceset="CP2104-F03-GM" device="" package3d_urn="urn:adsk.eagle:package:22594181/1"/>
<part name="S1" library="CJS-1200TA" library_urn="urn:adsk.eagle:library:22594258" deviceset="CJS-1200TA" device="" package3d_urn="urn:adsk.eagle:package:22594261/2"/>
<part name="U6" library="AP2112K-3.3TRG1" library_urn="urn:adsk.eagle:library:22594207" deviceset="AP2112K-3.3TRG1" device="" package3d_urn="urn:adsk.eagle:package:22594210/2"/>
<part name="J1" library="10118193-0001LF" library_urn="urn:adsk.eagle:library:22594189" deviceset="10118193-0001LF" device="" package3d_urn="urn:adsk.eagle:package:22594192/2"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="A" x="63.5" y="48.26" smashed="yes">
<attribute name="NAME" x="58.083959375" y="55.8628" size="2.08505" layer="95" ratio="10" rot="SR0"/>
<attribute name="VALUE" x="60.219090625" y="33.4323" size="2.085540625" layer="96" ratio="10" rot="SR0"/>
</instance>
<instance part="U2" gate="A" x="63.5" y="20.32" smashed="yes">
<attribute name="NAME" x="58.083959375" y="27.9228" size="2.08505" layer="95" ratio="10" rot="SR0"/>
<attribute name="VALUE" x="60.219090625" y="5.4923" size="2.085540625" layer="96" ratio="10" rot="SR0"/>
</instance>
<instance part="U$1" gate="A" x="127" y="81.28" smashed="yes">
<attribute name="NAME" x="122.877259375" y="91.3578" size="2.08681875" layer="95" ratio="10" rot="SR0"/>
<attribute name="VALUE" x="121.04743125" y="64.0837" size="2.085940625" layer="96" ratio="10" rot="SR0"/>
</instance>
<instance part="U3" gate="G$1" x="-27.94" y="83.82" smashed="yes">
<attribute name="NAME" x="-40.6613" y="109.8986" size="1.78098125" layer="95"/>
<attribute name="VALUE" x="-40.6614" y="58.3773" size="1.780990625" layer="96"/>
</instance>
<instance part="U4" gate="G$1" x="58.42" y="142.24" smashed="yes">
<attribute name="NAME" x="43.3841" y="173.8345" size="1.778" layer="95"/>
<attribute name="VALUE" x="43.1333" y="106.5719" size="1.778" layer="96"/>
</instance>
<instance part="U5" gate="G$1" x="139.7" y="142.24" smashed="yes">
<attribute name="NAME" x="124.46" y="165.1" size="1.778" layer="95"/>
<attribute name="VALUE" x="124.46" y="116.84" size="1.778" layer="96"/>
</instance>
<instance part="S1" gate="G$1" x="-27.94" y="149.86" smashed="yes">
<attribute name="NAME" x="-33.024390625" y="155.198609375" size="1.779540625" layer="95"/>
<attribute name="VALUE" x="-33.12135" y="142.738140625" size="1.778459375" layer="96"/>
</instance>
<instance part="U6" gate="G$1" x="58.42" y="187.96" smashed="yes">
<attribute name="NAME" x="50.75705" y="196.607609375" size="2.08946875" layer="95" ratio="10" rot="SR0"/>
<attribute name="VALUE" x="50.7711" y="176.3093" size="2.0883" layer="96" ratio="10" rot="SR0"/>
</instance>
<instance part="J1" gate="G$1" x="182.88" y="129.54" smashed="yes">
<attribute name="NAME" x="177.79835" y="140.4686" size="1.778" layer="95"/>
<attribute name="VALUE" x="177.79806875" y="116.8303" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
