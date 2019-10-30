object frmPrincipal: TfrmPrincipal
  Left = 384
  Top = 144
  Align = alClient
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Tela Principal'
  ClientHeight = 505
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = meu
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object meu: TMainMenu
    Left = 208
    Top = 16
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Fornecedores2: TMenuItem
      Caption = 'Fornecedores'
      object Cadastro2: TMenuItem
        Caption = 'Cadastro'
        OnClick = Cadastro2Click
      end
      object Relatrio1: TMenuItem
        Caption = 'Relat'#243'rio'
        OnClick = Relatrio1Click
      end
    end
    object Empresa1: TMenuItem
      Caption = 'Empresa'
      object Cadastrar1: TMenuItem
        Caption = 'Cadastrar'
        OnClick = Cadastrar1Click
      end
    end
    object Contato1: TMenuItem
      Caption = 'Outros'
      object Contato2: TMenuItem
        Caption = 'Contato'
        OnClick = Contato2Click
      end
    end
  end
end
