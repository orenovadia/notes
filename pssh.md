# PSSH

Running pssh without host checking:

```
pssh  -O StrictHostKeyChecking=no   -O UserKnownHostsFile=/dev/null  -i  -h hosts pwd
```


Running command from stdin:

```
cat ./my_script.sh | pssh  -O StrictHostKeyChecking=no   -O UserKnownHostsFile=/dev/null  -i  -h hosts -I
```
