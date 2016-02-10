******************************************
* Ahoy HL7 Parser source code:
* ahoy.prg
*
* Copyright 1992-2014 Com1 Software Development 
* <information@com1software.com>
* www - http://com1software.com
*
******************************************
function Main(parm1,parm2,parm3,parm4)
*****
local comdel:="|"   /* Composite Delimiter */
local scomdel:="^"  /* Sub Composite Delimiter */ 
local xsc:="&"      /* Sub-sub Composite Delimiter */ 
local rfs:="~"      /* Repeat Field Seperator */
local esc:="\"      /* Escape Character */
local s:="\"        /* Slash*Backslash for OS*/
*****
if valtype(parm1)="U"
 parm1:=""
endif
if valtype(parm2)="U"
 parm2:=""
endif
if valtype(parm3)="U"
 parm3:=""
endif
if valtype(parm4)="U"
 parm4:=""
endif
*****************************************
?"Ahoy HL7 Parser"
?"Copyright 2014 Com1 Software Development"
?
do case
 case upper(parm1)="HELP"
      ahelp(parm2,parm3,parm4)
 case upper(parm1)="GENMAP"
      agenmap(s,parm2,parm3,parm4,;
       comdel,scomdel,xsc,rfs,esc)

 case upper(parm1)="RHL7"
 case upper(parm1)="WHL7"
 otherwise
  ?"usage: ahoy <command> [args]"
  ?
  ?"commands:"
  ?"   help      Help for Ahoy HL7 Parser."
  ?"   genmap    Map generation command."
  ?"   rhl7      Read and parse an HL7 file."
  ?"   whl7      Create and write an HL7 file."  
endcase
return(nil)
******************************************
#include "ahelp.prg"
#include "agenmap.prg"
#include "abase.prg"

