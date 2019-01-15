# Uniquing rows in a file

## Naive approach: `sort` then `uniq`
```
$ time cat test | sort | uniq | wc -l 
1000000

real    0m17.044s
user    0m17.540s
sys 0m0.358s

```

## `O(n)` time with `awk`
Using `awk '!a[$0]++`

```
$ time cat test | awk '!a[$0]++' | wc -l 
1000000

real    0m2.585s
user    0m2.549s
sys 0m0.151s
```
