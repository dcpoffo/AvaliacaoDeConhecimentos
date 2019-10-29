unit UPesquisaEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfrmPesquisaEmpresa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    edNomeEmpresa: TEdit;
    Label1: TLabel;
    btCancelar: TBitBtn;
    btSelecionar: TBitBtn;
    tabela: TDBGrid;
    btNovo: TBitBtn;
    procedure edNomeEmpresaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edNomeEmpresaChange(Sender: TObject);
    procedure tabelaDblClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaEmpresa: TfrmPesquisaEmpresa;

implementation

uses UDM, UCadastroFornecedor, UCadastroEmpresa;

{$R *.dfm}

procedure TfrmPesquisaEmpresa.edNomeEmpresaKeyPress(Sender: TObject;
  var Key: Char);
begin
    //se pressionado o ENTER, procura pelo texto
    if (key = #13) then
    begin
        dm.qEmpresa.Close;
        dm.qEmpresa.SQL.Clear;
        dm.qEmpresa.SQL.Add('select * from empresa where nomefantasia like '''+ edNomeEmpresa.Text+'%''');
        dm.qEmpresa.Open
    end;
end;

procedure TfrmPesquisaEmpresa.FormShow(Sender: TObject);
begin
    edNomeEmpresa.Clear;
    try
        edNomeEmpresa.SetFocus;
    Except
    end;
end;

procedure TfrmPesquisaEmpresa.edNomeEmpresaChange(Sender: TObject);
begin
    // motra todos os dados, caso campo esteja vazio
    if (edNomeEmpresa.Text = '') then
    begin
        dm.qEmpresa.Close;
        dm.qEmpresa.SQL.Clear;
        dm.qEmpresa.SQL.Add('select * from empresa');
        dm.qEmpresa.Open
    end;
end;

procedure TfrmPesquisaEmpresa.tabelaDblClick(Sender: TObject);
begin
    btSelecionar.Click;
end;

procedure TfrmPesquisaEmpresa.btNovoClick(Sender: TObject);
begin
    frmCadastroEmpresa.ShowModal;
end;

end.
