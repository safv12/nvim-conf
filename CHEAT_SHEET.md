# Navigation

## Harpoon

| Command     | Description                     |
| ----------- | ------------------------------- |
| \<leader>hh | Show harpoon UI                 |
| \<leader>a | Add file to harpoon             |
| \<leader>n | Next fine in harpoon            |
| \<leader>p | Previous file in harpoon        |
| \<C-h>      | 1st file in harpoon             |
| \<C-j>      | 2nd file in harpoon             |
| \<C-k>      | 3rd file in harpoon             |
| \<C-l>      | 4th file in harpoon             |


# vim-surround

| Command                 | Description                                        | Note                    |
| ----------------------- | ---------------------------------------            | ----------------------- |
| `ysiw(`                 | insert (	) 'surrounding' word                     | ( word )                |
| `ysiw)`                 | insert () 'surrounding' word                       | (word)                  |
| `ys$)`                  | insert () 'surrounding' until EOL                  | (word)                  |
| `cs])`                  | change surround ] with )                           |                         |
| `ds)`                   | delete surround )                                  |                         |
| `ysiw<C-f>print<cr>`    | insert `print` as function around word, lisp style | (print word)            |
| `ysiwFprint<cr>`        | insert `print` as function around word             | print( word )           |
| `:help surround`        | opens the help                                     |                         |

# lsp

| Command     | Description           | Note                    |
| ------------| ----------------------| ----------------------- |
| `K`         | show documentations   |                         |
| `gd`        | go to definition      |                         |
| `gr`        | show references       |                         |
| `leader ac` | show code actions     |                         |
| `leader co` | open code outline     |                         |
| `leader el` | open code diagnostics |                         |
| `leader fb` | format code           |                         |
| `leader ff` | auto fix current line |                         |
| `leader fs` | format code selected  |                         |
| `leader rn` | rename                |                         |
| `leader rr` | refactor              |                         |
| `leader rr` | refactor              |                         |

# comment

| Command      | Description          | Note                    |
| -------------| ---------------------| ----------------------- |
| `gcc`        | comment current line |                         |
| `[Visual]gc` | comment selection    |                         |

# sexp

| Command | Description                | Note  |
| --------|----------------------------|-------|
| `<f`    | move a form to left        |       |
| `>e`    | move an element to right   |       |
| `<(`    | move 'parenthesis' to left |       |

# Neotree

| Command         | Description                      | Note                                       |
| ----------------|----------------------------------|--------------------------------------------|
| `ctrl n`        | Toggle neotree                   | Shows the file directory                   |
| `localleader f` | Reveals current file on the tree | Useful to find file locations in the tree  |

### Text Object Selections (visual, operator-pending)
Text object selections refer to text around the cursor.

- The `af` and `if` objects select COMPOUND FORMS.
- The `aF` and `iF` objects select top-level COMPOUND FORMS.
- The `as` and `is` objects select STRINGS.
- The `ae` and `ie` objects select ELEMENTS.

### Wrap Commands (normal, visual)
Wrap commands wrap the current COMPOUND FORM, ELEMENT, or visual selection and place the cursor at the head or tail of the newly created COMPOUND FORM.

If `g:sexp_insert_after_wrap` is set (true by default), insert mode is entered after wrapping.

`<LocalLeader>i` and `<LocalLeader>I` wrap the current COMPOUND FORM with `(` and `)`.
`<LocalLeader>[` and `<LocalLeader>]` wrap the current COMPOUND FORM with `[` and `]`.
`<LocalLeader>{` and `<LocalLeader>}` wrap the current COMPOUND FORM with `{` and `}`.
`<LocalLeader>W` and `<LocalLeader>w` wrap the current ELEMENT with `(` and `)`.
`<LocalLeader>e[` and `<LocalLeader>e]` wrap the current ELEMENT with `[` and `]`.
`<LocalLeader>e{` and `<LocalLeader>e}` wrap the current ELEMENT with `{` and `}`.
