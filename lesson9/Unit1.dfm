object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 455
  ClientWidth = 830
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 480
    Top = 212
    Width = 41
    Height = 41
    Caption = 'Button1'
    TabOrder = 0
  end
  object Timer1: TTimer
    Interval = 10
    OnTimer = Timer1Timer
    Left = 8
  end
end
