input fks
input fkscirc
verbatimtex
%&latex
\documentclass[9pt]{extarticle}
\usepackage[utf8]{inputenc}
\usepackage{fkssugar}
\begin{document}
etex
 
prologues:=3;
u:=1cm;

beginfig(1);

fks_center:=true;

z0=(0,2u);
z1=z0-u*(-1,sqrt(3.));
z2=z0-u*( 1,sqrt(3.));

%privody
wire((0,2.7u),z0,nsq);
wire(.5[z1,z2],(0,-.5u),nsq);

%obvod
wire(z0,z1,nsq);
wire(z1,z2,nsq);
wire(z2,z0,nsq);

%vnitrek
wire(.33[z1,z0],.33[z2,z0],nsq);
wire(.67[z1,z0],.67[z2,z0],nsq);

wire(.33[z0,z1],.33[z2,z1],nsq);
wire(.67[z0,z1],.67[z2,z1],nsq);

wire(.33[z0,z2],.33[z1,z2],nsq);
wire(.67[z0,z2],.67[z1,z2],nsq);


junction.a(z0,"")(bot);
junction.b(.33[z0,z1],"")(bot);
junction.c(.33[z0,z2],"")(bot);
junction.d(.33[z1,z0],"")(bot);
junction.e(.33[z1,z2],"")(bot);
junction.f(.33[z2,z0],"")(bot);
junction.g(.33[z2,z1],"")(bot);
junction.h(.33[.5[z0,z1],z2],"")(bot);
junction.i(.5[z1,z2],"")(bot);


label.rt(btex $\bod{A}$ etex,(0,2.5u));
label.rt(btex $\bod{B}$ etex,(0,-.25u));

endfig;
verbatimtex
\end{document}
etex
 
end
