# Tmuxinator config

```
name: ?

on_project_stop:
  - ?

windows:
  - Running:
      root: /BE
      layout: main-horizontal
      panes:
        - - printf '\033]2;Pane 1\033\\'
          - Command 1
        - - printf '\033]2;Pane 2\033\\'
        - - cd /FE
          - Command 2
  - Backend:
      root: /BE
      layout: even-horizontal
      panes:
        - - printf '\033]2;[BE] Claude\033\\'
          - claude
        - printf '\033]2;[BE] Code\033\\'
  - Frontend:
      root: /FE
      layout: even-horizontal
      panes:
        - - printf '\033]2;[FE] Claude\033\\'
          - claude
        - printf '\033]2;[FE] Code\033\\'
```
