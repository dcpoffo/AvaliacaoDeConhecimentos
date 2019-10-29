object frmPesquisaEmpresa: TfrmPesquisaEmpresa
  Left = 364
  Top = 195
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pesquisa Empresa'
  ClientHeight = 431
  ClientWidth = 653
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 384
    Width = 653
    Height = 47
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 0
    object btCancelar: TBitBtn
      Left = 552
      Top = 10
      Width = 89
      Height = 28
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 0
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object btSelecionar: TBitBtn
      Left = 456
      Top = 10
      Width = 89
      Height = 28
      Caption = 'Selecionar'
      ModalResult = 1
      TabOrder = 1
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333388888888883333333333FFFFFFFFFF3333333330000000000833333
        33338888888888F3333333330FFFFFFFF083333333338F33333F38F333333333
        0FFFF00FF083333333338F33388FF8F3333333330FFF0000F083333333338F33
        8888F8F3333333330FF80000F083333333338F338888F8F3333333330F800000
        0083333333338F38888888F3333333330F000F000083333333338F88838888F3
        333333330F00FFF00083333333338F88333888F3333333330FFFFF0000833333
        33338F33338888FF333333330FFFFF0F0003333333338F33338F888F33333333
        0FFFFF003008333333338FFFFF88388F33333333000000033800333333338888
        88833388F333333333333333330083333333333333333388FF33333333333333
        3330033333333333333333388F33333333333333333303333333333333333333
        8333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
    end
    object btNovo: TBitBtn
      Left = 13
      Top = 13
      Width = 124
      Height = 25
      Caption = 'Cadastrar Empresa'
      TabOrder = 2
      OnClick = btNovoClick
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777777777777707700000007777777777777707700000007777
        7777777700000000000077777777777777077000000070000000000007077000
        000070FFFFFFFFFF07777000000070F00F00F00F07777000000070FFFFFFFFFF
        077770000000704444444444447770000000774FFFFFFFFFF47770000000774F
        00F00F00F47770000000774FFFFFFFFFF4777000000077444444444444777000
        0000774744744744747770000000774444444444447770000000777777777777
        777770000000}
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 53
    Width = 653
    Height = 331
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object tabela: TDBGrid
      Left = 2
      Top = 2
      Width = 649
      Height = 327
      Align = alClient
      DataSource = dm.dsEmpresa
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = tabelaDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CNPJ'
          Title.Caption = 'C.N.P.J.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Title.Caption = 'U.F.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEFANTASIA'
          Title.Caption = 'NOME FANTASIA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#211'DIGO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 653
    Height = 53
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 241
      Height = 13
      Caption = 'Nome da Empresa (ENTER para  localizar)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edNomeEmpresa: TEdit
      Left = 8
      Top = 24
      Width = 289
      Height = 21
      TabOrder = 0
      OnChange = edNomeEmpresaChange
      OnKeyPress = edNomeEmpresaKeyPress
    end
  end
end
