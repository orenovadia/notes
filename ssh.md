# SSH
## Sorting out the issue of multiple ssh-keys in github
See https://gist.github.com/jexchan/2351996
Doesn't have the full solution.

### Step 1:
Invent a new hostname like `github.com-private` and set it as a remote in the git repo
`vi .git/config`
And set it as a remote:
```
[remote "origin"]
   url = git@github.com-private:orenovadia/env.git
```

### Step 2:
Generate a new ssh key and register it:
`ssh-keygen`
...
Then `ssh-add ~/.ssh/keys/<pathtokey>`
`ssh-add -l` should now show the keys

### Step 3:
Add to `.ssh/config`
`vi .ssh/config/`
Add an entry:
```
Host github.com-private
        HostName github.com
        User git
        PreferredAuthentications publickey
        IdentityFile ~/.ssh/keys/<pathtokey>
```

### That's it
