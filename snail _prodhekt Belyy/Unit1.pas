unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, PngImage, StdCtrls,mmsystem;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Timer1: TTimer;
    Button1: TButton;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button2: TButton;
    Image9: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
Png1: TPngImage;
Png2: TPngImage;
Png3: TPngImage;
Png4: TPngImage;
Png5: TPngImage;
Png6: TPngImage;
Png7: TPngImage;
Png8: TPngImage;
Png9: TPngImage;
Png10: TPngImage;
Png11: TPngImage;
Png12: TPngImage;
Png13: TPngImage;
A:Integer;
S:Integer;
D:Integer;
F:Integer;
G:Integer;
H:Integer;
Z:Integer;
X:Integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
PlaySound('My_supper_muisik_Denis (1).wav',0,SND_ASYNC);
image1.Left:=0;
image2.Left:=0;
image3.Left:=0;
image4.Left:=0;
image5.Left:=0;
 image6.Left:=0;
 image7.Left:=0;
 image8.Left:=0;


 Timer1.Enabled:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
PlaySound('My_supper_muisik_Denis (2).wav',0,SND_ASYNC or SND_LOOP);
Timer1.Enabled:=true;

end;

procedure TForm1.FormCreate(Sender: TObject);

begin



ShowMessage('���� ������ �� ������ �����.���� ������ ������������� ���� ������ ������ �������������.���������� ��� ����� � �������� ������ ����� �����.����.����� 10.');

A:=0;
S:=0;
D:=0;
F:=0;
G:=0;
H:=0;
Z:=0;
X:=0;
Form1.DoubleBuffered:=true;
  Png1:= TPngImage.Create;
  Png1.LoadFromResourceName(HINSTANCE,'PngImage_2');
  Image1.Picture.Graphic:=Png1;
  Png1.Free;


   Png2:= TPngImage.Create;
  Png2.LoadFromResourceName(HINSTANCE,'PngImage_3');
  Image2.Picture.Graphic:=Png2;
  Png2.Free;

     Png3:= TPngImage.Create;
  Png3.LoadFromResourceName(HINSTANCE,'PngImage_4');
  Image3.Picture.Graphic:=Png3;
  Png3.Free;

     Png4:= TPngImage.Create;
  Png4.LoadFromResourceName(HINSTANCE,'PngImage_5');
  Image4.Picture.Graphic:=Png4;
  Png4.Free;

     Png5:= TPngImage.Create;
  Png5.LoadFromResourceName(HINSTANCE,'PngImage_6');
  Image5.Picture.Graphic:=Png5;
  Png5.Free;

     Png6:= TPngImage.Create;
  Png6.LoadFromResourceName(HINSTANCE,'PngImage_7');
  Image6.Picture.Graphic:=Png6;
  Png6.Free;

     Png7:= TPngImage.Create;
  Png7.LoadFromResourceName(HINSTANCE,'PngImage_8');
  Image7.Picture.Graphic:=Png7;
  Png7.Free;

  Png8:= TPngImage.Create;
  Png8.LoadFromResourceName(HINSTANCE,'PngImage_9');
  Image8.Picture.Graphic:=Png8;
  Png8.Free;

  Png9:= TPngImage.Create;
  Png9.LoadFromResourceName(HINSTANCE,'PngImage_1');
  Image9.Picture.Graphic:=Png9;
  Png9.Free;

  Png10:= TPngImage.Create;
  Png10.LoadFromResourceName(HINSTANCE,'PngImage_10');
  Image10.Picture.Graphic:=Png10;
  Png10.Free;

    Png10:= TPngImage.Create;
  Png10.LoadFromResourceName(HINSTANCE,'PngImage_10');
  Image11.Picture.Graphic:=Png10;
  Png10.Free;

      Png10:= TPngImage.Create;
  Png10.LoadFromResourceName(HINSTANCE,'PngImage_10');
  Image12.Picture.Graphic:=Png10;
  Png10.Free;
      Png10:= TPngImage.Create;
  Png10.LoadFromResourceName(HINSTANCE,'PngImage_10');
  Image13.Picture.Graphic:=Png10;
  Png10.Free;
      Png10:= TPngImage.Create;
  Png10.LoadFromResourceName(HINSTANCE,'PngImage_10');
  Image14.Picture.Graphic:=Png10;
  Png10.Free;
      Png10:= TPngImage.Create;
  Png10.LoadFromResourceName(HINSTANCE,'PngImage_10');
  Image15.Picture.Graphic:=Png10;
  Png10.Free;
      Png10:= TPngImage.Create;
  Png10.LoadFromResourceName(HINSTANCE,'PngImage_10');
  Image16.Picture.Graphic:=Png10;
  Png10.Free;
   Png10:= TPngImage.Create;
  Png10.LoadFromResourceName(HINSTANCE,'PngImage_10');
  Image17.Picture.Graphic:=Png10;
  Png10.Free;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Image1.left := Image1.left + Random (11);
  Image2.left := Image2.left + Random (11);
  Image3.left := Image3.left + Random (11);
  Image4.left := Image4.left + Random (11);
  Image5.left := Image5.left + Random (11);
  Image6.left := Image6.left + Random (11);
  Image7.left := Image7.left + Random (11);
  Image8.left := Image8.left + Random (11);

  if(image1.Left>841)then
  begin
    A := A+ 1;
    Label1.Caption := IntToStr(A);
    Timer1.Enabled :=false;
    ShowMessage('������ 1 ��������');

  end;

  if(image2.Left>841)then
  begin
  S := A+ 1;
    Label2.Caption := IntToStr(S);
    Timer1.Enabled :=false;
    ShowMessage('������ 2 ��������');
  end;

 if(image3.Left>841)then
  begin
  D := A+ 1;
    Label3.Caption := IntToStr(D);
    Timer1.Enabled :=false;
    ShowMessage('������ 3 ��������');
    end;

  if(image4.Left>841)then
  begin
  F := A+ 1;
    Label4.Caption := IntToStr(F);
    Timer1.Enabled :=false;
    ShowMessage('������ 4 ��������');
  end;

  if(image5.Left>841)then
  begin
  G := A+ 1;
    Label5.Caption := IntToStr(G);
    Timer1.Enabled :=false;
    ShowMessage('������ 5 ��������');
  end;

  if(image6.Left>841)then
  begin
  H := A+ 1;
    Label6.Caption := IntToStr(H);
    Timer1.Enabled :=false;
    ShowMessage('������ 6 ��������');
  end;

  if(image7.Left>841)then
  begin
  Z:= A+ 1;
    Label7.Caption := IntToStr(Z);
    Timer1.Enabled :=false;
    ShowMessage('������ 7 ��������');
  end;

  if(image8.Left>841)then
  begin
  X:= A+ 1;
    Label8.Caption := IntToStr(X);
    Timer1.Enabled :=false;
    ShowMessage('������ 8 ��������');
  end;
end;

end.
