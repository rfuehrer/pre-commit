
# pre-commit hooks

These scripts placed in this repository work as pre-commit hooks. Their primary purpose is to check code and commit messages for sensitive (unwanted) content before publishing them. 

It is recommended that you install the pre-commit hooks as early as possible, so that all changes can be checked at each commit.

## vkey checker

Edit your .pre-commit-config.yaml to call pre-commit hook

```
-   repo: https://github.com/rfuehrer/pre-commit
    rev: v1.12
    hooks:
    -   id: vkeycheck
```
