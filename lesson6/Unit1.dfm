object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 420
  ClientWidth = 801
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 312
    Width = 32
    Height = 13
    Caption = 'Width:'
  end
  object Label2: TLabel
    Left = 16
    Top = 360
    Width = 22
    Height = 13
    Caption = 'Top:'
  end
  object Label3: TLabel
    Left = 232
    Top = 312
    Width = 23
    Height = 13
    Caption = 'Left:'
  end
  object Label4: TLabel
    Left = 232
    Top = 368
    Width = 35
    Height = 13
    Caption = 'Height:'
  end
  object Label5: TLabel
    Left = 488
    Top = 312
    Width = 41
    Height = 13
    Caption = 'Caption:'
  end
  object Label6: TLabel
    Left = 491
    Top = 360
    Width = 26
    Height = 13
    Caption = 'Text:'
  end
  object Button1: TButton
    Left = 264
    Top = 112
    Width = 265
    Height = 137
    Caption = 'Klik do ou lif'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 69
    Top = 309
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 69
    Top = 360
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 288
    Top = 312
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 288
    Top = 360
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 528
    Top = 312
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit6: TEdit
    Left = 528
    Top = 360
    Width = 121
    Height = 21
    TabOrder = 6
    OnChange = Edit6Change
  end
end
