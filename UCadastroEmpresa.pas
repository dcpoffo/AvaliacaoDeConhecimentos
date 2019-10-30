unit UCadastroEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, Mask, Grids, DBGrids, DB,
  IBCustomDataSet, IBQuery;

type
  TfrmCadastroEmpresa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btSair: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btCancelar: TBitBtn;
    btSalvar: TBitBtn;
    btApagar: TBitBtn;
    btEditar: TBitBtn;
    edNomeFantasia: TEdit;
    edUF: TComboBox;
    edCNPJ: TMaskEdit;
    btNovo: TBitBtn;
    DBGrid1: TDBGrid;
    qProcuraCNPJ: TIBQuery;
    Label12: TLabel;
    edCodigo: TEdit;
    procedure btSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btApagarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure LimpaTela;
    procedure HabilitaCampos;
    Procedure DesabilitaCampos;
    Procedure Atualiza;
    Procedure MostraBotoes;
  end;

var
  frmCadastroEmpresa: TfrmCadastroEmpresa;
  novo: Boolean;
  nomeEmpresa: string;  //guarda o nome da empresa para fins de atualizacao


implementation

uses UDM;

{$R *.dfm}
procedure TfrmCadastroEmpresa.MostraBotoes;
begin
    //Atualiza;
    if dm.qEmpresa.RecordCount = 0 then
    begin
        btApagar.Enabled:= false;
        btEditar.Enabled:= false;
    end else
    begin
        btApagar.Enabled:= true;
        btEditar.Enabled:= true;
    end;
    btNovo.Enabled:= true;
    btCancelar.Enabled:= false;
    btSalvar.Enabled:= false;
    btSair.Enabled:= true;
end;

//atualiza grid de empresas cadastradas
procedure TfrmCadastroEmpresa.Atualiza;
begin
    with dm.qEmpresa do
    begin
        Close;
        SQL.Clear;
        SQL.Add('select * from empresa order by codigo');
        Open;
    end;             
end;

//desabilita campos
procedure TfrmCadastroEmpresa.DesabilitaCampos;
begin
    edUF.Enabled:= false;
    edNomeFantasia.Enabled:= false;
    edCNPJ.Enabled:= false;
end;

//habilita campos
procedure TfrmCadastroEmpresa.HabilitaCampos;
begin
    edUF.Enabled:= true;
    edNomeFantasia.Enabled:= true;

    if novo then
    begin
        edCNPJ.Enabled:= true;
        edCNPJ.Color:= clWindow;
        edUF.Enabled:= true;
        edUF.Color:= clWindow;
    end
    else
    begin
        edCNPJ.Enabled:= false;
        edCNPJ.Color:= clMoneyGreen;
        edUF.Enabled:= false;
        edUF.Color:= clMoneyGreen;
    end
end;

//limpa tela
procedure TfrmCadastroEmpresa.LimpaTela;
begin
    edNomeFantasia.Clear;
    edCNPJ.Clear;
    edCodigo.Clear;
    edUF.ItemIndex:= -1;
end;

procedure TfrmCadastroEmpresa.btSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCadastroEmpresa.FormShow(Sender: TObject);
begin
    LimpaTela;
    Atualiza;

    //desabilita botoes conforme a quantidade de registros na tabela empresa
    MostraBotoes;


    //btNovo.Enabled:= true;
    //btCancelar.Enabled:= false;
    //btSalvar.Enabled:= false;
    DesabilitaCampos;
    novo:= true;
    //edUF.ItemIndex:= -1;
end;

