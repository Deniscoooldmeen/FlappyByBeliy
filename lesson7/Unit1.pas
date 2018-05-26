unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button3: TButton;
    Edit7: TEdit;
    Edit8: TEdit;
    Label3: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Label4: TLabel;
    Edit11: TEdit;
    Button4: TButton;
    Edit12: TEdit;
    Button5: TButton;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
begin
Edit3.Text := IntToStr(StrToint (Edit2.Text) + StrToint ( Edit1.Text));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit6.Text := IntToStr(StrToint (Edit4.Text) - StrToint ( Edit5.Text));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Edit9.Text := IntToStr(StrToint (Edit7.Text)*StrToint ( Edit8.Text));
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Edit12.Text := FloatToStr(StrToint (Edit10.Text) / StrToint ( Edit11.Text));
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
N:= N+1;
Label5.Caption :=IntToStr (N);

end;

end.
