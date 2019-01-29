# Jupyter
## Jupyter on remote server:

```
jupyter-notebook  --ip 0.0.0.0 --NotebookApp.allow_remote_access=True --NotebookApp.password='sha1:463cb16fa2fa:8d018fd705517896e059fd1cbf622847b7e12d22'
```

Where the password is generated like: 
```
python -c 'from notebook.auth import passwd; print repr(passwd())'
```

## Better yet: creating a config:

```
echo "
c.NotebookApp.allow_remote_access = True
c.NotebookApp.ip = '0.0.0.0'
c.NotebookApp.password = u'sha1:463cb16fa2fa:8d018fd705517896e059fd1cbf622847b7e12d22'
" > ~/.jupyter_config.py
```


## Creating a systemctl

```$ sudo vi /etc/systemd/system/jupyter.service```

fill with:

```
[Unit]
Description=Jupyter Notebook

[Service]
Type=simple
PIDFile=/run/jupyter.pid
# Step 1 and Step 2 details are here..
# ------------------------------------
ExecStart=/home/oren/.virtualenvs/REPLACE_WITH_NAME_OF_VENV/bin/jupyter-notebook  --config /home/oren/.jupyter_config.py
User=oren
Group=oren
WorkingDirectory=/home/oren
Restart=always
RestartSec=10
#KillMode=mixed

[Install]
WantedBy=multi-user.target
```


### Now, reload systemctl:
```sudo systemctl daemon-reload```

### That's it:
```sudo systemctl start jupyter```
