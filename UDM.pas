unit UDM;

interface

uses
  SysUtils, Classes, DB, IBDatabase, IBCustomDataSet, IBQuery, Dialogs;

type
  Tdm = class(TDataModule)
    qEmpresa: TIBQuery;
    IBBanco: TIBDatabase;
    IBTransacao: TIBTransaction;
    dsEmpresa: TDataSource;
    qEmpresaCNPJ: TIBStringField;
    qEmpresaUF: TIBStringField;
    qEmpresaNOMEFANTASIA: TIBStringField;
    qFornecedores: TIBQuery;
    dsFornecedores: TDataSource;
    qCodigo: TIBQuery;
    qPesquisaFornecedor: TIBQuery;
    dsContatos: TDataSource;
    qContatos: TIBQuery;
    dsPesquisaFornecedor: TDataSource;
    qEmpresaCODIGO: TIntegerField;
    qFornecedoresID: TIntegerField;
    qFornecedoresDATA: TDateField;
    qFornecedoresHORA: TTimeField;
    qFornecedoresTIPO: TIBStringField;
    qFornecedoresDOCUMENTO: TIBStringField;
    qFornecedoresNOMEEMPRESA: TIBStringField;
    qFornecedoresNOMEFORNECEDOR: TIBStringField;
    qFornecedoresRG: TIBStringField;
    qFornecedoresDATANASCIMENTO: TDateField;
    qFornecedoresCODIGOEMPRESA: TIntegerField;
    procedure qFornecedoresAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

uses UCadastroEmpresa, UCadastroFornecedor;

{$R *.dfm}

procedure Tdm.qFornecedoresAfterScroll(DataSet: TDataSet);
begin
    dm.qContatos.Close;
    dm.qContatos.SQL.Clear;
    dm.qContatos.SQL.Add('select * from contato where idfornecedor = '+ dm.qFornecedores.FieldByName('id').AsString +'');
    dm.qContatos.Open;
end;

end.
