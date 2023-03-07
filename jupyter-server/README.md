Requires python>3.10

```
pip install -r requirements.txt
jupyter-notebook --config jupyter-config.py
```

Tunnel to the host if needed:

```
ssh -T -L  8888:localhost:8888 user@ip-of-server
```