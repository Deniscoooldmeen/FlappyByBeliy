unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Timer1: TTimer;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    Timer5: TTimer;
    Timer6: TTimer;
    Timer7: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  velocity : integer;
  velocity2 : integer;
   velocity3 : integer;
  velocity4: integer;
   velocity5: integer;
     velocity6 : integer;
       velocity7 : integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Timer1.Enabled:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Timer2.Enabled:=true;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Timer3.Enabled:=true;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Timer4.Enabled:=true;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
    Timer5.Enabled:=true;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Timer6.Enabled:=true;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
 Timer7.Enabled:=true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
velocity := 0;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Button1.Top:=Button1.Top + velocity;
velocity :=  velocity +1;

end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
 Button2.Top:=Button2.Top + velocity2;
velocity2 :=  velocity2 +1;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
  Button3.Top:=Button3.Top + velocity3;
velocity3 :=  velocity3 +1;
end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
    Button4.Top:=Button4.Top + velocity4;
velocity4 :=  velocity4 +1;
end;

procedure TForm1.Timer5Timer(Sender: TObject);
begin
 Button5.Top:=Button5.Top + velocity5;
velocity5 :=  velocity5 +1
end;

procedure TForm1.Timer6Timer(Sender: TObject);
begin
 Button6.Top:=Button6.Top + velocity6;
velocity6 :=  velocity6 +1
end;

procedure TForm1.Timer7Timer(Sender: TObject);
begin
   Button7.Top:=Button7.Top + velocity7;
velocity7 :=  velocity7 +1
end;

end.
