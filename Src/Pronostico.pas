program Pronostico;
uses
  crt;
const
  n=12;
type
  valhis=array [1..n] of real;
var
  dt,p:valhis;
  ft:valhis;
  op:integer;
  aux,a,b:real;
  vvh,vf:boolean;

procedure marco;
  var
    q:integer;
  begin
    textcolor(0);
    gotoxy(1,1);
    write('É');
    gotoxy(80,1);
    write('»');
    gotoxy(1,49);
    write('È');
    gotoxy(80,49);
    write('¼');
    for q:=2 to 48 do
    begin
      gotoxy(1,q);
      writeln('º');
      gotoxy(80,q);
      writeln('º');
    end;
    for q:=2 to 79 do
    begin
      gotoxy(q,1);
      writeln('Í');
      gotoxy(q,49);
      writeln('Í');
    end;
  end;
procedure menu;
  begin
    marco;
    gotoxy(35,2);
    textcolor(0);
    writeln('MENU PRINCIPAL');
    gotoxy(30,5);
    textcolor(9);
    writeln('1. INFORMACION DE PRONOSTICOS');
    gotoxy(30,7);
    writeln('2. INGRESO DE DATOS');
    gotoxy(30,9);
    writeln('3. INGRESO DE FACTORES');
    gotoxy(30,11);
    writeln('4. CONSULTA DE RESULTADOS');
    gotoxy(30,13);
    writeln('5. INTEGRANTES');
    gotoxy(30,15);
    writeln('6. SALIR');
    gotoxy(30,17);
    textcolor(12);
  end;
