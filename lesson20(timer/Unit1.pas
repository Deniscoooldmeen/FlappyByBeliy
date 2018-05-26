unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Timer1: TTimer;
    Label4: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label4MouseEnter(Sender: TObject);
    procedure Label4MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
 N:integer;
 M:Integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin


  if (Timer1.Enabled=true) then
  begin
    Timer1.Enabled:=false;
    button1.Caption:='Reset';
  end
    else if (timer1.Enabled=false) and  ( (N>0))or ((M>0))then
  begin
    M:=0;
    N:=0;
    button1.Caption:='Start timer';
    Label1.Caption:= IntToStr(M);
    Label2.Caption:= IntToStr(N);
  end
  else
  begin
    button1.Caption:='Stop timer';
    Timer1.Enabled:=true;
  end;


end;

procedure TForm1.FormCreate(Sender: TObject);
begin
N:=0;
M:=0;

end;

procedure TForm1.Label4Click(Sender: TObject);
begin
Close();
end;

procedure TForm1.Label4MouseEnter(Sender: TObject);
begin
Label4.Font.Size := 40;
end;

procedure TForm1.Label4MouseLeave(Sender: TObject);
begin
  Label4.Font.Size := 17;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
 N:=N+1;
 Label2.Caption:= IntToStr ( N);
 if (N > 59) then
 begin
   N:=0;
   M:= M+1;
 Label1.Caption:= IntToStr((M));
   Label2.Caption:= IntToStr((N));
 end;
end;

end.
