# Curl
## Use curl to query multiple sites in the same process:

```

cat url_list.txt | awk '{print "url = " $0}' | curl -v -G -K - 2> errlog | jq -c . | pv -l   > results

```