procedure informacion;
  var
    opi:integer;
  Begin
    clrscr;
    marco;
    gotoxy(26,2);
    Writeln('INFORMACION DE PRONOSTICOS');
    gotoxy(2,5);
    textcolor(9);
    Writeln('1. ¨QUE ES PRONOSTICO?');
    gotoxy(2,7);
    Writeln('2. ¨QUE ES PROMEDIO MOVIL SIMPLE?');
    gotoxy(2,9);
    Writeln('3. ¨QUE ES PROMEDIO MOVIL PONDERADO?');
    gotoxy(2,11);
    Writeln('4. ¨QUE ES SUAVIZAMIENTO EXPONENCIAL SIMPLE?');
    gotoxy(2,13);
    Writeln('5. ¨QUE ES SUAVIZAMIENTO EXPONENCIAL DOBLE?');
    gotoxy(2,15);
    Writeln('6. ¨QUE ES REGRESION LINEAL?');
    gotoxy(2,17);
    Writeln('7. VOLVER AL MENU ANTERIOR');
    gotoxy(2,20);
    textcolor(12);
    Write('Ingrese una opcion: ');
    Readln(opi);
    Case opi of
     1:Begin
        clrscr;
        marco;
        gotoxy(28,2);
        Write('¨QUE ES PRONOSTICO?');
        textcolor(9);
        gotoxy(2,5);
        Write('  Es el arte y la ciencia de predecir los eventos futuros. Puede involucrar');
        gotoxy(2,7);
        Write('el manejo de datos historicos para proyectarlos al futuro, mediante algun');
        gotoxy(2,9);
        Write('tipo de modelo matematico.');
        gotoxy(2,12);
        write('  Puede ser una prediccion del futuro subjetiva o intuitiva. O bien una');
        gotoxy(2,14);
        write('combinacion de ambas, es decir, un modelo matematico ajustado por el juicio');
        gotoxy(2,16);
        write('del administrador.');
        gotoxy(2,20);
        textcolor(12);
        Write('(Pulse Enter para continuar)');
        Readln;
        informacion;
     end;
     2:Begin
        clrscr;
        marco;
        gotoxy(25,2);
        Write('¨QUE ES PROMEDIO MOVIL SIMPLE?');
        textcolor(9);
        gotoxy(2,5);
        Write('  Los promedios moviles simples son utiles si se asume que las demandas del');
        gotoxy(2,7);
        Write('mercado seran mas o menos constantes durante un determinado periodo de tiempo.');
        gotoxy(2,10);
        write('  Ejemplo: Un promedio movil de tres meses se toma sencillamente, como la suma');
        gotoxy(2,12);
        write('de la demanda de los ultimos tres meses entre tres.');
        gotoxy(2,16);
        textcolor(12);
        Write('(Pulse Enter para continuar)');
        Readln;
        informacion;
     end;
     3:Begin
        clrscr;
        marco;
        gotoxy(25,2);
        Write('¨QUE ES PROMEDIO MOVIL PONDERADO?');
        textcolor(9);
        gotoxy(2,5);
        Write('  Cuando existe una tendencia o patron, los pasos pueden ser utilizados para');
        gotoxy(2,7);
        Write('poner mas enfasis en los valores recientes. Esto hace que las tecnicas sean');
        gotoxy(2,9);
        write('mas sensibles a los cambios, ya que los periodos recientes pueden tener mayor');
        gotoxy(2,11);
        write('peso.');
        gotoxy(2,15);
        textcolor(12);
        Write('(Pulse Enter para continuar)');
        Readln;
        informacion;
      end;
      4:Begin
        clrscr;
        marco;
        gotoxy(20,2);
        Write('¨QUE ES SUAVIZAMIENTO EXPONENCIAL SIMPLE?');
        gotoxy(2,5);
        textcolor(9);
        Write('  La suavizacion exponencial simple es un metodo de pronostico facil de usar');
        gotoxy(2,7);
        Write('y se maneja de forma eficiente por medio de computadoras. Aunque es un tipo de');
        gotoxy(2,9);
        Write('tecnica de los promedios moviles, involucra poco respaldo de informacion');
        gotoxy(2,11);
        write('pasada y falla al responder a las tendencias.');
        gotoxy(2,14);
        textcolor(12);
        Write('(Pulse Enter para continuar)');
        Readln;
        informacion;
      end;
      5:Begin
        clrscr;
        marco;
        gotoxy(22,2);
        Write('¨QUE ES SUAVIZAMIENTO EXPONCIAL DOBLE?');
        textcolor(9);
        gotoxy(2,5);
        Write('  Para hacer el suavizamiento exponencial doble, se aplica el promedio de');
        gotoxy(2,7);
        Write('suavizacion exponencial simple y se ajusta por retrasos positivos o negativos.');
        gotoxy(2,9);
        Write('  La ecuacion para el suavizamiento exponencial doble emplea constantes de');
        gotoxy(2,11);
        Write('suavizacion como (alfa) y (beta)');
        gotoxy(2,14);
        textcolor(12);
        Write('(Pulse Enter para continuar)');
        Readln;
        informacion;
      end;
      6:Begin
        clrscr;
        marco;
        gotoxy(28,2);
        Writeln('¨QUE ES REGRESION LINEAL?');
        textcolor(9);
        gotoxy(2,5);
        Writeln('  Es un metodo matematico utilizado para estudiar la relacion entre variables,');
        gotoxy(2,7);
        Writeln('el cual se adapta a una amplia variedad de situaciones; desde diversas medidas');
        gotoxy(2,9);
        Write('economicas, hasta predecir el numero de ventas de un determinado producto.');
        gotoxy(2,12);
        textcolor(12);
        Write('(Pulse Enter para continuar)');
        Readln;
        informacion;
      end;
      7:menu;
      else
      begin
        gotoxy(2,22);
        textcolor(12);
        write('Opcion invalida: pulse Enter para continuar');
        readln;
        informacion;
      end;
      readln;
    end;
  end;
procedure validavalhis;
  begin
  clrscr;
  marco;
  gotoxy(28,2);
  write('CONSULTA DE RESULTADOS');
  textcolor(12);
  gotoxy(2,5);
  write('Todavia no puede consultar resultados porque faltan valores por ingresar');
  end;
procedure validafac;
  begin
    textcolor(12);
    gotoxy(2,18);
    write('Los valores de alfa y beta deben ser mayores a 0 y menores o iguales a 1');
    gotoxy(2,20);
    write('La sumatoria de las ponderaciones debe ser igual a 1');
    gotoxy(2,23);
    write('Pulse Enter para volver a ingresar los valores');
    readln;
  end;
