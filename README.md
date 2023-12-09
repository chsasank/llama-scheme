# llama-scheme
Scheme dialect that wraps ggml/llama library.

## How to store libs

We'll save dependencies using squashed subtree - so that source lives completely in our repo. This is monorepo.

Example on how to add a lib, chicken scheme:

```bash
$ git subtree add --prefix libs/chicken-scheme https://github.com/alaricsp/chicken-scheme.git master --squash

$ git status
On branch main
Your branch is ahead of 'origin/main' by 2 commits.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean

# the whole chicken scheme repo is imported into our code base
# we have two commits:
# 1. Squashed history of chicken scheme
# 2. Merge of this squashed history into our repo
$ git log
commit fa9ab9983674f26d9371130de51463d00b0f1bc5 (HEAD -> main)
Merge: 45155fc f7d4bcd
Author: Sasank Chilamkurthy <sasankchilamkurthy@gmail.com>
Date:   Sat Dec 9 13:23:47 2023 +0530

    Merge commit 'f7d4bcd7f733a5656bac571281c5e24da314e4f9' as 'libs/chicken-scheme'

commit f7d4bcd7f733a5656bac571281c5e24da314e4f9
Author: Sasank Chilamkurthy <sasankchilamkurthy@gmail.com>
Date:   Sat Dec 9 13:23:47 2023 +0530

    Squashed 'libs/chicken-scheme/' content from commit 1eb1468
    
    git-subtree-dir: libs/chicken-scheme
    git-subtree-split: 1eb14684c26b7c2250ca9b944c6b671cb62cafbc

commit 45155fc5bdcb7f4062ff051c9562d64389a4b144 (origin/main, origin/HEAD)
Merge: b3e606d 8b03c06
Author: Sasank Chilamkurthy <sasank.chilamkurthy@qure.ai>
Date:   Sat Dec 9 01:00:08 2023 +0530

    Merge pull request #1 from chsasank/master
    ....

# push whole code into our repo
$ git push              
Enumerating objects: 314, done.
Counting objects: 100% (314/314), done.
Delta compression using up to 8 threads
Compressing objects: 100% (296/296), done.
Writing objects: 100% (313/313), 2.36 MiB | 1.56 MiB/s, done.
Total 313 (delta 30), reused 168 (delta 1), pack-reused 0
remote: Resolving deltas: 100% (30/30), completed with 1 local object.
To github.com:chsasank/llama-scheme.git
   45155fc..fa9ab99  main -> main
```

Dependencies so far:
1. Chicken scheme
2. Llama.c
3. llama.cpp


Need to create a nice build system for making bind