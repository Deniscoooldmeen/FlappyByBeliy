unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1KeyPress(Sender: TObject; var Key: Char);
begin
if(Key = 's')then
begin
Button1.Top:=Button1.Top +10;
  end
  else if (Key = 'd') then
  begin
   Button1.Left:= Button1.Left +10;
 end
 else if (Key = 'w') then
 begin
   Button1.Top:= Button1.Top -10;
end
 else if (Key = 'a') then
 begin
   Button1.Left:= Button1.Left -10;
 end;
 end;


end.