procedure valoreshistoricos (var dt:valhis; var vvh:boolean) ;
  var
    i,l:integer;
  begin
    clrscr;
    marco;
    gotoxy(32,2);
    writeln('INGRESO DE DATOS');
    textcolor(9);
    for i:=1 to n do
    begin
      l:=2*i+3;
      gotoxy(2,l);
      write('Ingrese el valor historico del mes(',i,'): ');
      readln(dt[i]);
    end;
    vvh:=true;
    menu;
  end;
procedure factores(var ft,p:valhis; var a,b:real; var vf:boolean);
  var
  f,l:integer;
  sp:real;
  begin
    repeat
    clrscr;
    marco;
    gotoxy(32,2);
    writeln('INGRESO DE FACTORES');
    textcolor(9);
    sp:=0;
    for f:=1 to 3 do
    begin
      l:=2*f+3;
      gotoxy(2,l);
      write('Ingrese la ponderacion(',f,'): ');
      readln(p[f]);
      sp:=sp+p[f];
    end;
    gotoxy(2,11);
    write('Ingrese el pronostico de enero: ');
    readln(ft[1]);
    aux:=ft[1];
    gotoxy(2,13);
    write('Ingrese el valor de alfa: ');
    readln(a);
    gotoxy(2,15);
    write('Ingrese el valor de beta: ');
    readln(b);
    if (sp<>1) then
    begin
      validafac;
    end
    else
    begin
      if (a>0) then
      begin;
        if (a<=1) then
        begin
          if (b>0) then
          begin
            if (b<=1) then
            begin
              if (p[1]>0) then
              begin
                if (p[1]<=1) then
                begin
                  if (p[2]>0) then
                  begin
                    if (p[2]<=1) then
                    begin
                      if (p[3]>0) then
                      begin
                        if (p[3]<=1) then
                        begin
                          menu;
                          vf:=true;
                        end
                        else
                        begin
                          validafac;
                        end;
                      end
                      else
                      begin
                        validafac;
                      end;
                    end
                    else
                    begin
                      validafac;
                    end;
                  end
                  else
                  begin
                    validafac;
                  end;
                end
                else
                begin
                  validafac;
                end;
              end
              else
              begin
                validafac;
              end;
            end
            else
            begin
              validafac;
            end;
          end
          else
          begin
            validafac;
          end;
        end
        else
        begin
          validafac;
        end;
      end
      else
      begin
        validafac;
      end;
    end;
    until(vf=true);
  end;
function pms(dt:valhis) :real;
  var
    ft:valhis;
    i,l:integer;
    dma,w:real;
  begin
    clrscr;
    marco;
    gotoxy(30,2);
    write('PROMEDIO MOVIL SIMPLE');
    dma:=0;
    for i:=4 to n do
    begin
      ft[i]:=(dt[i-1]+dt[i-2]+dt[i-3])/3;
      l:=2*i-3;
      textcolor(9);
      gotoxy(2,l);
      write('El pronostico para el mes(',i,') es:  ',ft[i]:5:2);
      w:=abs(dt[i]-ft[i])/9;
      dma:=dma+w;
    end;
    gotoxy(2,23);
    write('El dma es: ',dma:5:2);
    gotoxy(2,26);
    textcolor(12);
    write('Pulse Enter para continuar');
    readln;
  end;
function pmp (dt,p:valhis) :real;
  var
    ft:valhis;
    i,l:integer;
    dma,w:real;
  begin
    clrscr;
    marco;
    gotoxy(30,2);
    write('PROMEDIO MOVIL PONDERADO');
    dma:=0;
    for i:=4 to n do
    begin
      ft[i]:=((dt[i-1]*p[3])+(dt[i-2]*p[2])+(dt[i-3]*p[1]));
      l:=2*i-3;
      textcolor(9);
      gotoxy(2,l);
      writeln('El pronostico para el mes(',i,') es:  ',ft[i]:5:2);
      w:=abs(dt[i]-ft[i])/9;
      dma:=dma+w;
    end;
    gotoxy(2,23);
    write('El dma es: ',dma:5:2);
    gotoxy(2,26);
    textcolor(12);
    write('Pulse Enter para continuar');
    readln;
  end;
