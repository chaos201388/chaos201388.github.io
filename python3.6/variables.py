var_string = 'everglow'
var_int = 666
var_float = 3.14
var_bool = True

print(var_string)
print(var_int)
print(var_float)
print(var_bool)

for char in var_string:
    print(char)


var_list = [0, 1, 1, 2, 3, 5, 8, 13, 21,]
var_dictionary = {
    'name': 'Alice',
    'age': 18,
    'height_cm': 166,
    'weight_kg': 50,
}

print(var_list)
print(var_dictionary)

for value in var_list:
    print(value)
for key, value in var_dictionary.items():
    print(key, value)


var_none = None
var_complex = 3 + 4j

print(var_none)
print(var_complex)


var_tuple = ('mysql', 'psql', 'psql',)
var_set = {'Doraemon', 'Nobita',}

print(var_tuple)
print(var_set)