procedure TfrmCadastroEmpresa.btNovoClick(Sender: TObject);
begin
    HabilitaCampos;
    LimpaTela;
    btNovo.Enabled:= false;
    btApagar.Enabled:= false;
    btEditar.Enabled:= false;
    btSalvar.Enabled:= true;
    btSair.Enabled:= false;
    btCancelar.Enabled:= true;
    btSair.Enabled:= false;
    edCNPJ.SetFocus;
    //edUF.ItemIndex:= -1;

    // pega o ultimo valor de id inserido em empresa
    with dm.qCodigo do
    begin
        SQL.Clear;
        SQL.Add('select max(codigo) as codigo from empresa');
        Open;
    end;

    // recebe o ultomo id + 1 como proximo id a ser inserido
    edCodigo.Text:= inttostr(dm.qCodigo.fieldbyname('codigo').AsInteger + 1);
    nomeEmpresa:= '';
end;

procedure TfrmCadastroEmpresa.btCancelarClick(Sender: TObject);
begin
    MostraBotoes;

    btNovo.Enabled:= true;
    btCancelar.Enabled:= false;
    btSalvar.Enabled:= false;
    btSair.Enabled:= true;
    edUF.ItemIndex:= -2;

    //aponta para o registro que estava setado
    dm.qEmpresa.Locate('codigo',edCodigo.Text, []);
    LimpaTela;

    DesabilitaCampos;
    novo:= true;
    edCNPJ.Color:= clWindow;
    edUF.Color:= clWindow;

    nomeEmpresa:= '';
    dm.IBTransacao.RollbackRetaining;
end;

procedure TfrmCadastroEmpresa.btSalvarClick(Sender: TObject);
var
    erro, chavePrimaria, alterou: Boolean;
    codigo: string;
begin
    //armazena o codigo da empresa cadastrada
    codigo:= edCodigo.Text;

    erro:= false;
    chavePrimaria:= false; //cnpj ja inserido
    alterou:= false; //nome da empresa

    //verifica se foi preenchido o nome fantasia
    if (edNomeFantasia.Text = '') then
    begin
        Messagedlg('O Nome da empresa deve ser preenchido', mtError,[mbok],0);
        edNomeFantasia.SetFocus;
        exit;
    end;

    //verifica se foi preenchido o cnpj
    if (edCNPJ.Text = '') then
    begin
        MessageDlg('O C.N.P.J. da empresa deve ser preenchido', mtError,[mbok],0);
        edCNPJ.SetFocus;
        exit;
    end;

    dm.qEmpresa.Close;
    dm.qEmpresa.SQL.Clear;

    //se for novo registro, insere os dados
    if novo then
    begin
        dm.qEmpresa.SQL.Add('insert into empresa (cnpj, uf, nomefantasia, codigo) '+
                            'values (:cnpj, :uf, :nomefantasia, :codigo)');
    end else
    begin
        //se nome da empresa foi alterado, "flega" para fazer update
        if (nomeEmpresa <> edNomeFantasia.Text) then
        begin
            alterou:= true;
        end else
        begin
            alterou:= false;
        end;

        // se estiver editando, faz update
        dm.qEmpresa.SQL.Add('update empresa set ' +
                            'uf = :uf, ' +
                            'nomefantasia = :nomefantasia, ' +
                            'codigo = :codigo ' +
                            'where cnpj = :cnpj ');
    end;

    //passagem de parametros
    dm.qEmpresa.ParamByName('cnpj').AsString:= edCNPJ.Text;
    dm.qEmpresa.ParamByName('uf').AsString:= edUF.Text;
    dm.qEmpresa.ParamByName('nomefantasia').AsString:= edNomeFantasia.Text;
    dm.qEmpresa.ParamByName('codigo').AsInteger:= StrToInt(edCodigo.Text);

    try
        try
            dm.qEmpresa.ExecSQL;
            erro:= false;
        Except
            on e:exception do
            begin
                chavePrimaria:= true;
                erro:= true;
            end;
        end;
    finally
        if erro then
        begin
            if novo then
            begin

                if chavePrimaria then
                    // verifica cnpj ja cadastrado
                    Messagedlg('Erro ao cadastrar empresa. Já existe uma empresa cadastrada com esse C.N.P.J.', mtError,[mbok],0)
                else
                    Messagedlg('Erro ao cadastrar empresa', mtError,[mbok],0);
            end
            else
                Messagedlg('Erro ao atualizar empresa', mtError,[mbok],0);
            Atualiza;
        end
        else
            begin

                if novo then
                    Messagedlg('Empresa cadastrada com sucesso!', mtInformation,[mbok],0)
                else
                begin
                    //atualizar nome da empresa em fornecedores
                    if alterou then
                    begin
                        dm.qFornecedores.Close;
                        dm.qFornecedores.SQL.Clear;
                        dm.qFornecedores.SQL.Add('update fornecedor set nomeempresa = :nomeempresa where codigoempresa = :codigoempresa');
                        dm.qFornecedores.ParamByName('nomeempresa').AsString:= edNomeFantasia.Text;
                        dm.qFornecedores.ParamByName('codigoempresa').AsInteger:= StrToint(edCodigo.Text);
                        dm.qFornecedores.ExecSQL;
                        MessageDlg('Cadastro alterado com sucesso!' + #13 +
                                    inttostr(dm.qFornecedores.RowsAffected) +
                                    ' nome(s) de empresa(s) alterado(s) em Cadastro de Fornecedores', mtInformation,[mbok],0);
                    end else
                    begin
                        MessageDlg('Cadastro alterado com sucesso!', mtInformation,[mbok],0);
                    end
                end;
                //grava no banco
                dm.IBTransacao.CommitRetaining;

                // atualiza a tabela gravada
                Atualiza;

                //aponta para o registro que estava setado
                dm.qEmpresa.Locate('codigo',codigo, []);

                // mostra os botoes necessarios
                MostraBotoes;

                LimpaTela;
                DesabilitaCampos;
            end;
    end;
    novo:= true;
    //Atualiza;
    edCNPJ.Color:= clWindow;
    edUF.ItemIndex:= -2;
    nomeEmpresa:= '';
