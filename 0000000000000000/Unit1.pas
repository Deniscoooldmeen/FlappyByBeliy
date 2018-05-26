unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
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

procedure TForm1.Button2Click(Sender: TObject);
begin

   button1.Left:=button1.Left +N;
sleep(100);
  button1.Left:=button1.Left +N;


   button1.Left:=button1.Left +N;
sleep(100);
  button1.Left:=button1.Left +N;

  button1.Left:=button1.Left -N;
sleep(100);
  button1.Left:=button1.Left -N;


   button1.top:=button1.top +N;
sleep(100);
  button1.top:=button1.top +N;


   button1.Left:=button1.Left +N;
sleep(100);
  button1.Left:=button1.Left +N;

   button1.top:=button1.top -N;
sleep(100);
  button1.top:=button1.top -N;


   button1.Left:=button1.Left -N;
sleep(100);
  button1.Left:=button1.Left -N;


   button1.top:=button1.top -N;
sleep(100);
  button1.top:=button1.top -N;


end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  N:= 10;
end;

end.
