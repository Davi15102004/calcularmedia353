unit u_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tform_principal = class(TForm)
    nome: TEdit;
    nota1: TEdit;
    nota2: TEdit;
    nota3: TEdit;
    nota4: TEdit;
    btn_calcular: TButton;
    procedure btn_calcularClick(Sender: TObject);
    procedure nota1Exit(Sender: TObject);
    procedure nota2Exit(Sender: TObject);
    procedure nota3Exit(Sender: TObject);
    procedure nota4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_principal: Tform_principal;

implementation

{$R *.dfm}

procedure Tform_principal.btn_calcularClick(Sender: TObject);
var
  n1,n2,n3,n4,media : Double;
begin
   n1 := StrToFloat( nota1.Text );
   n2 := StrToFloat( nota2.Text );
   n3 := StrToFloat( nota3.Text );
   n4 := StrToFloat( nota4.Text );

   media := ( n1 + n2 + n3 + n4 ) / 4;

   showMessage(nome.Text + ' sua média é ' + FloatToStr(media));
end;

procedure Tform_principal.nota1Exit(Sender: TObject);
begin
if   ( StrToFloat( nota1.Text )  < 1) or ( StrToFloat( nota1.Text )  > 10)  then
 begin
       showMessage('sua média é' );
      nota1.SetFocus;
 end;


end;

procedure Tform_principal.nota2Exit(Sender: TObject);
begin
      if   ( StrToFloat( nota2.Text )  < 1) or ( StrToFloat( nota2.Text )  > 10)  then
 begin
       showMessage('sua média é' );
      nota2.SetFocus;
 end;

end;

procedure Tform_principal.nota3Exit(Sender: TObject);
begin
       if   ( StrToFloat( nota3.Text )  < 1) or ( StrToFloat( nota3.Text )  > 10)  then
 begin
       showMessage('sua média é' );
      nota3.SetFocus;
 end;
end;

procedure Tform_principal.nota4Exit(Sender: TObject);
begin
 if   ( StrToFloat( nota4.Text )  < 1) or ( StrToFloat( nota4.Text )  > 10)  then
 begin
       showMessage('sua média é' );
      nota4.SetFocus;
 end;
end;

end.