function ses (dt:valhis; a:real; var ft:valhis) :real;
  var
    i,l:integer;
    dma,w:real;
  begin
    clrscr;
    marco;
    ft[1]:=aux;
    gotoxy(30,2);
    write('SUAVIZAMIENTO EXPONENCIAL SIMPLE');
    w:=0;
    dma:=0;
    for i:=2 to n do
    begin
      ft[i]:=(a*dt[i-1])+((1-a)*ft[i-1]);
      l:=2*i+1;
      textcolor(9);
      gotoxy(2,l);
      write('El pronostico para el mes(',i,') es:  ',ft[i]:5:2);
      w:=abs(dt[i]-ft[i]);
      dma:=dma+w;
    end;
    dma:=dma+abs(dt[1]-ft[1]);
    dma:=dma/12;
    gotoxy(2,27);
    write('El dma es: ',dma:5:2);
    gotoxy(2,30);
    textcolor(12);
    write('Pulse Enter para continuar');
    readln;
  end;
function sed (dt:valhis; a,b:real; var ft:valhis) :real;
  var
    pt:valhis;
    tt:valhis;
    i,l:integer;
    dma,w,q,p,sq,sp:real;
  begin
    clrscr;
    marco;
    ft[1]:=dt[1];
    gotoxy(25,2);
    write('SUAVIZAMIENTO EXPONENCIAL DOBLE');
    q:=0;
    p:=0;
    dma:=0;
    for i:=1 to n do
    begin
      if (i<7) then
      begin
        sq:=(sq+dt[i]);
        q:=sq/6;
      end
      else
      begin
        sp:=(sp+dt[i]);
        p:=sp/6;
      end;
    end;
    tt[1]:=(p-q)/6;
    pt[1]:=ft[1]+tt[1];
    textcolor(9);
    gotoxy(2,5);
    writeln('El pronostico para el mes(1) es: ',pt[1]:5:2);
    for i:=2 to n do
    begin
      ft[i]:=(a*dt[i-1])+((1-a)*pt[i-1]);
      l:=(2*i)+3;
      tt[i]:=(b*(ft[i]-ft[i-1]))+((1-b)*tt[i-1]);
      pt[i]:=(ft[i]+tt[i]);
      gotoxy(2,l);
      writeln('El pronostico para el mes(',i,') es: ',pt[i]:5:2);
      w:=abs(dt[i]-pt[i]);
      dma:=dma+w;
    end;
    dma:=dma+abs(dt[1]-pt[1]);
    dma:=dma/n;
    gotoxy(2,29);
    writeln('El dma es: ',dma:5:2);
    gotoxy(2,32);
    textcolor(12);
    write('Pulse Enter para continuar');
    readln;
  end;
function rl(dt:valhis):real;
  var
    ft:valhis;
    px,pcx,y,cy,py,pcy,sy,scy,xy,sxy,pxy,cxy,dx,dy,r,a1,b1,dma,w,sd:real;
    l,i,x,cx,sx,scx:integer;
  begin
    clrscr;
    marco;
    gotoxy(32,2);
    writeln('REGRESION LINEAL');
    sx:=0;
    scx:=0;
    sy:=0;
    scy:=0;
    sxy:=0;
    for i:=1 to n do
    begin
      x:=i;
      cx:=x*x;
      sx:=sx+i;
      scx:=scx+cx;
      px:=sx/n;
      pcx:=scx/n;
      y:=dt[i];
      cy:=dt[i]*dt[i];
      sy:=sy+dt[i];
      scy:=scy+cy;
      py:=sy/n;
      pcy:=scy/n;
      xy:=x*y;
      sxy:=sxy+xy;
      pxy:=sxy/n;
    end;
      b1:=(sx*sy-n*sxy)/(sx*sx-n*scx);
      a1:=py-(b1*px);
      cxy:=((sxy)/(n))-(px*py);
      dx:=sqrt(((scx)/(n))-(px*px));
      dy:=sqrt(((scy)/(n))-(py*py));
      r:=(cxy)/(dx*dy);
      sd:=0;
    for i:=1 to n do
    begin
      textcolor(9);
      l:=2*i+3;
      gotoxy(2,l);
      ft[i]:=a1+(b1*i);
      write('El pronostico para el mes(',i,') es: ',ft[i]:5:2);
      w:=abs(dt[i]-ft[i]);
      sd:=sd+w;
    end;
      dma:=sd/n;
      gotoxy(2,29);
      writeln('El dma es: ',dma:5:2);
      gotoxy(2,31);
      writeln('El factor de correlacion es: ',r:5:2);
      textcolor(12);
      gotoxy(2,34);
      write('Pulse Enter para continuar');
      readln;
    end;
