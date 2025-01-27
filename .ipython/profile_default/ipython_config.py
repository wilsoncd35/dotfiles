"""ipython default configuration."""

# pyright: reportUndefinedVariable=false

c.TerminalIPythonApp.display_banner = True
c.InteractiveShellApp.log_level = 20

c.InteractiveShellApp.extensions = [
    'myextension'
]

c.InteractiveShellApp.exec_lines = [
    'import numpy',
    'import scipy',
    'import pandas as pd',
]

# c.InteractiveShellApp.exec_files = [
#     'mycode.py',
#     'fancy.ipy'
# ]

c.InteractiveShell.colors = 'LightBG'
c.InteractiveShell.xmode = 'Context'
c.InteractiveShellApp.gui = 'osx'
c.InteractiveShellApp.matplotlib = 'osx'

c.TerminalInteractiveShell.confirm_exit = False
c.TerminalInteractiveShell.editor = 'vim'

c.PrefilterManager.multi_line_specials = True

c.AliasManager.user_aliases = [
 ('la', 'ls -al')
]
