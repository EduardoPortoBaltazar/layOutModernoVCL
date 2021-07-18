object form_central: Tform_central
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'form_central'
  ClientHeight = 627
  ClientWidth = 1030
  Color = 14145495
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_topo: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 3
    Width = 1010
    Height = 48
    Margins.Left = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Image1: TImage
      AlignWithMargins = True
      Left = 8
      Top = 6
      Width = 56
      Height = 33
      Center = True
      ParentShowHint = False
      ShowHint = False
    end
    object spb_minimizar: TSpeedButton
      Left = 972
      Top = 0
      Width = 38
      Height = 48
      Cursor = crHandPoint
      Align = alRight
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000020A0A0A57131314AA141415B4141415B4141415B41313
        14AA0A0A0A560000000200000000000000000000000000000000000000000000
        000004040420151516B80D0D0D6E0202020F0000000000000000000000000202
        02100D0D0D6F151516B804040420000000000000000000000000000000000404
        0423151516BD0303041E00000000000000000000000000000000000000000000
        0000000000000404041F161616BE040404200000000000000000000000041515
        16B90303041E0000000000000000000000000000000000000000000000000000
        000000000000000000000404041F151516B800000002000000000A0A0B5A0C0C
        0D6D000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000D0D0D6E0A0A0A5600000000141415B10202
        0210000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000202020F131314A800000000151516B70000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000141415B200000000151515B50000
        0000000000000D0D0D72151516BB151516BB151516BB151516BB151516BB1515
        16BB151516BB0909094C0000000000000000141415B100000000151516B80000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000141415B300000000141415AF0202
        020E000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000202020F131314AA000000000A0A0B5A0C0C
        0D6C000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000C0C0D6D0A0A0A5700000000000000031515
        16BB0303031D0000000000000000000000000000000000000000000000000000
        000000000000000000000303041E151516B90000000200000000000000000404
        0527161616BE0303031C00000000000000000000000000000000000000000000
        0000000000000303031D151516BD040404210000000000000000000000000000
        000004040527151516BB0C0C0D6B0101020D0000000000000000000000000202
        020E0C0C0D6C151516BA04040422000000000000000000000000000000000000
        000000000000000000030A0A0B5C141415AF151515B5151516B7141415B21414
        14AC0A0A0B5A0000000200000000000000000000000000000000}
      OnClick = spb_minimizarClick
      ExplicitLeft = 1080
      ExplicitTop = -6
      ExplicitHeight = 40
    end
    object lbl_central: TLabel
      Left = 74
      Top = 2
      Width = 162
      Height = 21
      Caption = 'Voc'#234' est'#225' na central de '
      Font.Charset = ANSI_CHARSET
      Font.Color = 8388672
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbl_texto_central: TLabel
      Left = 74
      Top = 24
      Width = 288
      Height = 15
      Caption = 'Clique em uma das op'#231#245'es  abaixo  para come'#231'armos '
      Color = 4194368
      Font.Charset = ANSI_CHARSET
      Font.Color = 4194368
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl_nome_central: TLabel
      Left = 239
      Top = 2
      Width = 46
      Height = 21
      Caption = 'NOME'
      Font.Charset = ANSI_CHARSET
      Font.Color = 8388672
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
  object pnl_principal: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 64
    Width = 1010
    Height = 494
    Margins.Left = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 60
    ExplicitHeight = 503
  end
  object pnl_rodape: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 571
    Width = 1010
    Height = 46
    Margins.Left = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 572
    object Image2: TImage
      AlignWithMargins = True
      Left = 16
      Top = 8
      Width = 56
      Height = 33
      Center = True
      ParentShowHint = False
      ShowHint = False
    end
    object Label4: TLabel
      Left = 82
      Top = 6
      Width = 115
      Height = 21
      Caption = 'Central de Ajuda'
      Font.Charset = ANSI_CHARSET
      Font.Color = 8388672
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbl_texto_central_ajuda: TLabel
      Left = 82
      Top = 26
      Width = 395
      Height = 15
      Caption = 
        'N'#227'o sabe como continuar? Clique no '#237'cone e asssista um v'#237'deo exp' +
        'licativo '
      Color = 4194368
      Font.Charset = ANSI_CHARSET
      Font.Color = 4194368
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
end