procedure consulta;
  var
    opc:integer;
  begin
    clrscr;
    marco;
    gotoxy(28,2);
    writeln('CONSULTA DE RESULTADOS');
    textcolor(9);
    gotoxy(2,5);
    writeln('1. PROMEDIO MOVIL SIMPLE');
    gotoxy(2,7);
    writeln('2. PROMEDIO MOVIL PONDERADO ');
    gotoxy(2,9);
    writeln('3. SUAVIZAMIENTO EXPONENCIAL SIMPLE');
    gotoxy(2,11);
    writeln('4. SUAVIZAMIENTO EXPONENCIAL DOBLE ');
    gotoxy(2,13);
    writeln('5. REGRESION LINEAL ');
    gotoxy(2,15);
    writeln('6. VOLVER AL MENU ANTERIOR ');
    gotoxy(2,17);
    textcolor(12);
    write('Ingrese una opcion: ');
    readln(opc);
    case opc of
        1:begin;
        pms(dt);
        consulta;
      end;
        2:begin
        pmp(dt,p);
        consulta;
      end;
        3:begin
        ses(dt,a,ft);
        consulta;
      end;
        4:begin
        sed(dt,a,b,ft);
        consulta;
      end;
        5:begin
        rl(dt);
        consulta;
      end;
        6:menu
    else
      begin
        gotoxy(2,19);
        textcolor(12);
        write('Opcion ivalida: pulse enter para continuar');
        readln;
        consulta;
      end;
    end;
  end;
procedure integrantes;
  begin
    clrscr;
    marco;
    textcolor(0);
    gotoxy(35,2);
    writeln('INTEGRANTES');
    gotoxy(47,7);
    textcolor(0);
    writeln('Autores:');
    gotoxy(57,7);
    textcolor(9);
    writeln('Stalin Sanchez');
    gotoxy(57,9);
    writeln('Adalys Torres');
    gotoxy(57,11);
    writeln('Andreina Villaroel');
    gotoxy(57,13);
    writeln('Karen Sanchez');
    gotoxy(57,15);
    writeln('Rabsaris Benavidez');
    gotoxy(7,7);
    textcolor(0);
    writeln('Catedra:');
    gotoxy(15,7);
    textcolor(9);
    write(' Programacion I');
    gotoxy(7,9);
    textcolor(0);
    write('Seccion:');
    textcolor(9);
    write(' 2');
    gotoxy(24,20);
    textcolor(12);
    write('(Pulse enter para continuar)');
    readln;
  end;
begin
  textbackground(15);
  vvh:=false;
  vf:=false;
  repeat
    clrscr;
    menu;
    write('Ingrese su opcion: ');
    readln(op);
    case op of
        1:informacion;
        2:valoreshistoricos(dt,vvh);
        3:factores(ft,p,a,b,vf);
        4:begin
            if (vvh=true) then
            begin
              if (vf=true) then
              begin;
               consulta;
              end
              else
              begin
                validavalhis;
                gotoxy(2,8);
                write('Pulse Enter y vaya a la opcion 3 (Ingreso de factores)');
                readln;
                menu;
              end;
            end
            else
            begin
              if (vf=false) then
              begin
                validavalhis;
                gotoxy(2,8);
                write('Pulse Enter y vaya a la opcion 2 y 3 (Ingreso de valores y factores)');
                readln;
                menu;
              end
              else
              begin
                validavalhis;
                gotoxy(2,8);
                write('Pulse Enter y vaya a la opcion 2 (Ingreso de datos)');
                readln;
                menu;
              end;
            end;
          end;
        5:integrantes;
        6:exit
      else
      begin
        gotoxy(20,19);
        textcolor(12);
        write('Opcion invalida: pulse Enter para continuar');
        readln;
      end;
    end;
  until (op=6);
end.
