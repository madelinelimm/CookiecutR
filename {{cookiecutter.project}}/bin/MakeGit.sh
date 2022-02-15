
#!/bin/bash
    git add .; true
    git remote add origin {{cookiecutter.remote}}
    git commit -m 'This is the initial commit'
    # Generate the master branch
    # ......................................
    git push --set-upstream origin master

