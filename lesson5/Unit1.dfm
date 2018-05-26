object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 640
  ClientWidth = 703
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
    Left = -10
    Top = 608
    Width = 705
    Height = 33
    Caption = #1087#1088#1099#1078#1086#1082
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = -10
    Top = 0
    Width = 705
    Height = 25
    TabOrder = 1
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 336
    Top = 152
  end
end
