vim9script

command! PackStatus {
    minpac_load#Init()
    minpac#status()
}
command! PackClean {
    minpac_load#Init()
    minpac#clean()
}
command! PackUpdate {
    minpac_load#Init()
    minpac#update()
}
