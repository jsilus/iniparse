# iniparse
Parses ini-like files according to the schema below.

## Usage
```
iniparse: parse ini files
  Usage: iniparse section [section] [file]
         iniparse parameter [section] [parameter] [file]
         iniparse listsections [file]
```

## Example INI File
```ini
default section starts at top

[comment]
# comments are not printed
comments are not printed # even at the end of a line

[param]
param=value

[spacing]
   leading and trailing whitespace is removed

[default]
default section can also be explicitly defined
sections do not have to be continuous
```

### Example Usage
```sh
$ iniparse listsections readme.ini
default
comment
param
spacing
```
```sh
$ iniparse section default readme.ini
default section starts at top
default section can also be explicitly defined
sections do not need to be continuous
```
```sh
$ iniparse section comment readme.ini
comments are not printed
```
```sh
$ iniparse section param readme.ini
param=value

$ iniparse parameter param param readme.ini
value
```
```sh
$ iniparse section spacing readme.ini
leading and trailing whitespace is removed
```
