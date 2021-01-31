object form_consulta: Tform_consulta
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 338
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_fundo: TPanel
    Left = 0
    Top = 0
    Width = 651
    Height = 338
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 232
    ExplicitTop = 152
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnl_topo: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 3
      Width = 641
      Height = 78
      Margins.Left = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object lbl_texto: TLabel
        Left = 7
        Top = 8
        Width = 255
        Height = 25
        Caption = 'O que voc'#234' deseja encontrar ?'
        Color = 10485760
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
    end
    object pnl_grid: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 89
      Width = 641
      Height = 244
      Margins.Left = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 232
      ExplicitTop = 152
      ExplicitWidth = 185
      ExplicitHeight = 41
    end
  end
end
