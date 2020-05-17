object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 408
    Top = 266
    Width = 75
    Height = 25
    Caption = 'Serializar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 536
    Top = 266
    Width = 75
    Height = 25
    Caption = 'Deserializar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 8
    Width = 529
    Height = 193
    TabOrder = 2
  end
end
