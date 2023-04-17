object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'ClipFile'
  ClientHeight = 249
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblAddress: TLabel
    Left = 8
    Top = 61
    Width = 43
    Height = 13
    Caption = 'Address:'
  end
  object lblSize: TLabel
    Left = 8
    Top = 120
    Width = 23
    Height = 13
    Caption = 'Size:'
  end
  object lblVariable: TLabel
    Left = 8
    Top = 184
    Width = 42
    Height = 13
    Caption = 'Variable:'
  end
  object btnOpen: TButton
    Left = 8
    Top = 8
    Width = 297
    Height = 41
    Caption = 'Open File...'
    TabOrder = 0
    OnClick = btnOpenClick
  end
  object editAddress: TEdit
    Left = 8
    Top = 80
    Width = 297
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object editSize: TEdit
    Left = 8
    Top = 139
    Width = 297
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object editVariable: TEdit
    Left = 8
    Top = 203
    Width = 297
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object btnExport: TButton
    Left = 320
    Top = 8
    Width = 97
    Height = 228
    Caption = 'Export File...'
    TabOrder = 4
    OnClick = btnExportClick
  end
  object dlgOpen: TOpenDialog
    Left = 256
    Top = 16
  end
  object dlgSave: TSaveDialog
    Left = 376
    Top = 192
  end
end
