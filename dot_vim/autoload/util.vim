vim9script

export def ExtendedHome()
    var column = col('.')
    normal ^

    if column == col('.')
        normal 0
    endif
enddef
