let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
let g:rainbow_conf = {'guis': ['bold']}
let g:rainbow_active = 0 "set to 0 if you want to enable it later via :RainbowToggle
let g:rainbow_active = 1

" \	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
let g:rainbow_conf = {
\	'guifgs': ['Gold', 'Orchid', 'LightSkyBlue', 'Red', 'White', 'Cyan', 'Orange', 'Pink'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'guis': [''],
\	'cterms': [''],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\	'separately': {
\		'*': {},
\		'markdown': {
\			'parentheses_options': 'containedin=markdownCode contained', 
\		},
\		'lisp': {
\	    'guifgs': ['Gold', 'Orchid', 'LightSkyBlue', 'Red', 'White', 'Cyan', 'Orange', 'Pink'],
\		},
\		'jsx': {
\	    'guifgs': ['Gold', 'Orchid', 'LightSkyBlue', 'Red', 'White', 'Cyan', 'Orange', 'Pink'],
\		},
\		'haskell': {
\			'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/\v\{\ze[^-]/ end=/}/ fold'],
\		},
\		'vim': {
\			'parentheses_options': 'containedin=vimFuncBody', 
\		},
\		'perl': {
\			'syn_name_prefix': 'perlBlockFoldRainbow', 
\		},
\		'stylus': {
\			'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup'], 
\		},
\		'css': 0, 
\	}
\}
