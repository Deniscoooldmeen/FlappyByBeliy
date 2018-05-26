unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  N: integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Timer1.Enabled :=true;
Button3.Top :=Button3.Top - 10;
Button4.Top :=Button4.Top - 10;
Button4.Top :=Button4.Top - 10;
Button5.Top :=Button5.Top - 10;
Button6.Top :=Button6.Top - 10;
Button7.Top :=Button7.Top - 10;
Button2.Left :=Button3.Left;
N :=-6;
Label1.Caption :=   Inttostr(N) ;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
N := 6;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Button2.Left := Button2.Left +90;
end;

end.
