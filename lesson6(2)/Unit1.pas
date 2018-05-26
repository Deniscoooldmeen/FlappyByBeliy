unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    Image1: TImage;
    timer1: TTimer;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  N: Integer;

implementation

{$R *.dfm}

procedure TForm1.Image1Click(Sender: TObject);
begin
Image1.Left :=Random(400);
Image1.Top :=Random(400);
N:= N + 1;
Label1.Caption := IntToStr (N);
if N >10 then
begin
ShowMessage('You,win');
end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Image1.Width :=100 +Random (5);
Image1.Height :=100 +Random (5);
end;

end.
