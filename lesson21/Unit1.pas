unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
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
begin
 Timer1.Enabled:=true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Button1.Left:=Button1.Left +10;
if (Button1.Left>1055) then
begin
Timer1.Enabled:=false;
 Timer2.Enabled:=true;


end;

end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  Button2.Left:=Button2.Left +10;
if (Button2.Left>1055) then
begin
Timer2.Enabled:=false;
Timer3.Enabled:=true;
end;

end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
Button1.Left:=Button1.Left -10;
   if (Button1.Left<0) then
begin
 Timer3.Enabled:=false;
    Timer4.Enabled:=true;
end;
end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
 Button2.Left:=Button2.Left -10;
   if (Button2.Left<0) then
begin

    Timer4.Enabled:=false;

 Timer1.Enabled:=true;


end;
end;

end.
