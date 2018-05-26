unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
 N:integer;
 F:integer;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
N:=1;
F:=1;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Button1.Top := Button1.Top - N*10;

if Button1.Top<0 then
begin
  N:=-1;
end;

 if Button1.Top>Form1.Height then
 begin
   N:=+1;
 end;

 Button1.Left:= Button1.Left + F*10;

 if Button1.Left<0 then
 begin
  F:=1;
 end;

 if Button1.Left>Form1.Width then
 begin
  F:=-1;
 end;

end;

end.
