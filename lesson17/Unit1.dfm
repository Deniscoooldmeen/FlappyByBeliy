object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 385
  ClientWidth = 690
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
    Left = 0
    Top = 57
    Width = 105
    Height = 81
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 111
    Top = 76
    Width = 90
    Height = 58
    Caption = 'Button2'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 199
    Top = 76
    Width = 98
    Height = 66
    Caption = 'Button3'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 296
    Top = 76
    Width = 105
    Height = 57
    Caption = 'Button4'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 406
    Top = 84
    Width = 99
    Height = 49
    Caption = 'Button5'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 511
    Top = 85
    Width = 105
    Height = 57
    Caption = 'Button6'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 608
    Top = 80
    Width = 81
    Height = 57
    Caption = 'Button7'
    TabOrder = 6
    OnClick = Button7Click
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer2Timer
    Left = 40
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer3Timer
    Left = 80
  end
  object Timer4: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer4Timer
    Left = 112
  end
  object Timer5: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer5Timer
    Left = 144
  end
  object Timer6: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer6Timer
    Left = 184
  end
  object Timer7: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer7Timer
    Left = 216
  end
end
