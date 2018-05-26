object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 352
  ClientWidth = 794
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
  object Label1: TLabel
    Left = 88
    Top = 16
    Width = 83
    Height = 96
    Caption = '6'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -96
    Font.Name = 'Terminal'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 448
    Top = 16
    Width = 83
    Height = 96
    Caption = '6'
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -96
    Font.Name = 'Terminal'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object Button1: TButton
    Left = 56
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 137
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
  end
  object Button3: TButton
    Left = 137
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 2
  end
  object Button4: TButton
    Left = 137
    Top = 206
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 3
  end
  object Button5: TButton
    Left = 137
    Top = 237
    Width = 75
    Height = 25
    Caption = 'Button5'
    TabOrder = 4
  end
  object Button6: TButton
    Left = 137
    Top = 269
    Width = 75
    Height = 25
    Caption = 'ti'
    TabOrder = 5
  end
  object Button7: TButton
    Left = 137
    Top = 300
    Width = 75
    Height = 25
    Caption = 'Button7'
    TabOrder = 6
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 8
  end
end
