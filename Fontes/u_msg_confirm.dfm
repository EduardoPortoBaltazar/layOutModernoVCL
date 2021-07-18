object form_msn_confirm: Tform_msn_confirm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 319
  ClientWidth = 574
  Color = 13224393
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_fundo: TPanel
    Left = 0
    Top = 0
    Width = 574
    Height = 319
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 280
    ExplicitTop = 208
    ExplicitWidth = 185
    ExplicitHeight = 41
    object img_confirmacao: TImage
      Left = 16
      Top = 71
      Width = 113
      Height = 106
      Center = True
    end
    object lbl_titulo_pergunta: TLabel
      Left = 135
      Top = 90
      Width = 153
      Height = 28
      Caption = 'Tiulo da Pergunta'
      Color = 10485760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10485760
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl_mensagem: TLabel
      Left = 135
      Top = 124
      Width = 246
      Height = 28
      Caption = 'Titulo da Perginta detalhada'
      Color = 10485760
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10485760
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object pnl_barra_fundo: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 568
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object img_sistema: TImage
        AlignWithMargins = True
        Left = 0
        Top = 8
        Width = 73
        Height = 51
        Center = True
        ParentShowHint = False
        ShowHint = False
      end
      object lbl_confirmacao: TLabel
        Left = 98
        Top = 33
        Width = 255
        Height = 25
        Caption = 'Sistema Padr'#227'o - Confirma'#231#227'o'
        Color = 10485760
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object pnl_barra: TPanel
        Left = 0
        Top = 64
        Width = 568
        Height = 1
        Align = alBottom
        TabOrder = 0
      end
    end
    object pnl_botoes: TPanel
      Left = 284
      Top = 272
      Width = 275
      Height = 34
      BevelOuter = bvNone
      TabOrder = 1
      object pnl_confirma: TPanel
        AlignWithMargins = True
        Left = 26
        Top = 3
        Width = 120
        Height = 28
        Align = alRight
        BevelOuter = bvNone
        Color = 16732497
        ParentBackground = False
        TabOrder = 0
        ExplicitHeight = 248
        object spb_confirmar: TSpeedButton
          Left = 0
          Top = 0
          Width = 120
          Height = 28
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
          OnClick = spb_confirmarClick
          ExplicitTop = -8
          ExplicitHeight = 52
        end
      end
      object pnl_cancelar: TPanel
        AlignWithMargins = True
        Left = 152
        Top = 3
        Width = 120
        Height = 28
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
        ExplicitHeight = 248
        object spb_cancelar: TSpeedButton
          Left = 0
          Top = 0
          Width = 120
          Height = 28
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
  end
end
