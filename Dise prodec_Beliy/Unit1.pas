unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Button1: TButton;
    Timer1: TTimer;
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
 N:integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
timer1.Enabled := true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
N:= 1;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if(N = 1) then
begin
  image1.Visible:=false;
  image2.Visible:=true;
  N := 2;
end
else if (N = 2) then
begin
  image1.Visible:=true;
  image2.Visible:=false;
  N := 1;
end
else if (N = 3) then
     begin

     end;
end;

end.
