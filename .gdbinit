set disassembly-flavor intel
source /usr/share/pwndbg/gdbinit.py
define init-peda
source ~/peda/peda.py
end
document init-peda
Initializes the PEDA (Python Exploit Development Assistant for GDB) framework
end


define init-pwndbg
#set context-section ghidra
#set context-section-ghidra always
set context-clear-screen on
set follow-fork-mode parent
set context-code-lines 25 
set context-source-code-lines 25

source /opt/splitmind/gdbinit.py
python
import splitmind
(splitmind.Mind()
  .tell_splitter(show_titles=True)
  .tell_splitter(set_title="Main")
  .right(display="backtrace", size="25%")
  .above(of="main", display="disasm", size="80%", banner="top")
  .show("code", on="disasm", banner="none")
  .right(cmd='tty; tail -f /dev/null', size="65%", clearing=False)
  .tell_splitter(set_title='Input / Output')
  .above(display="stack", size="95%")
  .above(display="legend", size="20")
  .show("regs", on="legend")
  .below(of="backtrace", cmd="ipython", size="30%")
).build(nobanner=True)
end
set context-sections  "regs args code disasm stack backtrace"
end
document init-pwndbg
Initializes PwnDBG
end

define init-gef
source /usr/share/gef/gef.py
end
document init-gef
Initializes GEF (GDB Enhanced Features)
end



