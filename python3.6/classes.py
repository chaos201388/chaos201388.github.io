class Color:
    pass

class Blue(Color):
    pass

print(issubclass(Blue, Color))

color = Color()
blue = Blue()

print(isinstance(color, Color))
print(isinstance(blue, Blue))


class Foo:
    def __init__(self, filename, message):
        self.__filename = filename
        with open(filename, 'a') as f:
            f.write(message)

    def __del__(self):
        filename = self.__filename
        with open(filename, 'r') as f:
            for line in f:
                print(line, end='')

foo = Foo('foo.txt', 'This is a foo.\n')
del foo
