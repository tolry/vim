function PhpNamespace()

    let pattern = '\v(.*\/\l+)((\/\u\w+)+)\/\u\w+.php$'
    let file = expand("%:p")

    if match(file, pattern) != -1
       return substitute(substitute(substitute(file, pattern, '\2', ''), '\/', '\\\', 'g'), '^\\\', '', '')
    endif

    return ""

endfunction

function PearClassname()

    let pattern = '\v(.*\/\l+)\/((\u\w+\/)*\u\w+).php$'
    let file = expand("%:p")

    if match(file, pattern) != -1
       return substitute(substitute(file, pattern, '\2', ''), '\/', '_', 'g')
    endif

    return ""

endfunction

function PhpNamespaceStatement()

    let namespace = PhpNamespace()

    if namespace == ""
        return ""
    endif

    return "namespace " . namespace . ";"

endfunction

