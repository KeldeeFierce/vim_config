" let g:ale_linters = {'python': 'bandit'}
let g:ale_linters = {'python': ['flake8', 'pylint', 'bandit', 'mypy', 'pycodestyle']}
let g:ale_fixers = {'python': ['isort', 'yapf', 'remove_trailing_lines', 'trim_whitespace', 'black']}
let g:ale_lsp_suggestions = 1
let g:ale_fix_on_save = 1
let g:ale_go_gofmt_options = '-s'
let g:ale_go_gometalinter_options = '— enable=gosimple — enable=staticcheck'
let g:ale_completion_enabled = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] [%severity%] %code: %%s'

let g:ale_python_pylint_options = "--disable=C0114, --disable=C0116"


