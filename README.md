# u_till
a libary of handy tools for loading modules mostly
usefull for commandline 
u=require 'u_till'
u.shwfnc(mdl)
--shows the functions in a loaded modules table 
u.shwldd()
--shows all modules currently loaded
u.svldd(save_path)
--this saves the curently loaded modules to be loaded
--in a new session by
u.lddsvd(save_path)
--loads modules from.file found at save_path
u.shwsvd(save_path)
--shows thr modules listed in save file 
u.shwlst()
--shows all modules installed numbers them for
--use in a few functions im still working on
--returns table so lst=u.shwlst() then 
--u.ldmdl({1,12,13},lst) numbers are not in anyway 
--portable so use names if it matters
TODO
u.ldmdl(mdltbl,mdllst)
--table may contain numbers from mdllst or module names
--mdllst is optional and while it takes longer if you dont
--add it and use numbers in your table 
u.shwsbs(mdl)
--shows all the sub modules for module
u.shwdc(mdlsbmdl)
--shows the doc for module or sub module 
u.modsvd(save_path,rm_or_add,mdl)
-- removes or adds modules to a save file 
*test and modify for more lua versions im pretty 
sure it will work whith them all or close 
