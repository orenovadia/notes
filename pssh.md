# PSSH

Running pssh without host checking:

```
pssh  -O StrictHostKeyChecking=no   -O UserKnownHostsFile=/dev/null  -i  -h hosts pwd
```
