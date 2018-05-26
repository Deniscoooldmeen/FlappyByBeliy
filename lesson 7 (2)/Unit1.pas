unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Button1.Visible :=false;
Timer1.Enabled := true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Button7.Left := Button7.Left + 50;
Button3.Left := Button3.Left + 50;
Button3.Top:= Button3.top - 50;
Button4.Left := Button4.Left + 50;
Button4.Top := Button4.top + 50;
Button6.Top := Button6.top - 50;
Button5.Top := Button5.Top + 50;
Button2.Left := Button2.Left - 50;
Button2.top := Button2.Top  - 50;
Button9.Left := Button9.Left - 50;
Button8.Left := Button8.Left - 50;
Button8.Top := Button8.Top + 50;
end;

end.
