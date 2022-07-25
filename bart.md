# Using BART API

```bash

bart ()
{
    echo "ETA of BART from Mont. station to Antioch:";
    curl -s 'https://api.bart.gov/api/etd.aspx?cmd=etd&orig=MONT&key=MW9S-E7SL-26DU-VV8V&json=y' | jq '.root.station[0].etd[] | select(.destination == "Antioch").estimate[] | {minutes: .minutes, delay:.delay}'
}

```
