object frmListaFornecedores: TfrmListaFornecedores
  Left = 183
  Top = 112
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Listagem de Fornecedores'
  ClientHeight = 527
  ClientWidth = 1171
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1171
    Height = 169
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 119
      Height = 13
      Caption = 'Nome do Fornecedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 48
      Width = 97
      Height = 13
      Caption = 'C.P.F. / C.N.P.J.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 88
      Width = 82
      Height = 13
      Caption = 'Data Cadastro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edNome: TEdit
      Left = 8
      Top = 24
      Width = 233
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = edNomeKeyPress
    end
    object edDocumento: TEdit
      Left = 8
      Top = 64
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = edDocumentoKeyPress
    end
    object btAplicarFiltro: TBitBtn
      Left = 8
      Top = 130
      Width = 121
      Height = 33
      Caption = 'Aplicar Filtros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btAplicarFiltroClick
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000014000000120000000100
        040000000000D8000000CE0E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888888EE6688888888800008888888EE6688888888800008888
        888EE6688888888800008888888EE6688888888800008888888EE66888888888
        00008888888EE6688888888800008888888EEE66666888880000888888EEEE66
        66666888000088888EEEEEE66888688800008888EEEEEEEE668866880000888E
        EEEEEEEEE66866880000888EEEEEEEEEE6666688000088EEEEEEEEEEEE666688
        00008EEEEEEEEEEEEEE6668800008EEEEEEEEEEEEEEE666800008EEEEEEEEEEE
        EEEEE6680000888888888888888888880000}
    end
    object btLimparFiltro: TBitBtn
      Left = 136
      Top = 130
      Width = 121
      Height = 33
      Caption = 'Limpar Filtros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btLimparFiltroClick
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000014000000120000000100
        040000000000D8000000CE0E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888899999999998888800008888999999999999888800008889
        998EE6688899988800008899988EE6688999998800008999888EE66899989998
        00008998888EE6699988899800008998888EE999966889980000899888EE9999
        66666998000089988EE999E66888699800008998EE999EEE668869980000899E
        E999EEEEE668699800008999999EEEEEE66699980000889999EEEEEEEE699988
        00008EE999EEEEEEEE99968800008EEE999999999999666800008EEEE9999999
        999EE6680000888888888888888888880000}
    end
    object edData: TMaskEdit
      Left = 8
      Top = 104
      Width = 81
      Height = 21
      TabOrder = 4
      OnKeyPress = edDataKeyPress
    end
    object GroupBox1: TGroupBox
      Left = 510
      Top = 4
      Width = 656
      Height = 101
      Caption = 'Observa'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object Label4: TLabel
        Left = 6
        Top = 15
        Width = 624
        Height = 13
        Caption = 
          '- A pesquisa ir'#225' retornar o que conter no nome informado, ex.: M' +
          'ARIA (tudo que conter MARIA, ser'#225' mostrado'
        WordWrap = True
      end
      object Label5: TLabel
        Left = 6
        Top = 36
        Width = 641
        Height = 13
        Caption = 
          '- Informar C.P.F. /  C.N.P.J. completo, com pontos, h'#237'fens e bar' +
          'ras, ex.: 123.456.789-00 ou 00.123.456/0000-01'
        WordWrap = True
      end
      object Label6: TLabel
        Left = 6
        Top = 58
        Width = 325
        Height = 13
        Caption = '- Informar a Data de Cadastro completa, ex.: 18/10/1980'
      end
      object Label7: TLabel
        Left = 6
        Top = 79
        Width = 361
        Height = 13
        Caption = '- Deixando os campos em branco, busca todos os fornecedores'
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 169
    Width = 1171
    Height = 307
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 1167
      Height = 303
      Align = alClient
      DataSource = dm.dsPesquisaFornecedor
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'Data Cadastro'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HORA'
          Title.Caption = 'Hora Cadastro'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Title.Caption = 'Documento'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
          Title.Caption = 'C.P.F. / C.N.P.J'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEEMPRESA'
          Title.Caption = 'Empresa'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 284
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEFORNECEDOR'
          Title.Caption = 'Fornecedor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 270
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RG'
          Title.Caption = 'R.G.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATANASCIMENTO'
          Title.Caption = 'Dt. Nascimento'
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
    Top = 476
    Width = 1171
    Height = 51
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object btVisualizar: TBitBtn
      Left = 8
      Top = 8
      Width = 113
      Height = 33
      Caption = 'Visualizar '
      TabOrder = 0
      OnClick = btVisualizarClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
        DADA000000000DADADAD0FFFFFFF0ADADA000F88888F0DADA0000F88888F0ADA
        000A0F88870007A000AD0F8800FFF0000ADA0F807FFFF070ADAD0F70E000F080
        7ADA0F0EFEFEF0880DAD0F0F0000F0880ADA000EFEFFF0880DADDA7000000080
        7ADAADA008888870ADADDADA0088800ADADAADADA70007ADADAD}
    end
    object btSair: TBitBtn
      Left = 128
      Top = 8
      Width = 113
      Height = 33
      Caption = 'Sair'
      TabOrder = 1
      OnClick = btSairClick
      Glyph.Data = {
        D6060000424DD606000000000000360400002800000019000000180000000100
        080000000000A0020000C30E0000C30E00000001000000000000000000007B00
        0000FF000000007B00007B7B000000FF0000FFFF0000007B7B007B7B7B00BDBD
        BD0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00090909090909
        0000000809090909090809090909090909090900000009090909090909090909
        0909090908080809090909090909090000000909090909090909090909090909
        0804040809090909090909000000090909090909090909090909090908060604
        0809090909090900000009090909090909090909090909090806060404080909
        0909090000000909090909090909090909090909080606040404080909090900
        0000000000000000000000000909090908060604040400000000080000000909
        0909090909090900080808080006060404040008090909000000090909090909
        090808000A0A0A0A070606040404000809090900000009090909090908000400
        0A0A0A0A0706060404040008090909000000090909090909080004000A0A0A0A
        070606040404000809090900000009090908080808040404070A0A0A07060404
        000400080909090000000909080808080804060404070A0A0706040800040008
        090909000000090400000000000406060404070A070606040404000809090900
        0000080406060606060606060604040707060604040400080909090000000804
        060B0B0B0B0B0B0B060604070706060404040008090909000000090404040404
        040406060604070A070606040404000809090900000009090808080808040606
        04070A0A070606040404000809090900000009090909090908040604070A0A0A
        0706060404040008090909000000090909090909080404000A0A0A0A07040604
        04040008090909000000090909090909080000000A0A0A0A0A07040604040008
        0909090000000909090909090909080A0A0A0A0A0A0A0A040604000809090900
        0000090909090909090908070707070707070700040400080909090000000909
        0909090909090908080808080808080808080809090909000000}
    end
  end
end
