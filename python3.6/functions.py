# https://stackoverflow.com/questions/494594/how-to-write-the-fibonacci-sequence

def fibonacci(term):

    def validate(term):
        assert isinstance(term, int) and term >= 0

    def calculate(term):
        if term == 0:
            return 0
        elif term == 1:
            return 1
        else:
            return fibonacci(term-1) + fibonacci(term-2)

    validate(term)
    return calculate(term)

F = fibonacci

sequence = []
for n in range(0, 10):
    sequence.append(F(n))

print(sequence)
