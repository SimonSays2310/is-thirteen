![](/is-thirteen-logo.png)

# is-thirteen

A shell script to check if a number is equal to 13 and do some other things related to this number.

Inspired by https://github.com/jezen/is-thirteen repository.

## Usage

```sh
#!/usr/bin/env bash
source is.sh
is 13 thirteen
is 12.8 roughly_thirteen
is 2011 yearofbirth
is 14 greaterthan thirteen
is 12 lessthan thirteen

# You can also check your math skills
is 12 plus 1 thirteen # true
is 12 plus 2 thirteen # false
is 12 minus 4 thirteen # false
is 14 minus 1 thirteen # true
is 26 dividedby 2 thirteen # true
```
