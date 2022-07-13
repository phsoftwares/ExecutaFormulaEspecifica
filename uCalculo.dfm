object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Principal'
  ClientHeight = 136
  ClientWidth = 239
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 8
    Width = 41
    Height = 13
    Caption = 'N'#250'mero:'
  end
  object btnCalcular: TButton
    Left = 32
    Top = 51
    Width = 177
    Height = 62
    Caption = 'Calcular'
    TabOrder = 0
    OnClick = btnCalcularClick
  end
  object edtNumero: TEdit
    Left = 32
    Top = 24
    Width = 177
    Height = 21
    TabOrder = 1
  end
end
