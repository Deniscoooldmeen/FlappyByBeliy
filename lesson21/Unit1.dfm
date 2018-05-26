object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 166
  ClientWidth = 1128
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 1121
    Height = 159
    Caption = 'Panel1'
    TabOrder = 2
  end
  object Button1: TButton
    Left = 24
    Top = 8
    Width = 65
    Height = 65
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 93
    Width = 65
    Height = 65
    Caption = 'Button2'
    TabOrder = 1
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 30
    OnTimer = Timer1Timer
    Left = 1104
    Top = 8
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 30
    OnTimer = Timer2Timer
    Left = 1072
    Top = 80
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 30
    OnTimer = Timer3Timer
    Left = 560
    Top = 88
  end
  object Timer4: TTimer
    Enabled = False
    Interval = 30
    OnTimer = Timer4Timer
    Left = 696
    Top = 96
  end
end
