object form_consulta: Tform_consulta
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  ClientHeight = 338
  ClientWidth = 651
  Color = 14145495
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnResize = FormResize
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
    object pnl_topo: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 10
      Width = 645
      Height = 159
      Margins.Top = 10
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object pnl_pesquisa: TPanel
        AlignWithMargins = True
        Left = 88
        Top = 12
        Width = 513
        Height = 78
        BevelOuter = bvNone
        TabOrder = 0
        object lbl_texto: TLabel
          Left = 13
          Top = 9
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
        object pnl_edt: TPanel
          Left = 10
          Top = 40
          Width = 500
          Height = 30
          BevelOuter = bvNone
          BiDiMode = bdRightToLeftNoAlign
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object shp_pesquisa: TShape
            Left = 0
            Top = 0
            Width = 500
            Height = 30
            Align = alClient
            ExplicitLeft = -13
            ExplicitWidth = 651
            ExplicitHeight = 41
          end
          object spb_pesquisa: TSpeedButton
            Left = 2
            Top = -8
            Width = 36
            Height = 46
            Cursor = crHandPoint
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFC4A3959B644CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4A3957B3111C4A395FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5A4
              967A3010C09E8FFFFFFFFFFFFFFFFFFFFFFFFFF8F4F3CEB4A8B28875A97964B8
              907FDDCAC2FFFFFFFFFFFFC4A3957B3111C4A395FFFFFFFFFFFFFFFFFFFFFFFF
              D2B9AE8542257E3617996047A36F599053387A3010975D44BA93827B3111C4A3
              95FFFFFFFFFFFFFFFFFFFFFFFFCAAC9F7B3111B18673F6F0EEFFFFFFFFFFFFFF
              FFFFE5D6D094593F7A3010BA9382FFFFFFFFFFFFFFFFFFFFFFFFECE1DC7D3516
              BC9787FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF7F694593F975D44FEFE
              FEFFFFFFFFFFFFFFFFFFB084718F5035FDFDFCFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFE5D6D07A3010DDCAC2FFFFFFFFFFFFFFFFFF8C4C30BD9989
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF905237B891
              80FFFFFFFFFFFFFFFFFF7E3617CFB4A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFA26F58A97A65FFFFFFFFFFFFFFFFFF854124C7A79A
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF996148B287
              74FFFFFFFFFFFFFFFFFFA26E57A26E57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFF6F0EE7E3617CEB4A8FFFFFFFFFFFFFFFFFFD6BFB57B3111
              DECCC4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB18572854225F8F4
              F3FFFFFFFFFFFFFFFFFFFFFFFFA5735D843F22DECCC4FFFFFFFFFFFFFFFFFFFF
              FFFFFDFDFCBC97877B3111D2B8ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF7F6
              A5735D7B3111A26E57C7A79AD0B6ABBE9A8A8F50357D3516CAAC9FFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6BFB5A26E578542257D35168B
              4B2FB08471ECE1DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object edt_pesquisa: TEdit
            Left = 45
            Top = 9
            Width = 188
            Height = 19
            ParentCustomHint = False
            TabStop = False
            BevelOuter = bvNone
            BiDiMode = bdLeftToRight
            BorderStyle = bsNone
            CharCase = ecUpperCase
            Color = clWhite
            Ctl3D = True
            DoubleBuffered = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clSilver
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentBiDiMode = False
            ParentCtl3D = False
            ParentDoubleBuffered = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            Text = 'PESQUISAR'
          end
        end
      end
    end
    object pnl_grid: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 175
      Width = 645
      Height = 160
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 10
      ExplicitTop = 125
      ExplicitWidth = 641
      ExplicitHeight = 208
      object dbgRegistros: TDBGrid
        Left = 0
        Top = 0
        Width = 645
        Height = 160
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
end
