numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
value = 55
expected = [7, 8]


def find(value, numbers):
    for index, number in enumerate(numbers):
        for index2, number2 in enumerate(numbers):
            if number + number2 == value:
                return [index, index2]

actual = find(value, numbers)

print(actual)


print(list(enumerate(numbers)))
