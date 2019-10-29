unit UListaFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Mask;

type
  TfrmListaFornecedores = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edNome: TEdit;
    Label2: TLabel;
    edDocumento: TEdit;
    Label3: TLabel;
    btAplicarFiltro: TBitBtn;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    btLimparFiltro: TBitBtn;
    edData: TMaskEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btVisualizar: TBitBtn;
    btSair: TBitBtn;
    procedure btAplicarFiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btLimparFiltroClick(Sender: TObject);
    procedure edDocumentoKeyPress(Sender: TObject; var Key: Char);
    procedure edDataKeyPress(Sender: TObject; var Key: Char);
    procedure edNomeKeyPress(Sender: TObject; var Key: Char);
    procedure btSairClick(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListaFornecedores: TfrmListaFornecedores;

implementation

uses UDM, DB, URelatorio;

{$R *.dfm}

procedure TfrmListaFornecedores.btAplicarFiltroClick(Sender: TObject);
var
    texto, nome, documento, data: string;
begin

    //procedimento para filtrar registros
    with dm.qPesquisaFornecedor do
    begin
        texto:= '';
        documento:= '';

        Close;
        sql.Clear;
        texto:= texto + 'select * from fornecedor where ';

        //filtra por nome do fornecedor
        if edNome.Text <> '' then
        begin
            nome:= edNome.Text;
            texto:= texto + 'nomefornecedor like ''%'+ nome +'%'' and ';
        end;

        //filtra por numero do documento
        if edDocumento.Text <> '' then
        begin
            documento:= edDocumento.Text;
            texto:= texto + 'documento = '''+ documento + ''' and ';
        end;

        //filtra por data de cadastro
        if edData.Text <> '' then
        begin
            // troca as barras ppor pontos no campo data
            data:= StringReplace(edData.Text,'/','.',[rfReplaceAll,rfIgnoreCase]);

            //verifica se adata informada para filtro esta correta
            if Length(data) <> 10 then
            begin
                messagedlg('A data informada está incorreta', mtError,[mbok],0);
                edData.SetFocus;
                exit;
            end else
            begin
                texto:= texto + 'data = '''+ data + ''' and ';
            end;
        end;

        //se nenhum filtro foi usado, pega todos os dados
        if (nome = '') and (documento = '') and (data = '') then
        begin
            texto:= texto + 'id is not null order by id';
        end else
        begin
            texto:= texto + 'id is not null order by id';
        end;

        sql.Add(''+texto+'');
        Open;
    end;
end;

procedure TfrmListaFornecedores.FormShow(Sender: TObject);
begin
    btLimparFiltro.Click;
end;

procedure TfrmListaFornecedores.btLimparFiltroClick(Sender: TObject);
begin
    //limpa os filtros
    edNome.Clear;
    edDocumento.Clear;
    edData.Clear;
    edNome.SetFocus;
    dm.qPesquisaFornecedor.Close;
end;

procedure TfrmListaFornecedores.edDocumentoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if (key = #13) then
        btAplicarFiltro.Click;
end;

procedure TfrmListaFornecedores.edDataKeyPress(Sender: TObject;
  var Key: Char);
begin
    if (key = #13) then
        btAplicarFiltro.Click;
end;

procedure TfrmListaFornecedores.edNomeKeyPress(Sender: TObject;
  var Key: Char);
begin
    if (key = #13) then
        btAplicarFiltro.Click;
end;

procedure TfrmListaFornecedores.btSairClick(Sender: TObject);
begin
    close;
end;

procedure TfrmListaFornecedores.btVisualizarClick(Sender: TObject);
begin
    //procedimento para chamar o relatorio
    if (dm.qPesquisaFornecedor.RecordCount = 0) then
    begin
        messagedlg('Não há informações para serem listadas', mtError,[mbok],0);
    end else
    begin
        frmRelatorioFornecedores.Relatorio.Preview;
    end;
end;

end.
