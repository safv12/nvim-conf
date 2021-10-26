nmap <localleader>tt :ConjureCljRunCurrentTest<CR>
nmap <localleader>tn :ConjureCljCurrentNsTests<CR>
nmap <localleader>ta :ConjureCljRunAllTests<CR>

let g:conjure#client#clojure#nrepl#test#current_form_names = ['deftest', 'defflow', 'defflow-new-system!']
