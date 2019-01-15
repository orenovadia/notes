# Bash Notes

Use `type -a <name>` to see what type of command it is (executable, alias, function etc.)
```
$ type -a man
man is /usr/bin/man
```

Use `help <name>` to get help for Bash builtins. 
``` 
$ help for

for: for NAME [in WORDS ... ] ; do COMMANDS; done
    Execute commands for each member in a list.
    ...
```

Sorting information size output that contains GB/MB/B:
    `du -h | sort -h `
