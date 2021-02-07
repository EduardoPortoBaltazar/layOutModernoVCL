object form_pessoas_campos: Tform_pessoas_campos
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'form_pessoas_campos'
  ClientHeight = 470
  ClientWidth = 651
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object pnl_fundo: TPanel
    Left = 0
    Top = 0
    Width = 651
    Height = 470
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pg_pessoas: TPageControl
      Left = 0
      Top = 65
      Width = 651
      Height = 405
      ActivePage = tbs_dados_Gerais
      Align = alClient
      Style = tsButtons
      TabOrder = 0
      object tbs_dados_Gerais: TTabSheet
        Caption = 'tbs_dados_Gerais'
        ExplicitLeft = 3
        ExplicitTop = 27
        ExplicitHeight = 374
        object Label1: TLabel
          Left = 3
          Top = 25
          Width = 130
          Height = 15
          Caption = 'Qual o tipo de Pessoa ?* '
        end
        object Label2: TLabel
          Left = 157
          Top = 25
          Width = 90
          Height = 15
          Caption = 'Data de Cadastro'
        end
        object Label3: TLabel
          Left = 349
          Top = 25
          Width = 80
          Height = 15
          Caption = 'Fisa ou Juridica'
        end
        object Label4: TLabel
          Left = 3
          Top = 74
          Width = 48
          Height = 15
          Caption = 'Historico'
        end
        object ComboBox1: TComboBox
          Left = 3
          Top = 41
          Width = 145
          Height = 23
          TabOrder = 0
          Text = 'ComboBox1'
        end
        object DateTimePicker1: TDateTimePicker
          Left = 157
          Top = 41
          Width = 145
          Height = 23
          Date = 44233.000000000000000000
          Time = 0.939069201391248500
          TabOrder = 1
        end
        object Edit1: TEdit
          Left = 349
          Top = 41
          Width = 276
          Height = 23
          TabOrder = 2
          Text = 'Edit1'
        end
        object Edit3: TEdit
          Left = 3
          Top = 93
          Width = 276
          Height = 23
          TabOrder = 3
          Text = 'Edit1'
        end
      end
      object tbs_endereco: TTabSheet
        Caption = 'tbs_endereco'
        ImageIndex = 1
        ExplicitTop = 25
        ExplicitHeight = 374
        object Label5: TLabel
          Left = 3
          Top = 25
          Width = 21
          Height = 15
          Caption = 'CEP'
        end
        object Edit2: TEdit
          Left = 3
          Top = 41
          Width = 298
          Height = 23
          TabOrder = 0
          Text = 'Edit1'
        end
      end
    end
    object pnl_topo: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 645
      Height = 59
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object spb_dados: TSpeedButton
        AlignWithMargins = True
        Left = 15
        Top = 3
        Width = 120
        Height = 52
        Cursor = crHandPoint
        Margins.Left = 15
        Align = alLeft
        Caption = 'Dados Gerais '
        Flat = True
        Font.Charset = GB2312_CHARSET
        Font.Color = 10485760
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Margin = 5
        ParentFont = False
        OnClick = spb_dadosClick
        OnMouseEnter = spb_dadosMouseEnter
        OnMouseLeave = spb_dadosMouseLeave
        ExplicitLeft = 1
        ExplicitHeight = 51
      end
      object spb_endereco: TSpeedButton
        AlignWithMargins = True
        Left = 153
        Top = 3
        Width = 120
        Height = 52
        Cursor = crHandPoint
        Margins.Left = 15
        Align = alLeft
        Caption = 'Endere'#231'o'
        Flat = True
        Font.Charset = GB2312_CHARSET
        Font.Color = 10485760
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        Margin = 5
        ParentFont = False
        OnClick = spb_enderecoClick
        OnMouseEnter = spb_enderecoMouseEnter
        OnMouseLeave = spb_enderecoMouseLeave
        ExplicitLeft = 124
        ExplicitHeight = 51
      end
      object pnl_botoes: TPanel
        Left = 370
        Top = 0
        Width = 275
        Height = 58
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object pnl_confirma: TPanel
          AlignWithMargins = True
          Left = 26
          Top = 3
          Width = 120
          Height = 52
          Align = alRight
          BevelOuter = bvNone
          Color = 16732497
          ParentBackground = False
          TabOrder = 0
          object spb_confirmar: TSpeedButton
            Left = 0
            Top = 0
            Width = 120
            Height = 52
            Cursor = crHandPoint
            Align = alClient
            Caption = 'Confirmar'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ExplicitTop = -3
            ExplicitHeight = 51
          end
        end
        object pnl_cancelar: TPanel
          AlignWithMargins = True
          Left = 152
          Top = 3
          Width = 120
          Height = 52
          Align = alRight
          BevelOuter = bvNone
          Caption = 'Cancelar'
          Color = 13224393
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          object spb_cancelar: TSpeedButton
            Left = 0
            Top = 0
            Width = 120
            Height = 52
            Cursor = crHandPoint
            Align = alClient
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = spb_cancelarClick
            ExplicitTop = -3
            ExplicitHeight = 51
          end
        end
      end
      object pnl_barra_botao: TPanel
        Left = 0
        Top = 58
        Width = 645
        Height = 1
        Align = alBottom
        BevelOuter = bvNone
        Color = 13224393
        ParentBackground = False
        TabOrder = 1
      end
    end
  end
end