end;

procedure TfrmCadastroEmpresa.btApagarClick(Sender: TObject);
var
    erro: Boolean;
    cnpjApagar: string;
begin
    if MessageDlg('Deseje realmente apagar?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
        erro:= false;
        cnpjApagar:= dm.qEmpresa.fieldbyname('cnpj').AsString;
        dm.qEmpresa.Close;
        dm.qEmpresa.SQL.Clear;
        dm.qEmpresa.SQL.Add('delete from empresa where cnpj = :cnpj');
        dm.qEmpresa.ParamByName('cnpj').AsString:= cnpjApagar;

        try
            try
                dm.qEmpresa.ExecSQL;
                erro:= false;
            except
                erro:= true;
            end;
        finally
            if erro then
                messagedlg('Não foi possivel apagar a empresa cadastrada', mtError,[mbok],0)
            else
            begin
                dm.IBTransacao.CommitRetaining;
                Atualiza;

                MostraBotoes;

                btNovo.Enabled:= true;
                btCancelar.Enabled:= false;
                btSalvar.Enabled:= false;
                btSair.Enabled:= true;

                DesabilitaCampos;
                messagedlg('Empresa apagada com sucesso!', mtInformation,[mbok],0)
            end
        end;
    end;

    novo:= true;
end;

procedure TfrmCadastroEmpresa.btEditarClick(Sender: TObject);
begin
    novo:= false;
    //joga os dados do registro editado nos campos da tela
    edCodigo.Text:= IntToStr(dm.qEmpresa.fieldbyname('codigo').AsInteger);
    edCNPJ.Text:= dm.qEmpresa.fieldbyname('cnpj').AsString;
    edUF.Text:= dm.qEmpresa.fieldbyname('uf').AsString;
    edNomeFantasia.Text:= dm.qEmpresa.fieldbyname('nomefantasia').AsString;

    HabilitaCampos;
    btNovo.Enabled:= false;
    btApagar.Enabled:= false;
    btEditar.Enabled:= false;
    btSalvar.Enabled:= true;
    btCancelar.Enabled:= true;
    btSair.Enabled:= false;
    nomeEmpresa:= edNomeFantasia.Text;
end;

end.
