/PROG  WEBMOTION
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "v2";
PROG_SIZE	= 1846;
CREATE		= DATE 17-06-26  TIME 17:33:34;
MODIFIED	= DATE 17-09-12  TIME 10:58:22;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 91;
MEMORY_SIZE	= 2246;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  JMP LBL[999] ;
   2:   ;
   3:  LBL[1] ;
   4:  WAIT (F[1])    ;
   5:  R[42]=0    ;
   6:  IF (F[3]),JMP LBL[3] ;
   7:  IF (F[4]),JMP LBL[4] ;
   8:  IF (F[5]),JMP LBL[5] ;
   9:  IF (F[6]),JMP LBL[6] ;
  10:  IF (F[7]),JMP LBL[7] ;
  11:  IF (F[8]),JMP LBL[8] ;
  12:   ;
  13:  LBL[3] ;
  14:  CALL WEBCHECK    ;
  15:  IF (F[2]),JMP LBL[999] ;
  16:J PR[40] 10% CNT100    ;
  17:  JMP LBL[999] ;
  18:   ;
  19:  LBL[4] ;
  20:  PR[40,1]=PR[40,1]+R[51]    ;
  21:  PR[40,2]=PR[40,2]+R[52]    ;
  22:  PR[40,3]=PR[40,3]+R[53]    ;
  23:  PR[40,4]=PR[40,4]+R[54]    ;
  24:  PR[40,5]=PR[40,5]+R[55]    ;
  25:  PR[40,6]=PR[40,6]+R[56]    ;
  26:  CALL WEBCHECK    ;
  27:  IF (F[2]),JMP LBL[999] ;
  28:J PR[40] 5% CNT100    ;
  29:  R[42]=R[42]+1    ;
  30:  IF R[42]>5,JMP LBL[999] ;
  31:  JMP LBL[4] ;
  32:   ;
  33:  LBL[5] ;
  34:  CALL WEBCHECK    ;
  35:  IF (F[2]),JMP LBL[999] ;
  36:J PR[41] 10% CNT100    ;
  37:  JMP LBL[999] ;
  38:   ;
  39:  LBL[6] ;
  40:  PR[41,1]=PR[41,1]+R[51]    ;
  41:  PR[41,2]=PR[41,2]+R[52]    ;
  42:  PR[41,3]=PR[41,3]+R[53]    ;
  43:  CALL WEBCHECK    ;
  44:  IF (F[2]),JMP LBL[999] ;
  45:L PR[41] 40mm/sec CNT100    ;
  46:  R[42]=R[42]+1    ;
  47:  IF R[42]>5,JMP LBL[999] ;
  48:  JMP LBL[6] ;
  49:   ;
  50:  LBL[7] ;
  51:  PR[41,4]=PR[41,4]+R[54]    ;
  52:  PR[41,5]=PR[41,5]+R[55]    ;
  53:  PR[41,6]=PR[41,6]+R[56]    ;
  54:  CALL WEBCHECK    ;
  55:  IF (F[2]),JMP LBL[999] ;
  56:J PR[41] 1% CNT100    ;
  57:  R[42]=R[42]+1    ;
  58:  IF R[42]>5,JMP LBL[999] ;
  59:  JMP LBL[7] ;
  60:   ;
  61:  LBL[8] ;
  62:  PR[41,1]=PR[43,1]+R[51]    ;
  63:  PR[41,2]=PR[43,2]+R[52]    ;
  64:  PR[41,3]=PR[43,3]+R[53]    ;
  65:  PR[41,4]=PR[43,4]+R[54]    ;
  66:  PR[41,5]=PR[43,5]+R[55]    ;
  67:  PR[41,6]=PR[43,6]+R[56]    ;
  68:  CALL WEBCHECK    ;
  69:  IF (F[2]),JMP LBL[999] ;
  70:L PR[41] 100mm/sec FINE    ;
  71:  R[42]=R[42]+1    ;
  72:  IF R[42]>500,JMP LBL[999] ;
  73:  JMP LBL[8] ;
  74:   ;
  75:  LBL[999] ;
  76:  F[1]=(OFF) ;
  77:  F[2]=(OFF) ;
  78:  F[3]=(OFF) ;
  79:  F[4]=(OFF) ;
  80:  F[5]=(OFF) ;
  81:  F[6]=(OFF) ;
  82:  F[7]=(OFF) ;
  83:  F[8]=(OFF) ;
  84:  R[42]=999    ;
  85:  R[51]=0    ;
  86:  R[52]=0    ;
  87:  R[53]=0    ;
  88:  R[54]=0    ;
  89:  R[55]=0    ;
  90:  R[56]=0    ;
  91:  JMP LBL[1] ;
/POS
/END
