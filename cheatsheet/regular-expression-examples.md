# Regular Expression Examples

## Example #1

A string contains:

- uppercase and lowercase letters
- at least one number
- letters and numbers
- 8 or more characters

```
/^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])[A-Za-z0-9]{8,}$/
```
