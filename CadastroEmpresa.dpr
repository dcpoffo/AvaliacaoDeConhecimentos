program CadastroEmpresa;

{%ToDo 'CadastroEmpresa.todo'}

uses
  Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  UDM in 'UDM.pas' {dm: TDataModule},
  UCadastroEmpresa in 'UCadastroEmpresa.pas' {frmCadastroEmpresa},
  UCadastroFornecedor in 'UCadastroFornecedor.pas' {frmCadastroFornecedores},
  UPesquisaEmpresa in 'UPesquisaEmpresa.pas' {frmPesquisaEmpresa},
  UListaFornecedores in 'UListaFornecedores.pas' {frmListaFornecedores},
  URelatorio in 'URelatorio.pas' {frmRelatorioFornecedores};


{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadastroEmpresa, frmCadastroEmpresa);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmCadastroEmpresa, frmCadastroEmpresa);
  Application.CreateForm(TfrmCadastroFornecedores, frmCadastroFornecedores);
  Application.CreateForm(TfrmPesquisaEmpresa, frmPesquisaEmpresa);
  Application.CreateForm(TfrmListaFornecedores, frmListaFornecedores);
  Application.CreateForm(TfrmRelatorioFornecedores, frmRelatorioFornecedores);
  Application.Run;
end.
