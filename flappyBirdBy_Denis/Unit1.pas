unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls,pngImage, StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Timer2: TTimer;
    Label1: TLabel;
    Image10: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer2Timer(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
Form1: TForm1;
//����������, ������� �������� � ���� ��������.

Png_bird:TpngImage;
Png_Ground:TpngImage;
Png_Begground:TpngImage;
Png_Tube1:TpngImage;
Png_Tube2:TpngImage;
Png_Stars:TpngImage;
//���������� ,� ������� ���-�� �����.
score:integer;
//���� ���. ��������� ��������� �� ����� ����� ��� ���.
flag:boolean;
// ���������� ��������.
V:integer;


implementation

{$R *.dfm}
  //��� ������� ����������� ����� ������� ����.
procedure TForm1.FormCreate(Sender: TObject);
begin
// ���������� ������� ��������� ��������.
V:=0;
//������ ���,����� �������� �� ������� ��� ��������.
Form1.DoubleBuffered:=true;
//��������� � �������� ����������� �� ��������.
//��������� ����������� �����.
Png_bird:= TpngImage.Create;
Png_bird.LoadFromResourceName(Hinstance, 'PngImage_1');
Image1.Picture.Graphic:=Png_Bird;
Png_bird.Free;
score:=0;


 //��������� ����������� �����.
Png_Ground:= TpngImage.Create;
Png_Ground.LoadFromResourceName(Hinstance, 'PngImage_2');
Image2.Picture.Graphic:=Png_Ground;
Image3.Picture.Graphic:=Png_Ground;
Image4.Picture.Graphic:=Png_Ground;
Png_Ground.Free;
//��������� ����� ���� �� ������.
Image4.Left:=Image2.width + Image3.Width;
Image4.Top:=Image2.Top;

Image7.Left:=Image6.width + Image5.Width -2;
Image7.Top:=Image6.Top;

Image8.Left:=400;
Image9.Left:=image8.left;

Form1.DoubleBuffered:=true;
//��������� ����������� ����.
Png_Begground:= TpngImage.Create;
Png_Begground.LoadFromResourceName(Hinstance, 'PngImage_3');
Image5.Picture.Graphic:=Png_Begground;
Image6.Picture.Graphic:=Png_Begground;
Image7.Picture.Graphic:=Png_Begground;
Png_Begground.Free;
 //��������� ����������� ������ �����.
Png_Tube1:= TpngImage.Create;
Png_Tube1.LoadFromResourceName(Hinstance, 'PngImage_4');
Image8.Picture.Graphic:=Png_Tube1;
Image8.Picture.Graphic:=Png_Tube1;
Image8.Picture.Graphic:=Png_Tube1;
Png_Tube1.Free;
  //��������� ����������� ������� �����.
Png_Tube2:= TpngImage.Create;
Png_Tube2.LoadFromResourceName(Hinstance, 'PngImage_5');
Image9.Picture.Graphic:=Png_Tube2;
Image9.Picture.Graphic:=Png_Tube2;
Image9.Picture.Graphic:=Png_Tube2;
Png_Tube2.Free;
//�������� ������ �����
Png_Stars:= TpngImage.Create;
Png_Stars.LoadFromResourceName(Hinstance, 'PngImage_6');
Image10.Picture.Graphic:=Png_Stars;
Image10.Picture.Graphic:=Png_Stars;
Image10.Picture.Graphic:=Png_Stars;
Png_Stars.Free;

end;
 //���� ������ ������� ������ �� �������� ���� ������ � ����� 10.
procedure TForm1.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if (Key = VK_SPACE) then
 begin
V:= V-10;
 end;
end;
//��������� ���� ��� ����� �� ������ �����.
procedure TForm1.Image10Click(Sender: TObject);
begin
  Timer1.Enabled:=true;
    Timer2.Enabled:=true;
    Image10.Visible:=false;
    Image1.Visible:=true;
end;

procedure TForm1.Image6Click(Sender: TObject);
begin

end;

//�������� ������ � ������� ���������� ������ ����� ��� ���� � ����.
procedure TForm1.Timer1Timer(Sender: TObject);
begin

    //�������� �����.
   Image2.Left:=Image2.Left -4;
   Image3.Left:=Image3.Left -4;
   Image4.Left:=Image4.Left -4;
     //�������� ����.
   Image5.Left:=Image5.Left-2;
   Image6.Left:=Image6.Left -2;
   Image7.Left:=Image7.Left -2;

      //������������� ����� � ���.
      if(image2.Left <= -Image2.Width)then
      begin
        Image2.Left:=Form1.Width;
      end;

        if(image3.Left <= -Image3.Width)then
      begin
        Image3.Left:=Form1.Width;
      end;

        if(image4.Left <= -Image4.Width)then
      begin
        Image4.Left:=Form1.Width;
      end;

       if(image5.Left <= -Image5.Width)then
      begin
        Image5.Left:=Form1.Width - 7;
      end;

        if(image6.Left <= -Image6.Width)then
      begin
        Image6.Left:=Form1.Width - 7;
      end;

        if(image7.Left <= -Image7.Width)then
      begin
        Image7.Left:=Form1.Width - 7;
      end;
      //������ �������� ����.
    Image8.Left:=Image8.Left -1;
    Image9.Left:=Image8.Left;

         // ���������� � ������������ ����.
      if(image8.Left <= -Image8.Width)then
      begin
        Image8.Left:=Form1.Width;
        Image8.Top:=Random (241)+200;
        image9.Top:= image8.Top -400 -150;
        flag:=false;
      end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin

//������ ������� ������.
  V:=V+1;
  Image1.Top:=Image1.Top +V;
  //����� ������ ������� ���� ������� �������.
  if (Image1.Top <0) then
  begin
   Image1.Top:=0;
   V:=0;
  end;
   //���� ������ ����� ���� �� ���������� � �����.
  if(Image1.Top + Image1.Height > Image3.Top) then
  begin
       Image1.Top:=0;
   V:=0;
   score:=0;
    Label1.Caption:=IntToStr(score);
  end;
  //������������ ������ �  ������ ������.
  if(image1.Left+image1.Width>image8.Left)
  and
  (image1.Top+image1.Height>image8.Top)
  and
  (image1.Left<image8.Left+image8.Width) then
  begin
    Image1.Top:=0;
    V:=0;
    score:=0;
    Label1.Caption:=IntToStr(score);
  end;
   //������������ ������ � ������� ������.
  if(image1.Left+image1.Width>image9.Left)
  and
  (image1.Top<image9.Top+image9.Height)
  and
  (image1.Left<image9.Left+image9.Width) then
  begin
    Image1.Top:=0;
    V:=0;
    score:=0;
    Label1.Caption:=IntToStr(score);
  end;
   //������ ����������� �����.
  if (image1.Left>image8.Left+Image8.Width)and (flag =false) then
   begin
     score:=score+1;
     Label1.Caption:=IntToStr(score);
     flag :=true;
   end;




end;

end.
