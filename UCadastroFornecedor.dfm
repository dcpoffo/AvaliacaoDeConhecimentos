object frmCadastroFornecedores: TfrmCadastroFornecedores
  Left = 160
  Top = 31
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 749
  ClientWidth = 1167
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 695
    Width = 1167
    Height = 54
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 0
    object btSair: TBitBtn
      Left = 1080
      Top = 12
      Width = 75
      Height = 33
      Caption = 'Sair'
      TabOrder = 0
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
    object btCancelar: TBitBtn
      Left = 1000
      Top = 12
      Width = 75
      Height = 33
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btCancelarClick
      Glyph.Data = {
        36030000424D360300000000000036000000280000000F000000100000000100
        18000000000000030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF0000FF0000FF0000FF0000FF0000FFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
        0000FF0000FF0000FFBFBFBF7F7F7F0000007F7F7FBFBFBF0000FF0000FF0000
        FFBFBFBFBFBFBF000000BFBFBF0000FF0000FF0000FFBFBFBFBFBFBF00000000
        0000000000BFBFBFBFBFBF0000FF0000FF0000FFBFBFBF000000BFBFBF0000FF
        0000FFBFBFBFBFBFBFBFBFBF7F7F7F0000007F7F7FBFBFBFBFBFBFBFBFBF0000
        FF0000FFBFBFBF0000000000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000FF0000FF0000000000FF0000FF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BF0000FF0000FF0000000000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F00
        00007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000000000FF0000FF
        BFBFBFBFBFBFBFBFBFBFBFBF00007F00000000007FBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF0000000000FF0000FFBFBFBFBFBFBFBFBFBFBFBFBF00000000
        0000000000BFBFBF0000FF0000FF0000FF0000FF0000FF000000BFBFBF0000FF
        0000FFBFBFBFBFBFBFBFBFBF000000000000000000BFBFBFBFBFBF0000FF0000
        FF0000FF0000FF000000BFBFBF0000FF0000FF0000FFBFBFBFBFBFBF00000000
        0000000000BFBFBFBFBFBFBFBFBF0000FF0000FF0000FF000000BFBFBFBFBFBF
        0000FF0000FF0000FFBFBFBF7F7F7F0000007F7F7FBFBFBF0000FF0000FF0000
        FF0000FF0000FF000000BFBFBFBFBFBFBFBFBF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FFBFBFBFBFBFBF0000FF000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBF0000FF0000FF0000FF0000FF0000FFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000}
    end
    object btSalvar: TBitBtn
      Left = 920
      Top = 12
      Width = 75
      Height = 33
      Caption = 'Salvar'
      TabOrder = 2
      OnClick = btSalvarClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333300003333330000000000000300003333330788888888880300003333
        330F77777777780300003333330F99777777780300003333330FFFFFFFFFF703
        0000333333000000000000030000333333333333333333330000333333333333
        33003333000033333333333330000333000030000000033300000033000030FF
        FFFF033333003333000030F4444F033333003333000030FFFFFF033338003333
        000030F4444F030000083333000030FFFFFF030000833333000030F44F000333
        33333333000030FFFF0033333333333300003000000333333333333300003333
        33333333333333330000}
    end
    object btEditar: TBitBtn
      Left = 840
      Top = 12
      Width = 75
      Height = 33
      Caption = 'Editar'
      TabOrder = 3
      OnClick = btEditarClick
      Glyph.Data = {
        F2060000424DF206000000000000360400002800000019000000190000000100
        080000000000BC020000C30E0000C30E00000001000000000000000000004000
        00006000000080000000A0000000C0000000E0000000FF000000008000004080
        00006080000080800000A0800000C0800000E0800000FF80000000C0000040C0
        000060C0000080C00000A0C00000C0C00000E0C00000FFC0000000FF000040FF
        000060FF000080FF0000A0FF0000C0FF0000E0FF0000FFFF0000000040004000
        40006000400080004000A0004000C0004000E0004000FF004000008040004080
        40006080400080804000A0804000C0804000E0804000FF80400000C0400040C0
        400060C0400080C04000A0C04000C0C04000E0C04000FFC0400000FF400040FF
        400060FF400080FF4000A0FF4000C0FF4000E0FF4000FFFF4000000060004000
        60006000600080006000A0006000C0006000E0006000FF006000008060004080
        60006080600080806000A0806000C0806000E0806000FF80600000C0600040C0
        600060C0600080C06000A0C06000C0C06000E0C06000FFC0600000FF600040FF
        600060FF600080FF6000A0FF6000C0FF6000E0FF6000FFFF6000000080004000
        80006000800080008000A0008000C0008000E0008000FF008000008080004080
        80006080800080808000A0808000C0808000E0808000FF80800000C0800040C0
        800060C0800080C08000A0C08000C0C08000E0C08000FFC0800000FF800040FF
        800060FF800080FF8000A0FF8000C0FF8000E0FF8000FFFF80000000A0004000
        A0006000A0008000A000A000A000C000A000E000A000FF00A0000080A0004080
        A0006080A0008080A000A080A000C080A000E080A000FF80A00000C0A00040C0
        A00060C0A00080C0A000A0C0A000C0C0A000E0C0A000FFC0A00000FFA00040FF
        A00060FFA00080FFA000A0FFA000C0FFA000E0FFA000FFFFA0000000C0004000
        C0006000C0008000C000A000C000C000C000E000C000FF00C0000080C0004080
        C0006080C0008080C000A080C000C080C000E080C000FF80C00000C0C00040C0
        C00060C0C00080C0C000A0C0C000C0C0C000E0C0C000FFC0C00000FFC00040FF
        C00060FFC00080FFC000A0FFC000C0FFC000E0FFC000FFFFC0000000E0004000
        E0006000E0008000E000A000E000C000E000E000E000FF00E0000080E0004080
        E0006080E0008080E000A080E000C080E000E080E000FF80E00000C0E00040C0
        E00060C0E00080C0E000A0C0E000C0C0E000E0C0E000FFC0E00000FFE00040FF
        E00060FFE00080FFE000A0FFE000C0FFE000E0FFE000FFFFE0000000FF004000
        FF006000FF008000FF00A000FF00C000FF00E000FF00FF00FF000080FF004080
        FF006080FF008080FF00A080FF00C080FF00E080FF00FF80FF0000C0FF0040C0
        FF0060C0FF0080C0FF00A0C0FF00C0C0FF00E0C0FF00FFC0FF0000FFFF0040FF
        FF0060FFFF0080FFFF00A0FFFF00C0FFFF00E0FFFF00FFFFFF00B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5000000B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5000000B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5000000B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5B5B5B5B5000000B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
        B5B5B5000000B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B500
        0000B5B50000000000000000000000000000B5B5B5B5B5B5B5B5B5000000B5B5
        00F8F8F8F8F8F8F8F8F8F8F8F800B5B5B5B5B5B5B5B5B5000000B5B500F8F8F8
        F8F8F8F8F8F8F8F8F800B5B5B5B5B5B5B5B5B5000000B5B500F8070707070707
        07070707F800B5B5B5B5B5B5040404000000B5B500F8F8F8F8F8F8F8F8F8F8F8
        F800000000000000000707000000B5B500F80707070707949494949490949090
        94949490940007000000B5B500F8F8F8F81F0000000000009490949094909494
        940007000000B5B500F8070707F8001F0400DE00949490949094949094000700
        0000B5B5B500F8F8F80000901F0400009490949094909494000004000000B5B5
        B5B5000000B500DEDE1F04049494949490940000B5B5B5000000B5B5B5B5B5B5
        B5B5000090901F04009490909400B5B5B5B5B5000000B5B5B5B5B5B5B5B5B5B5
        00DE901F0400949400B5B5B5B5B5B5000000B5B5B5B5B5B5B5B5B5B5B500DE90
        1F040400B5B5B5B5B5B5B5000000B5B5B5B5B5B5B5B5B5B5B5B50000001F0404
        B5B5B5B5B5B5B5000000B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B51F04B5B5B5B5
        B5B5B5000000B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B500
        0000B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5000000B5B5
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5000000B5B5B5B5B5B5
        B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5000000}
    end
    object btApagar: TBitBtn
      Left = 760
      Top = 12
      Width = 75
      Height = 33
      Caption = 'Apagar'
      TabOrder = 4
      OnClick = btApagarClick
      Glyph.Data = {
        B2050000424DB205000000000000360400002800000012000000130000000100
        0800000000007C010000C30E0000C30E00000001000000000000000000007B00
        0000BD000000FF0000007B7B000000FF0000FFFF000000315A0008427300084A
        730000007B007B007B00084A7B0008527B0021527B00007B7B007B7B7B00004A
        840008528400105284002963840008528C00085A8C00185A8C0018638C002963
        8C0008529400185A9400296B9400316B94002973940031739400085A9C001863
        9C0018739C0029739C0031739C0031849C00005AA5002173A5003973A500297B
        A500186BAD00106BB500317BB5002984B5004A8CB500086BBD000073BD001073
        BD001873BD00217BBD004284BD00318CBD004A8CBD005294BD005A9CBD00BDBD
        BD001073C600007BC600217BC600428CC6004A8CC6005A9CC6000084CE000884
        CE00398CCE005A9CCE00639CCE001884D6002184D600088CD600108CD6004294
        D600399CD6004A9CD600529CD6005A9CD6005AA5D60063ADD6001884DE002184
        DE00188CDE001094DE001894DE003194DE00299CDE004AA5DE005AA5DE004AB5
        DE00189CE700219CE700429CE7005AA5E7005AADE70063ADE7006BB5E70021A5
        EF0029A5EF0031A5EF0063B5EF006BBDEF0029ADF70031ADF7006BBDF7000000
        FF00FF00FF0031B5FF0039B5FF0042B5FF0039BDFF0042BDFF0042C6FF004AC6
        FF006BC6FF004ACEFF0052CEFF0052D6FF005ADEFF0063E7FF0000FFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00393939393939
        3939393939393939393939690000396939393939393939393939393939396939
        0000396969393910101010101010101010693939000039696969000000000000
        0000000069693939000039396969007879797978797979696939393900003939
        3969697903030303030379691039393900003939396969697978797979786969
        1039393900003939393969696903030369696900103939390000393939390069
        6969797869697900103939390000393939390079036969696903790010393939
        0000393939390079796969696978790010393939000039393939007903696969
        6900000010393939000039393939007869697900696979001039393900003939
        3939006969697900696969693939393900003939396969697978790079003969
        6939393900003969696969000000000000393939696939390000396969693939
        3939393939393939393969390000393939393939393939393939393939393969
        00003939393939393939393939393939393939390000}
    end
    object btNovo: TBitBtn
      Left = 680
      Top = 12
      Width = 75
      Height = 33
      Caption = 'Novo'
      TabOrder = 5
      OnClick = btNovoClick
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
        000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
        00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
        8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
        8888880BB088888888888800008888888888}
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1167
    Height = 695
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 14
      Height = 13
      Caption = 'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 72
      Top = 8
      Width = 28
      Height = 13
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 150
      Top = 8
      Width = 28
      Height = 13
      Caption = 'Hora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 126
      Width = 111
      Height = 13
      Caption = 'C.P.F. / C.N.P.J. **'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 164
      Width = 103
      Height = 13
      Caption = 'Nome da Empresa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 48
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
    object Label8: TLabel
      Left = 138
      Top = 86
      Width = 36
      Height = 13
      Caption = 'R.G. *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 225
      Top = 86
      Width = 116
      Height = 13
      Caption = 'Data de Nascimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 86
      Width = 89
      Height = 13
      Caption = 'Tipo de Pessoa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btPesquisar: TSpeedButton
      Left = 344
      Top = 180
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        333333773337777333333078F8F87033333337F3333337F33333778F8F8F8773
        333337333333373F333307F8F8F8F70333337F33FFFFF37F3333078999998703
        33337F377777337F333307F8F8F8F703333373F3333333733333778F8F8F8773
        333337F3333337F333333078F8F870333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      OnClick = btPesquisarClick
    end
    object Label12: TLabel
      Left = 421
      Top = 272
      Width = 331
      Height = 24
      Caption = 'FORNECEDORES CADASTRADOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 184
      Top = 502
      Width = 115
      Height = 24
      Caption = 'CONTATOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object sbEditar: TSpeedButton
      Left = 6
      Top = 665
      Width = 23
      Height = 22
      Hint = 'Editar contato'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbEditarClick
    end
    object sbExcluir: TSpeedButton
      Left = 32
      Top = 665
      Width = 23
      Height = 22
      Hint = 'Excluir contato'
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888888888888888889800008898888888888888898800008899
        88777777777798880000889990000000000998880000888990BFFFBFFF998888
        0000888899FCCCCCCF97888800008888999FBFFFB9978888000088888999CCC9
        990788880000888880999FB99F0788880000888880FC9999CF07888800008888
        80FF9999BF0788880000888880FC9999000788880000888880B99F099F078888
        0000888880999F099998888800008888999FBF0F089988880000889999000000
        8889988800008899988888888888898800008888888888888888889800008888
        88888888888888880000}
      ParentShowHint = False
      ShowHint = True
      OnClick = sbExcluirClick
    end
    object cbTipo: TComboBox
      Left = 8
      Top = 102
      Width = 125
      Height = 21
      DropDownCount = 2
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 4
      Text = 'PESSOA JUR'#205'DICA'
      OnChange = cbTipoChange
      Items.Strings = (
        'PESSOA F'#205'SICA'
        'PESSOA JUR'#205'DICA')
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 301
      Width = 1151
      Height = 193
      TabStop = False
      Align = alCustom
      DataSource = dm.dsFornecedores
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Alignment = taCenter
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
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEFORNECEDOR'
          Title.Alignment = taCenter
          Title.Caption = 'FORNECEDOR'
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
          Title.Alignment = taCenter
          Title.Caption = 'NOME DA EMPRESA'
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
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RG'
          Title.Alignment = taCenter
          Title.Caption = 'R.G.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATANASCIMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'DT NASC'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGOEMPRESA'
          Visible = False
        end>
    end
    object edID: TEdit
      Left = 8
      Top = 24
      Width = 57
      Height = 21
      Color = clMoneyGreen
      Enabled = False
      TabOrder = 0
    end
    object edNomeEmpresa: TEdit
      Left = 56
      Top = 180
      Width = 289
      Height = 21
      CharCase = ecUpperCase
      Color = clMoneyGreen
      Enabled = False
      TabOrder = 8
    end
    object edNomeFornecedor: TEdit
      Left = 8
      Top = 64
      Width = 289
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object edData: TMaskEdit
      Left = 72
      Top = 24
      Width = 72
      Height = 21
      Color = clMoneyGreen
      Enabled = False
      TabOrder = 1
    end
    object edHora: TMaskEdit
      Left = 150
      Top = 24
      Width = 72
      Height = 21
      Color = clMoneyGreen
      Enabled = False
      TabOrder = 2
    end
    object edRG: TMaskEdit
      Left = 138
      Top = 102
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object edNumeroDocumento: TMaskEdit
      Left = 8
      Top = 142
      Width = 120
      Height = 21
      TabOrder = 7
      OnKeyPress = edNumeroDocumentoKeyPress
    end
    object edDataNascimento: TDateTimePicker
      Left = 225
      Top = 102
      Width = 97
      Height = 20
      Date = 43695.449436886570000000
      Time = 43695.449436886570000000
      TabOrder = 6
    end
    object gbContatos: TGroupBox
      Left = 8
      Top = 204
      Width = 337
      Height = 61
      Caption = 'Contatos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      object Label10: TLabel
        Left = 8
        Top = 16
        Width = 45
        Height = 13
        Caption = 'Contato'
      end
      object Label11: TLabel
        Left = 182
        Top = 16
        Width = 51
        Height = 13
        Caption = 'Telefone'
      end
      object sbSalvar: TSpeedButton
        Left = 280
        Top = 31
        Width = 23
        Height = 22
        Hint = 'Incluir / Salvar contato'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = sbSalvarClick
      end
      object sbCancelar: TSpeedButton
        Left = 306
        Top = 31
        Width = 23
        Height = 22
        Hint = 'Cancelar contato'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = sbCancelarClick
      end
      object edNomeContato: TEdit
        Left = 8
        Top = 32
        Width = 169
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edFoneContato: TMaskEdit
        Left = 182
        Top = 32
        Width = 93
        Height = 21
        CharCase = ecUpperCase
        EditMask = '!\(99\)99999-9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 14
        ParentFont = False
        TabOrder = 1
        Text = '(  )     -    '
      end
    end
    object DBGrid2: TDBGrid
      Left = 7
      Top = 530
      Width = 354
      Height = 133
      DataSource = dm.dsContatos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 11
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
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'IDFORNECEDOR'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TELEFONE'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTATO'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object edIdContato: TEdit
      Left = 352
      Top = 216
      Width = 41
      Height = 21
      TabOrder = 12
      Visible = False
    end
    object edIdFornecedorContato: TEdit
      Left = 352
      Top = 240
      Width = 41
      Height = 21
      TabOrder = 13
      Visible = False
    end
    object edCodigoEmpresa: TEdit
      Left = 8
      Top = 180
      Width = 51
      Height = 21
      TabStop = False
      Color = clMoneyGreen
      Enabled = False
      TabOrder = 14
    end
    object GroupBox1: TGroupBox
      Left = 505
      Top = 4
      Width = 656
      Height = 58
      Caption = 'Observa'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      object Label14: TLabel
        Left = 6
        Top = 15
        Width = 643
        Height = 18
        AutoSize = False
        Caption = 
          '- * Quando informar o R.G., os dados podem ser separados conform' +
          'e necessidade, usando pontos, barras, etc.'
        WordWrap = True
      end
      object Label15: TLabel
        Left = 6
        Top = 36
        Width = 641
        Height = 13
        AutoSize = False
        Caption = '- ** Quando informar C.P.F. /  C.N.P.J., informar apenas n'#250'meros'
        WordWrap = True
      end
    end
  end
end
