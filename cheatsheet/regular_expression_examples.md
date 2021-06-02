# Regular Expression Examples

## #1

A string contains:

- letters and numbers
- 8 or more characters
- uppercase and lowercase letters
- at least one number

```
/^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])[A-Za-z0-9]{8,}$/
```
