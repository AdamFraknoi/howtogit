unit Proba_35_szamok100;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  Memo1.Text := '';
  for i:=1 to 100 do
  begin
    If i/3=trunc(i/3) then
    begin
      Memo1.Text := Memo1.Text+' Fizz ';
    end
    else
    begin
      Memo1.Text := Memo1.Text+' '+IntToStr(i);
    end;
  end;
end;

end.

