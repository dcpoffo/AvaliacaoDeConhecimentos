unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls, Buttons;

type
  TfrmPrincipal = class(TForm)
    meu: TMainMenu;
    Arquivo1: TMenuItem;
    Sair1: TMenuItem;
    Fornecedores2: TMenuItem;
    Cadastro2: TMenuItem;
    Relatrio1: TMenuItem;
    Empresa1: TMenuItem;
    Cadastrar1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Cadastro2Click(Sender: TObject);
    procedure Cadastrar1Click(Sender: TObject);
    procedure Relatrio1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses UDM, UCadastroEmpresa, UCadastroFornecedor, UPesquisaEmpresa,
  UListaFornecedores, DateUtils;

{$R *.dfm}

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmPrincipal.Cadastro2Click(Sender: TObject);
begin
    frmCadastroFornecedores.ShowModal;
end;

procedure TfrmPrincipal.Cadastrar1Click(Sender: TObject);
begin
    frmCadastroEmpresa.ShowModal;
end;

procedure TfrmPrincipal.Relatrio1Click(Sender: TObject);
begin
      frmListaFornecedores.ShowModal;
end;

end.
