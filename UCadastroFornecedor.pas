unit UCadastroFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Mask, ComCtrls, DateUtils,
  DBCtrls;

type
  TfrmCadastroFornecedores = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btSair: TBitBtn;
    btCancelar: TBitBtn;
    btSalvar: TBitBtn;
    btEditar: TBitBtn;
    btApagar: TBitBtn;
    btNovo: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cbTipo: TComboBox;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    edID: TEdit;
    edNomeEmpresa: TEdit;
    edNomeFornecedor: TEdit;
    edData: TMaskEdit;
    edHora: TMaskEdit;
    edRG: TMaskEdit;
    edNumeroDocumento: TMaskEdit;
    btPesquisar: TSpeedButton;
    edDataNascimento: TDateTimePicker;
    gbContatos: TGroupBox;
    DBGrid2: TDBGrid;
    Label10: TLabel;
    Label11: TLabel;
    edNomeContato: TEdit;
    edFoneContato: TMaskEdit;
    sbSalvar: TSpeedButton;
    sbCancelar: TSpeedButton;
    Label12: TLabel;
    Label13: TLabel;
    sbEditar: TSpeedButton;
    sbExcluir: TSpeedButton;
    edIdContato: TEdit;
    edIdFornecedorContato: TEdit;
    edCodigoEmpresa: TEdit;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    procedure btSairClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure cbTipoChange(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btApagarClick(Sender: TObject);
    procedure sbCancelarClick(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
    procedure sbExcluirClick(Sender: TObject);
    procedure sbEditarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure HabilitaCampos;
    procedure DesabilitaCampos;
    procedure LimpaTela;
    procedure Atualiza;
    //procedure CalcularIdade;
    function CalcularIdade(dtAtual: TDate; dtNasc: TDate): boolean;
    procedure AtualizaContato;
  end;

var
  frmCadastroFornecedores: TfrmCadastroFornecedores;
  novo, // pra ver se é novo registro. se for novo, insere o registro. se estiver editando, faz update
  editar: boolean; // pra ver se esta editando contato
  maiorIdade, estadoParana: boolean;

implementation

uses UDM, UPesquisaEmpresa, DB, IBQuery;

{$R *.dfm}

procedure TfrmCadastroFornecedores.AtualizaContato;
begin
    dm.qContatos.Close;
    dm.qContatos.SQL.Clear;
    if novo then
        dm.qContatos.SQL.Add('select * from contato where idfornecedor = '+ edID.Text +'')
    else
        dm.qContatos.SQL.Add('select * from contato where idfornecedor = '+ dm.qFornecedores.FieldByName('id').AsString +'');

    dm.qContatos.Open;
    //novo:= false;

    if editar then
    begin
        // verifica se há contatos cadastrados, habilitando/desabilitando botões necessários
        if dm.qContatos.RecordCount = 0 then
        begin
            sbExcluir.Enabled:= false;
            sbEditar.Enabled:= false;
        end else
        begin
            sbExcluir.Enabled:= true;
            sbEditar.Enabled:= true;
        end;
        sbCancelar.Enabled:= true;
        sbSalvar.Enabled:= true;
    end;
end;

// verifica se maior/menor de 18 anos
function TfrmCadastroFornecedores.CalcularIdade(dtAtual: TDate; dtNasc: TDate): boolean;
var
    anoAtual, mesAtual, diaAtual: word;
    anoNascimento, mesNascimento, diaNascimento: word;
begin
    // separa o dia/mes/ano das datas
    DecodeDate(dtAtual,anoAtual,mesAtual,diaAtual);
    DecodeDate(dtNasc, anoNascimento, mesNascimento,diaNascimento);

    if ((anoAtual-anoNascimento) > 18) then
    begin
        Result:= true;
        exit;
    end
    else
        if ((anoAtual-anoNascimento) < 18) then
        begin
            Result:= false;
            exit
        end
        else
            //<> entre os anos = 18
            // <> = 18 mas mes atual é menor que mes nascimento
            if (mesAtual < mesNascimento) then
            begin
                Result:= false;
                exit;
            end
            else
                // <> = 18 mas mes atual é maior que mes nascimento
                if (mesAtual > mesNascimento) then
                begin
                    Result:= true;
                    exit;
                end
                else
                // os meses sao iguais
                // os meses sao iguais mas o dia atual é menor que o dia nascimento
                    if (diaAtual < diaNascimento) then
                    begin
                        Result:= false;
                        exit;
                    end
                    else
                    //os meses sao iguais mas o dia atual é maior que o dia nascimento
                    //if (mesAtual >= mesNascimento) then
                    begin
                        Result:= true;
                        exit;
                    end;
end;

procedure TfrmCadastroFornecedores.Atualiza;
begin
    dm.qFornecedores.Close;
    dm.qFornecedores.SQL.Clear;
    dm.qFornecedores.SQL.Add('select * from fornecedor order by id');
    dm.qFornecedores.Open;
end;


procedure TfrmCadastroFornecedores.HabilitaCampos;
begin
    edNomeFornecedor.Enabled:= true;
    cbTipo.Enabled:= true;

    if novo then
    begin
        edRG.Enabled:= true;
        edDataNascimento.Enabled:= true;
    end
    else
    begin
        if (cbTipo.Text = 'PESSOA FÍSICA') then
        begin
            edRG.Enabled:= true;
            edDataNascimento.Enabled:= true;
        end
        else
        begin
            edRG.Enabled:= false;
            edDataNascimento.Enabled:= false;
        end;
    end;

    edNumeroDocumento.Enabled:= true;
    btPesquisar.Enabled:= true;
    edNomeContato.Enabled:= true;
    edFoneContato.Enabled:= true;
    sbSalvar.Enabled:= true;
    sbCancelar.Enabled:= true;
    sbEditar.Enabled:= true;
    sbExcluir.Enabled:= true;
end;

procedure TfrmCadastroFornecedores.DesabilitaCampos;
begin
    edNomeFornecedor.Enabled:= false;
    cbTipo.Enabled:= false;
    edRG.Enabled:= false;;
    edDataNascimento.Enabled:= false;
    edNumeroDocumento.Enabled:= false;
    btPesquisar.Enabled:= false;
    edNomeContato.Enabled:= false;
    edFoneContato.Enabled:= false;
    sbSalvar.Enabled:= false;
    sbCancelar.Enabled:= false;
    sbEditar.Enabled:= false;
    sbExcluir.Enabled:= false;
end;

procedure TfrmCadastroFornecedores.LimpaTela;
begin
    edID.Clear;
    edData.Clear;
    edHora.Clear;
    edNomeFornecedor.Clear;

    edRG.Clear;
    edNumeroDocumento.Clear;
    edNomeEmpresa.Clear;
    edNumeroDocumento.EditMask:= '';
    cbTipo.Text:= '';
    edDataNascimento.Date:= now;
    edCodigoEmpresa.Clear;
end;

procedure TfrmCadastroFornecedores.btSairClick(Sender: TObject);
begin
    close;
end;

procedure TfrmCadastroFornecedores.btPesquisarClick(Sender: TObject);
begin
    // abre formulario para procurar empresas. tambem é possível cadastrar novas
    estadoParana:= false;
    frmPesquisaEmpresa.ShowModal;
    if frmPesquisaEmpresa.ModalResult = mrOK then
    begin
        edNomeEmpresa.Text:= frmPesquisaEmpresa.tabela.Columns.Items[2].Field.Text;
        edCodigoEmpresa.Text:= frmPesquisaEmpresa.tabela.Columns.Items[3].Field.Text;
    end
end;

procedure TfrmCadastroFornecedores.FormShow(Sender: TObject);
begin

    LimpaTela;
    //atualiza tabela de fornecedores cadastrados
    Atualiza;

    // verifica se há fornecedores cadastrados, habilitando/desabilitando botões necessários
    if dm.qFornecedores.RecordCount = 0 then
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

    //chamar procedimento para desabilitar campos
    DesabilitaCampos;

    novo:= true;
end;

procedure TfrmCadastroFornecedores.btCancelarClick(Sender: TObject);
begin
    novo:= true;
    DBGrid1.Enabled:= true;
    //clica no botao cancelar contato
    sbCancelar.Click;

    // caso tenha sido cancelada a edicao/inclusao de um novo fornecedor, desfaz alteracoes
    dm.IBTransacao.RollbackRetaining;

    Atualiza;

    //atualiza tabela do contatos, para o fornecedor apontado
    AtualizaContato;

    // verifica se há fornecedores cadastrados, habilitando/desabilitando botões necessários
    if dm.qFornecedores.RecordCount = 0 then
    begin
        btApagar.Enabled:= false;
        btEditar.Enabled:= false;
    end else
    begin
        btApagar.Enabled:= true;
        btEditar.Enabled:= true;
    end;

    // habilita/desabilita botos dos contatos
    btNovo.Enabled:= true;
    btCancelar.Enabled:= false;
    btSalvar.Enabled:= false;
    btSair.Enabled:= true;
    btPesquisar.Enabled:= false;

    //aponta para o registro setado
    dm.qFornecedores.Locate('id',edID.Text, []);

    LimpaTela;
    DesabilitaCampos;
    //novo:= true;

    //altera a cor de alguns campos que nao podem ser editados
    cbTipo.Color:= clWindow;
    edRG.Color:= clWindow;
    edNumeroDocumento.Color:= clWindow;
end;

procedure TfrmCadastroFornecedores.btNovoClick(Sender: TObject);
begin
    novo:= true;    // novo cadastro de fornecedor
    HabilitaCampos;
    sbEditar.Enabled:= false;
    sbExcluir.Enabled:= false;
    
    LimpaTela;
    btNovo.Enabled:= false;
    btApagar.Enabled:= false;
    btEditar.Enabled:= false;
    btSalvar.Enabled:= true;
    btSair.Enabled:= false;
    btCancelar.Enabled:= true;
    btSair.Enabled:= false;
    edNumeroDocumento.EditMask:= '';

    // pega o ultimo valor de id inserido em fornecedor
    with dm.qCodigo do
    begin
        SQL.Clear;
        SQL.Add('select max(id) as codigo from fornecedor');
        Open;
    end;

    // recebe o ultomo id + 1 como proximo id a ser inserido
    edID.Text:= inttostr(dm.qCodigo.fieldbyname('codigo').AsInteger + 1);

    edNomeFornecedor.SetFocus;
    //data padrao do sistema
    edData.Text:= Datetostr(date);
    //hora padrao do sistema
    edHora.Text:= Timetostr(time);

    dm.qContatos.Close;
    DBGrid1.Enabled:= False;

    /////teste

    // insere dados provisorios para poder cadastrar contatos quando se esta cadastrando novo fornecedor
    // na hora de salvar, em vez de dar insert, faz update  
    dm.qFornecedores.Close;
    dm.qFornecedores.SQL.Clear;
    dm.qFornecedores.SQL.Add('insert into fornecedor (id, data, hora, tipo, documento, nomeempresa, nomefornecedor, rg, datanascimento, codigoempresa) '+
                            'values (:id, :data, :hora, :tipo, :documento, :nomeempresa, :nomefornecedor, :rg, :datanascimento, :codigoempresa)');

    dm.qFornecedores.ParamByName('id').AsInteger:= StrToInt(edID.Text);
    dm.qFornecedores.ParamByName('data').AsDate:=  StrToDate(edData.Text);
    dm.qFornecedores.ParamByName('hora').AsTime:= StrToTime(edHora.Text);
    dm.qFornecedores.ParamByName('tipo').AsString:= '';
    dm.qFornecedores.ParamByName('documento').AsString:= '';
    dm.qFornecedores.ParamByName('nomeempresa').AsString:= '';
    dm.qFornecedores.ParamByName('nomefornecedor').AsString:= '';
    dm.qFornecedores.ParamByName('rg').AsString:= '';
    dm.qFornecedores.ParamByName('datanascimento').AsDate:= now;
    dm.qFornecedores.ParamByName('codigoempresa').AsInteger:= 0;

    dm.qFornecedores.ExecSQL;
end;

procedure TfrmCadastroFornecedores.btSalvarClick(Sender: TObject);
var
    erro: boolean;
begin

    erro:= false;

    sbCancelar.Click;

    //verifica se o nome do fornecedor foi preenchido
    if (edNomeFornecedor.Text = '') then
    begin
        Messagedlg('O nome do fornecedor deve ser preenchido', mtError,[mbok],0);
        edNomeFornecedor.SetFocus;
        exit;
    end;

    //verifica se um tipo de pessoa foi selecionado
    if (cbTipo.Text = '') then
    begin
        Messagedlg('Faltou selecionar o tipo de pessoa: FÍSICA ou JURÍDICA', mtError,[mbok],0);
        cbTipo.SetFocus;
        exit;
    end else
    begin

        case cbTipo.ItemIndex of
            0: // pessoa fisica
            begin
                //verifica se o cpf foi preenchido
                if (edNumeroDocumento.Text = '') then
                begin
                    Messagedlg('C.P.F. deve ser preenchido', mtError,[mbok],0);
                    edNumeroDocumento.SetFocus;
                    exit;
                end else
                begin
                    //valida a quantidade de digitos informados para o cpf
                    if (Length(edNumeroDocumento.Text) <> 11) then
                    begin
                        Messagedlg('A quantidade de dígitos informados no C.P.F. é inválido!' + #13 +
                                   'Deverão ser informados 11 números, não contando os pontos e traço' + #13 +
                                   'XXX.XXX.XXX-XX', mtError,[mbok],0);
                        edNumeroDocumento.SetFocus;
                        exit;
                    end;
                end;

                //verifica se o rg foi preenchido
                if (edRG.Text = '') then
                begin
                    Messagedlg('R.G. deve ser preenchido', mtError,[mbok],0);
                    edRG.SetFocus;
                    exit;
                end;

            end;

            1: // pessoa juridica
            begin
                //verifica se o cnpj foi preenchido
                if (edNumeroDocumento.Text = '') then
                begin
                    Messagedlg('C.N.P.J. deve ser preenchido', mtError,[mbok],0);
                    exit;
                end else
                begin
                    //valida a quantidade de digitos informados para o cnpj
                    if (Length(edNumeroDocumento.Text) <> 14) then
                    begin
                        Messagedlg('A quantidade de dígitos informadados no C.N.P.J. é inválido!' + #13 +
                                   'Deverão ser informados 14 números, não contando os pontos, hífen e traço.' + #13 +
                                   'XX.XXX.XXX/XXXX-XX', mtError,[mbok],0);
                        edNumeroDocumento.SetFocus;
                        exit;
                    end;
                end;
            end;
        end;
        DBGrid1.Enabled:= true;
    end;

    //verifica se o nome da empresa foi preenchido

    if (edNomeEmpresa.Text = '') then
    begin
        Messagedlg('O nome da empresa deve ser preenchido', mtError,[mbok],0);
        exit;
    end;

    //verifica se empresa é do estado do Paraná
    with dm.qEmpresa do
    begin
        estadoParana:= false;
        close;
        sql.Clear;
        sql.Add('select * from empresa where codigo = '+ edCodigoEmpresa.Text+'');
        Open;
        if (fieldbyname('uf').AsString) = 'PARANÁ' then
            estadoParana:= true;
    end;


    // caso for empresa do Paraná e pessoa Fisica, calcula a idade pra ver se é menor
    if (estadoParana) and (cbTipo.ItemIndex = 0)then
    begin
        //verifica se é menor de idade. se retornar verdadeiro, mostra a mensagem
        if not CalcularIdade(strtodate(edData.Text),edDataNascimento.Date) then
        begin
            Messagedlg('Não é possivel cadastrar fornecedores (Pessoa Física) menores de idade para o Estado do Paraná', mtError,[mbok],0);
            exit;
        end;
    end;

    //verifica a quantidade de digitos pra ver se foi entrado com cpf ou cnpj
    if (Length(edNumeroDocumento.Text) > 12) then
    begin
        edNumeroDocumento.EditMask:= '99.999.999/9999-99;1;_';
    end else
    begin
        edNumeroDocumento.EditMask:= '999.999.999-99;1;_';
    end;

    /////verifica se ja existe algum cpf / cnpj / rg cadastrado
    with dm.qPesquisaFornecedor do
    begin
        Close;
        SQL.Clear;

        if cbTipo.Text = 'PESSOA FÍSICA' then
        begin
            SQL.Add('select * from fornecedor where (documento = '''+ edNumeroDocumento.Text + ''' or RG = '''+ edRG.Text +''') and id <> ' + edID.Text + '');
            Open;
            if dm.qPesquisaFornecedor.RecordCount = 1 then
            begin
                MessageDlg('O C.P.F. / C.N.P.J. ' + edNumeroDocumento.Text + ' ou o R.G ' + edRG.Text+ ' já está cadastrado', mtError,[mbok],0);
                edNumeroDocumento.EditMask:= '';
                edNumeroDocumento.SetFocus;
                exit;
            end;
        end else
        begin
            SQL.Add('select * from fornecedor where (documento = '''+ edNumeroDocumento.Text + ''') and id <> ' + edID.Text + '');
            Open;
            if dm.qPesquisaFornecedor.RecordCount = 1 then
            begin
                MessageDlg('O C.N.P.J. ' + edNumeroDocumento.Text + ' já está cadastrado', mtError,[mbok],0);
                edNumeroDocumento.EditMask:= '';
                edNumeroDocumento.SetFocus;
                exit;
            end;
        end;
    end;
    ////

    dm.qFornecedores.Close;
    dm.qFornecedores.SQL.Clear;

    //  faz update dos registros novos ou editados
    dm.qFornecedores.SQL.Add('update fornecedor set ' +
                        'data = :data, ' +
                        'hora = :hora, ' +
                        'tipo = :tipo, ' +
                        'documento = :documento, ' +
                        'nomeempresa = :nomeempresa, ' +
                        'nomefornecedor = :nomefornecedor, ' +
                        'rg = :rg, ' +
                        'datanascimento = :datanascimento, ' +
                        'codigoempresa = :codigoempresa ' +
                        'where id = :id ');

    //passagem de parametro para a instrucao update
    dm.qFornecedores.ParamByName('id').AsInteger:= StrToInt(edID.Text);
    dm.qFornecedores.ParamByName('data').AsDate:=  StrToDate(edData.Text);
    dm.qFornecedores.ParamByName('hora').AsTime:= StrToTime(edHora.Text);
    dm.qFornecedores.ParamByName('tipo').AsString:= cbTipo.Text;
    dm.qFornecedores.ParamByName('documento').AsString:= edNumeroDocumento.Text;
    dm.qFornecedores.ParamByName('nomeempresa').AsString:= edNomeEmpresa.Text;
    dm.qFornecedores.ParamByName('nomefornecedor').AsString:= edNomeFornecedor.Text;
    dm.qFornecedores.ParamByName('rg').AsString:= edRG.Text;
    dm.qFornecedores.ParamByName('datanascimento').AsDate:= edDataNascimento.Date;
    dm.qFornecedores.ParamByName('codigoempresa').AsInteger:= StrToInt(edCodigoEmpresa.Text);

    try
        try
            dm.qFornecedores.ExecSQL;
            erro:= false; //nao houve erro aou fazer o insert/update no banco
        Except
            on e:exception do
            begin
                erro:= true; // erro ao fazer insert/update
            end;
        end;
    finally
        // se deu erro, mostra a mensagem adequado para inserir ou atualizar
        if erro then
        begin
            if novo then
                Messagedlg('Erro ao cadastrar fornecedor', mtError,[mbok],0)
            else
                Messagedlg('Erro ao atualizar cadastro do fornecedor', mtError,[mbok],0);
            Atualiza;
        end
        else
            begin
                // grava as alteraçoes no banco
                dm.IBTransacao.CommitRetaining;
                Atualiza;

                if dm.qFornecedores.RecordCount = 0 then
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

                //aponta para o registro setado
                dm.qFornecedores.Locate('id',edID.Text, []);
                LimpaTela;
                DesabilitaCampos;

                // caso não tenha dado erro, mostra a mensagem adequado para inserir ou atualizar
                if novo then
                    Messagedlg('Fornecedor cadastrado com sucesso!', mtInformation,[mbok],0)
                else
                    MessageDlg('Cadastro de Fornecedor alterado com sucesso!', mtInformation,[mbok],0);

                //atualiza contado do fornecedor apontado
                AtualizaContato;
            end;
    end;
    novo:= true;
    //altera a cor de alguns campos que nao podem ser editados
    cbTipo.Color:= clWindow;
    edRG.Color:= clWindow;
    edNumeroDocumento.Color:= clWindow;
end;

procedure TfrmCadastroFornecedores.cbTipoChange(Sender: TObject);
begin
    //habilita/desabilita campos, limpa/atualiza campos pertinentes a pessoa fisica ou juridica
    edNumeroDocumento.Clear;
    edRG.Clear;
    edNumeroDocumento.EditMask:= '';
    edDataNascimento.Date:= now;
    case cbTipo.ItemIndex of
        0: // pessoa fisica
        begin
            edRG.Enabled:= true;
            edDataNascimento.Enabled:= true;
            edRG.SetFocus;
        end;

        1: // pessoa juridica
        begin
            edRG.Enabled:= false;
            edDataNascimento.Enabled:= false;
            edNumeroDocumento.SetFocus;
        end;
    end;

end;

procedure TfrmCadastroFornecedores.btEditarClick(Sender: TObject);
var
    numero: string;
begin
    DBGrid1.Enabled:= false;
    novo:= false;

    //campos recebem os valores do registro selecionado no grid
    edID.Text:= IntToStr(dm.qFornecedores.fieldbyname('id').AsInteger);
    edData.Text:= DateToStr(dm.qFornecedores.FieldByName('data').AsDateTime);
    edHora.Text:= TimeToStr(dm.qFornecedores.FieldByName('hora').AsDateTime);
    edNomeFornecedor.Text:= dm.qFornecedores.FieldByName('nomefornecedor').AsString;
    cbTipo.Text:= dm.qFornecedores.FieldByName('tipo').AsString;
    edRG.Text:= dm.qFornecedores.FieldByName('rg').AsString;
    edDataNascimento.Date:= dm.qFornecedores.FieldByName('datanascimento').AsDateTime;

    edNumeroDocumento.Text:= dm.qFornecedores.FieldByName('documento').AsString;

    // tira os pontos, hifens e barras do numero do documento
    numero:= StringReplace(edNumeroDocumento.Text, '.' ,'', [rfReplaceAll]);
    numero:= StringReplace(numero, '-' ,'', [rfReplaceAll]);
    numero:= StringReplace(numero, '/' ,'', [rfReplaceAll]);
    edNumeroDocumento.Text:= numero;

    edNomeEmpresa.Text:= dm.qFornecedores.FieldByName('nomeempresa').AsString;
    edCodigoEmpresa.Text:= IntToStr(dm.qFornecedores.fieldbyname('codigoempresa').AsInteger);

    HabilitaCampos;

    btNovo.Enabled:= false;
    btApagar.Enabled:= false;
    btEditar.Enabled:= false;
    btSalvar.Enabled:= true;
    btCancelar.Enabled:= true;
    btSair.Enabled:= false;
    edNumeroDocumento.EditMask:= '';

    //atualiza tabela de contatos para o fornecedor apontado
    AtualizaContato;

    //habilita/desabilita botoes de editar e excluir contato caso nao haja contato cadastrado para o fornecedor apontado
    if dm.qContatos.RecordCount = 0 then
    begin
        sbEditar.Enabled:= false;
        sbExcluir.Enabled:= false;
    end else
    begin
        sbEditar.Enabled:= true;
        sbExcluir.Enabled:= true;
    end;
    sbSalvar.Enabled:= true;
    sbCancelar.Enabled:= true;

    //simula o click no combox tipo de pessoa, para pegar a posicao do item
    cbTipo.DroppedDown:= true;
    cbTipo.DroppedDown:= false;
    edNomeFornecedor.SetFocus;
end;

procedure TfrmCadastroFornecedores.btApagarClick(Sender: TObject);
var
    erro: Boolean;
    idApagar: integer;
begin
    //procedimento para apagar fornecedores
    if MessageDlg('Os dados serão excluidos definitivamente!!!'+ #13 + 'Deseja realmente excluir?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
        erro:= false;
        idApagar:= StrToInt(dm.qFornecedores.fieldbyname('id').AsString);
        dm.qFornecedores.Close;
        dm.qFornecedores.SQL.Clear;
        dm.qFornecedores.SQL.Add('delete from fornecedor where id = :id');
        dm.qFornecedores.ParamByName('id').AsInteger:= idApagar;

        try
            try
                dm.qFornecedores.ExecSQL;
                erro:= false;
            except
                erro:= true;
            end;
        finally
            if erro then
                messagedlg('Não foi possivel apagar o fornecedor cadastrado', mtError,[mbok],0)
            else
            begin
                //grava no banco
                dm.IBTransacao.CommitRetaining;
                Atualiza;

                if dm.qFornecedores.RecordCount = 0 then
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

                DesabilitaCampos;
                messagedlg('Fornecedor apagado com sucesso!', mtInformation,[mbok],0)
            end
        end;
    end;
end;

procedure TfrmCadastroFornecedores.sbCancelarClick(Sender: TObject);
begin
    edNomeContato.Clear;
    edFoneContato.Clear;
    edNomeContato.SetFocus;
    editar:= false;
    AtualizaContato;
end;

procedure TfrmCadastroFornecedores.sbSalvarClick(Sender: TObject);
begin
    //verifica se nome do contato foi preenchido
    if (edNomeContato.Text = '') then
    begin
        Messagedlg('O nome do contato deve ser preenchido', mtError,[mbok],0);
        edNomeContato.SetFocus;
        exit;
    end;

    //verifica se o telefone do contato foi preenchido
    if (edFoneContato.Text = '(  )     -    ') then
    begin
        Messagedlg('O telefone do contato deve ser preenchido', mtError,[mbok],0);
        edFoneContato.SetFocus;
        exit;
    end;

    //se novo contato
    if not editar then
    begin
        with dm.qCodigo do
        begin
            //pega o valor do ultimo id de contato inserido
            SQL.Clear;
            SQL.Add('select max(id) as codigo from contato');
            Open;
        end;

        // insere dados do contato no banco se for novo contato
        dm.qContatos.Close;
        dm.qContatos.SQL.Clear;
        dm.qContatos.SQL.Add('insert into contato (id, idfornecedor, telefone, contato) values (:id, :idfornecedor, :telefone, :contato)');

        dm.qContatos.ParamByName('id').AsInteger:= dm.qCodigo.FieldByName('codigo').AsInteger + 1;
        dm.qContatos.ParamByName('idfornecedor').AsInteger:= StrToInt(edID.Text);
        dm.qContatos.ParamByName('telefone').AsString:= edFoneContato.Text;
        dm.qContatos.ParamByName('contato').AsString:= edNomeContato.Text;
        dm.qContatos.ExecSQL;
    end else
    begin
        //atualiza contato caso esteja editando
        dm.qContatos.Close;
        dm.qContatos.SQL.Clear;
        dm.qContatos.SQL.Add('update contato set '+
                            'telefone = :telefone, '+
                            'contato = :contato '+
                            'where id = :id and idfornecedor = :idfornecedor ');

        dm.qContatos.ParamByName('id').AsInteger:= StrToInt(edIdContato.Text);
        dm.qContatos.ParamByName('idfornecedor').AsInteger:= StrToInt(edID.Text);
        dm.qContatos.ParamByName('telefone').AsString:= edFoneContato.Text;
        dm.qContatos.ParamByName('contato').AsString:= edNomeContato.Text;
        dm.qContatos.ExecSQL;

    end;
    edNomeContato.Clear;
    edFoneContato.Clear;
    edNomeContato.SetFocus;

    //atualiza tabela de contatos para o fornecedor apontado
    dm.qContatos.Close;
    dm.qContatos.SQL.Clear;
    dm.qContatos.SQL.Add('select * from contato where idfornecedor = '+ edID.Text +'');
    dm.qContatos.Open;

    // verifica se há contatos cadastrados, habilitando/desabilitando botões necessários
    if dm.qContatos.RecordCount = 0 then
    begin
        sbExcluir.Enabled:= false;
        sbEditar.Enabled:= false;
    end else
    begin
        sbExcluir.Enabled:= true;
        sbEditar.Enabled:= true;
    end;
    sbCancelar.Enabled:= true;
    sbSalvar.Enabled:= true;
end;

procedure TfrmCadastroFornecedores.sbExcluirClick(Sender: TObject);
begin
    //procedimento para excluir contato
    if MessageDlg('Os dados serão excluidos em difinitivo!!!' + #13 + 'Deseja realmente apagar este contato?',mtConfirmation,[mbYes,mbNo],0) = mryes then
    begin
        editar:= false;
        edIdContato.Text:= IntToStr(dm.qContatos.FieldByName('id').AsInteger);
        edIdFornecedorContato.Text:= IntToStr(dm.qContatos.FieldByName('idfornecedor').AsInteger);
        dm.qContatos.Close;
        dm.qContatos.SQL.Clear;
        dm.qContatos.SQL.Add('delete from contato where id = :id and idfornecedor = :idfornecedor');
        dm.qContatos.ParamByName('id').AsInteger:= StrToInt(edIdContato.Text);
        dm.qContatos.ParamByName('idFornecedor').AsInteger:= StrToInt(edIdFornecedorContato.Text);
        dm.qContatos.ExecSQL;

        //atualiza tabela de contatos para o fornecedor apontado
        AtualizaContato;
    end;
end;

procedure TfrmCadastroFornecedores.sbEditarClick(Sender: TObject);
begin
    editar:= true;
    //joga os valores do regitro selecionado no grid para os campos no contato
    edNomeContato.Text:= dm.qContatos.FieldByname('contato').AsString;
    edFoneContato.Text:= dm.qContatos.FieldByName('telefone').AsString;
    edIdContato.Text:= IntToStr(dm.qContatos.FieldByName('id').AsInteger);
    edIdFornecedorContato.Text:= IntToStr(dm.qContatos.FieldByName('idfornecedor').AsInteger);
    sbEditar.Enabled:= false;
    sbExcluir.Enabled:= false;
end;

procedure TfrmCadastroFornecedores.DBGrid1CellClick(Column: TColumn);
begin
    novo:= false;
    //atualiza tabela de contatos para o fornecedor apontado
    AtualizaContato;
end;

end.

