from foo import Foo
from bar import Bar

class Main():

    def __init__(self):

        self.buf = [0,0,0,0,0]
        self.foo = Foo(self.buf)
        self.bar = Bar(self.buf)

    def run(self):

        print(self.buf)
        self.foo.add_one()
        print(self.buf)
        self.foo.get_buf()

if __name__ == "__main__":
    main = Main()
    main.run()

    