function! Comment(...)

python << EOF

import vim

lines = int(vim.eval("a:1"))
comment= str(vim.eval("a:2"))
if comment == 'hash':
	comment = '# '
else :
	comment = '// '
win = vim.current.window
begin = win.cursor[0] - 1
for i in range(begin, begin+lines):
	vim.current.buffer[i] = comment + vim.current.buffer[i]
EOF
endfunction
