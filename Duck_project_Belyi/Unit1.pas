unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, MPlayer;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Image2: TImage;
    Timer1: TTimer;
    Image3: TImage;
    Timer2: TTimer;
    Image4: TImage;
    Timer3: TTimer;
    Image5: TImage;
    Timer4: TTimer;
    Timer5: TTimer;
    Image6: TImage;
    Timer6: TTimer;
    MediaPlayer1: TMediaPlayer;
    MediaPlayer2: TMediaPlayer;
    Image7: TImage;
    Timer7: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  N,A:integer;
  png1:TPngImage;
  png2:TPngImage;
  png3:TPngImage;
  png4:TPngImage;
  png5:TPngImage;

implementation

{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);
begin
Form1.DoubleBuffered:=true;
Png1:=TPngImage.Create;
Png1.LoadFromResourceName(Hinstance, 'pngImage_1');
Image3.Picture.Graphic:= Png1;

Png2:=TPngImage.Create;
Png2.LoadFromResourceName(Hinstance, 'pngImage_2');
Image2.Picture.Graphic:= Png2;
Png2.Free;

Png3:=TPngImage.Create;
Png3.LoadFromResourceName(Hinstance, 'pngImage_3');
Image5.Picture.Graphic:= Png3;
Png3.Free;

Png4:=TPngImage.Create;
Png4.LoadFromResourceName(Hinstance, 'pngImage_4');
Image4.Picture.Graphic:= Png4;
Png4.Free;

Png5:=TPngImage.Create;
Png5.LoadFromResourceName(Hinstance, 'pngImage_5');
Image6.Picture.Graphic:= Png5;
Png5.Free;
//���������� ���.��������.
N:=7;
//���������� ���. �����.
A:=0;
//������ ��� ����� ������� � ���� ������������ �� ������.
Label1.Caption:=IntToStr(N);
Label2.Caption:=IntToStr(A);
//���������� ����� ���.
Image2.Left :=-130;
Image2.Top:=490;
 //���������� ������ ���.
Image3.Left :=930;
Image3.Top:=490;
//������ ��� ����� ��� �� ������� ��� �����.
 Form1.DoubleBuffered:= true;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
N:=N-1;
Label1.Caption:= IntToStr(N);
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
MediaPlayer1.Position :=0;
MediaPlayer1.Stop();
MediaPlayer1.Play();
Image4.Top:=Image2.Top;
Image4.Left:=Image2.Left;
Image2.Left :=Random(500);
Image2.Top:=490;
Image4.Visible:=True;
Timer3.Enabled:=True;


A:=A+1;
N:= N-1;
Label1.Caption:=IntToStr(N);
Label2.Caption:=IntToStr(A);
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
MediaPlayer2.Position :=0;
MediaPlayer2.Stop();
MediaPlayer2.Play();
Image5.Top:=Image3.Top;
Image5.Left:=Image3.Left;
 Image3.Left := Random(500)+Random(500);
 Image3.Top := 490;
  Image5.Visible:=True;
Timer2.Enabled:=True;
A:=A+1;
N:= N-1;
Label1.Caption:=IntToStr(N);
Label2.Caption:=IntToStr(A);
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
Image5.Top:=Image3.Top;
Image5.Left:=Image3.Left;
 Image3.Left := Random(500)+Random(500);
 Image3.Top := 490;
  Image5.Visible:=True;
Timer2.Enabled:=True;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Image2.Left:= Image2.Left +10;
Image2.Top:=Image2.Top  -10;
if (Image2.Top < -150) then
begin
 Image2.Left :=Random(500);
Image2.Top:=490;
end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
 Image3.Left:= Image3.Left -10;
Image3.Top:=Image3.Top  - 11;
if (Image3.Top < -150) then
begin
 Image3.Left := Random(500)+Random(500);
 Image3.Top := 490;
end;

end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
Image4.Top:=Image4.Top +10;
end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
Image5.Top:=Image5.Top +10;
end;

procedure TForm1.Timer5Timer(Sender: TObject);
begin
//������ ������� ������ �� ��������� � ����������.
if (N <= 0)  then
begin
Timer1.Enabled:=False;
Timer2.Enabled:=False;
Timer3.Enabled:=False;
Timer4.Enabled:=False;
Timer5.Enabled:=False;
Image2.Visible := False;
Image3.Visible := False;
Image4.Visible := False;
Image5.Visible := False;
Label1.Visible := false;
Label2.Visible := false;
 if (A>0) then
 begin
Timer6.Enabled := true;
 end;

  if (A<=0) then
  begin
  Timer7.Enabled := true;
  end;
 ShowMessage('���� ��������');
end;
end;

procedure TForm1.Timer6Timer(Sender: TObject);
begin
//����� ������� ��������� ���� � 1 ����.
  Image6.Visible:=true;
  if (Image6.Top>528) then
  begin
    Image6.Top :=Image6.Top - 1;
  end;
end;

procedure TForm1.Timer7Timer(Sender: TObject);
begin
//��������� ���� ��� ����.
Image7.Visible:=true;
  if (Image6.Top>528) then
  begin
    Image7.Top :=Image7.Top - 1;
  end;
end;

end.
