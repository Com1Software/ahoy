******************************** Ahoy Help
******************************************
function ahelp(parm2,parm3,parm4)
******************************************
?"ahoy help"
?"usage: ahoy help <command> [args]"
?
do case
 case upper(parm2)="GENMAP"
      ?"genmap <mapfilename> <sourcefile> <schemadir> <mapname>"
      ?"       Generates a map for use with the Ahoy HL7 Parser."
   
 case upper(parm2)="RHL7"
 case upper(parm2)="WHL7"

endcase
return(nil)
******************************************
