unit uCalculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnCalcular: TButton;
    edtNumero: TEdit;
    Label1: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
var
i,n,m,divisor:integer;
total:real;
primeira,negativo:boolean;
begin
try
n:=strtoint(edtNumero.text);
except
 showmessage('só é permitido numero inteiro');
 exit;
 end;
if n = 0 then
begin
  showmessage('não é permitido calcular em cima do 0');
  exit;
end;
m:=0;
total:=0;
divisor:=0;
primeira:=true;
  for I := 1 to n do
  begin
    divisor:=divisor+1;
  m:=n-divisor;
  if primeira = true then
  begin
    total:= total+ (n*(n-divisor)/divisor);
    primeira:=false;
    negativo:=false;
  end
  else
  begin
  if negativo = true then
  begin
   total:= total- ((m+1)*(m)/divisor);
   negativo:=false;
  end
  else
  begin
   total:= total+ ((m+1)*(m)/divisor);
   negativo:=true;
  end;
  end;
  end;
  showmessage(floattostr(total));
end;

end.
