unit UDMImpOrdemServico;

interface

uses
  SysUtils, Classes, FMTBcd, frxClass, frxDBSet, DB, DBClient, Provider, SqlExpr, frxChBox, frxExportMail, frxExportPDF,
  frxOLE, frxBarcode, frxRich;


type
  TDMImpOrdemServico = class(TDataModule)
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    sdsOSImp: TSQLDataSet;
    dspOSImp: TDataSetProvider;
    cdsOSImp: TClientDataSet;
    dsOSImp: TDataSource;
    sdsOsImp_Proc: TSQLDataSet;
    dspOsImp_Proc: TDataSetProvider;
    cdsOsImp_Proc: TClientDataSet;
    dsOsImp_Proc: TDataSource;
    frxOsImp_Proc: TfrxDBDataset;
    cdsOSImpID: TIntegerField;
    cdsOSImpNUM_OS: TIntegerField;
    cdsOSImpNUM_NOTA: TIntegerField;
    cdsOSImpSERIE_NOTA: TIntegerField;
    cdsOSImpID_CLIENTE: TIntegerField;
    cdsOSImpDTEMISSAO: TDateField;
    cdsOSImpDTRECEBIMENTO: TDateField;
    cdsOSImpDT_AGENDA: TDateField;
    cdsOSImpQTD_DIAS_ENT: TIntegerField;
    cdsOSImpFIL_NOME: TStringField;
    cdsOSImpNOME_INTERNO: TStringField;
    cdsOSImpCLI_NOME: TStringField;
    cdsOSImpCLI_FANTASIA: TStringField;
    cdsOSImpID_PRODUTO: TIntegerField;
    cdsOSImpDM: TFloatField;
    cdsOSImpREFERENCIA: TStringField;
    cdsOSImpNOME_PRODUTO: TStringField;
    cdsOSImpOBS: TMemoField;
    cdsOSImpOBS_CONDENTRADA: TMemoField;
    cdsOSImpNUM_ORCAMENTO: TIntegerField;
    cdsOSImpDESC_TIPO_SERVICO: TStringField;
    frxOSImp: TfrxDBDataset;
    cdsOsImp_ProcID: TIntegerField;
    cdsOsImp_ProcITEM: TIntegerField;
    cdsOsImp_ProcITEM_PROC: TIntegerField;
    cdsOsImp_ProcID_PROCESSO: TIntegerField;
    cdsOsImp_ProcQTD_HORAS: TFloatField;
    cdsOsImp_ProcDTENTREGA: TDateField;
    cdsOsImp_ProcOBS: TMemoField;
    cdsOsImp_ProcID_SERVICO_OS: TIntegerField;
    cdsOsImp_ProcNOME_PROCESSO: TStringField;
    cdsOsImp_ProcTERCEIRO: TStringField;
    cdsOsImp_ProcNOME_SERVICO_OS: TStringField;
    cdsOsImp_ProcTERCEIRO_SER: TStringField;
    cdsOsImp_ProcVLR_HORA: TFloatField;
    sdsOSImp_Mat: TSQLDataSet;
    dspOSImp_Mat: TDataSetProvider;
    cdsOSImp_Mat: TClientDataSet;
    dsOSImp_Mat: TDataSource;
    frxOSImp_Mat: TfrxDBDataset;
    cdsOSImp_MatID: TIntegerField;
    cdsOSImp_MatITEM: TIntegerField;
    cdsOSImp_MatITEM_MAT: TIntegerField;
    cdsOSImp_MatID_PRODUTO: TIntegerField;
    cdsOSImp_MatQTD: TFloatField;
    cdsOSImp_MatVLR_UNITARIO: TFloatField;
    cdsOSImp_MatVLR_TOTAL: TFloatField;
    cdsOSImp_MatQTD_RESTANTE: TFloatField;
    cdsOSImp_MatQTD_FATURADO: TFloatField;
    cdsOSImp_MatFATURAR: TStringField;
    cdsOSImp_MatQTD_AFATURAR: TFloatField;
    cdsOSImp_MatNOME: TStringField;
    cdsOSImp_MatREFERENCIA: TStringField;
    cdsOsImp_ProcCODBARRA: TStringField;
    cdsOSImp_MatUNIDADE: TStringField;
    cdsOSImpRASTREABILIDADE: TStringField;
    cdsOSImpDESCRICAO_SERVICO: TStringField;
    cdsOsImp_ProcORDEM: TIntegerField;
    cdsOSImp_MatCODBARRA: TStringField;
    cdsOsImp_ProcRETRABALHO: TStringField;
    cdsOsImp_ProcDESC_RETRABALHO: TStringField;
    cdsOSImpNOME_CONTATO: TStringField;
    cdsOSImpEMAIL_NFE: TStringField;
    cdsOSImpENDERECO: TStringField;
    cdsOSImpCIDADE: TStringField;
    cdsOSImpUF: TStringField;
    cdsOSImpTELEFONE: TStringField;
    sdsOSImp_Itens: TSQLDataSet;
    dspOSImp_Itens: TDataSetProvider;
    cdsOSImp_Itens: TClientDataSet;
    dsOSImp_Itens: TDataSource;
    cdsOSImp_ItensESCOPO: TMemoField;
    frxOSItem_Itens: TfrxDBDataset;
    sdsOSImp_Custo: TSQLDataSet;
    dspOSImp_Custo: TDataSetProvider;
    cdsOSImp_Custo: TClientDataSet;
    dsOSImp_Custo: TDataSource;
    cdsOSImp_CustoPRECO: TFloatField;
    frxOSImp_Custo: TfrxDBDataset;
    cdsOSImp_CustoPRAZO_DIAS: TIntegerField;
    cdsOSImpTIPO_FRETE: TStringField;
    cdsOSImp_ItensOBS: TMemoField;
    sdsOSImp_Ass: TSQLDataSet;
    dspOSImp_Ass: TDataSetProvider;
    cdsOSImp_Ass: TClientDataSet;
    dsOSImp_Ass: TDataSource;
    cdsOSImp_AssID: TIntegerField;
    cdsOSImp_AssITEM: TIntegerField;
    cdsOSImp_AssID_FUNCIONARIO: TIntegerField;
    cdsOSImp_AssNOME: TStringField;
    cdsOSImp_AssEMAIL: TStringField;
    cdsOSImp_AssDDD: TIntegerField;
    cdsOSImp_AssFONE: TStringField;
    cdsOSImp_AssFUNCAO: TStringField;
    frxOSImp_Ass: TfrxDBDataset;
    qFilial: TSQLQuery;
    qFilialENDLOGO: TStringField;
    cdsOSImpDTINICIO: TDateField;
    qRelatorios: TSQLQuery;
    qRelatoriosCAMINHO: TStringField;
    sdsProdutoGerador: TSQLDataSet;
    dsmOSImp: TDataSource;
    cdsProdutoGerador: TClientDataSet;
    dsProdutoGerador: TDataSource;
    cdsOSImpsdsProdutoGerador: TDataSetField;
    cdsProdutoGeradorID: TIntegerField;
    cdsProdutoGeradorID_MOTADORA: TIntegerField;
    cdsProdutoGeradorID_FABRICANTE_MOTOR: TIntegerField;
    cdsProdutoGeradorMODELO: TStringField;
    cdsProdutoGeradorNRO_SERIE: TStringField;
    cdsProdutoGeradorPOTENCIA: TStringField;
    cdsProdutoGeradorANO_FABR: TSmallintField;
    cdsProdutoGeradorNRO_SERIE_EQUIP: TStringField;
    cdsProdutoGeradorID_FABRICANTE_GERADOR: TIntegerField;
    cdsProdutoGeradorMODELO_GERADOR: TStringField;
    cdsProdutoGeradorNRO_SERIE_GERADOR: TStringField;
    cdsProdutoGeradorMODELO_USCA: TStringField;
    cdsProdutoGeradorTENSAO: TStringField;
    frxProdutoGerador: TfrxDBDataset;
    cdsProdutoGeradorNOME_MONTADORA: TStringField;
    cdsProdutoGeradorNOME_FABR_MOTOR: TStringField;
    cdsProdutoGeradorNOME_FABR_GERADOR: TStringField;
    sdsOrcSetor: TSQLDataSet;
    cdsOrcSetor: TClientDataSet;
    dsOrcSetor: TDataSource;
    frxOrcSetor: TfrxDBDataset;
    cdsOrcSetorID: TIntegerField;
    cdsOrcSetorITEM: TIntegerField;
    cdsOrcSetorITEM_SETOR: TIntegerField;
    cdsOrcSetorID_SETOR: TIntegerField;
    cdsOrcSetorTOTAL_HORA: TFloatField;
    cdsOrcSetorVLR_TOTAL: TFloatField;
    sdsOrcSetorProc: TSQLDataSet;
    cdsOrcSetorProc: TClientDataSet;
    dsOrcSetorProc: TDataSource;
    cdsOrcSetorNOME_SETOR: TStringField;
    cdsOrcSetorProcID: TIntegerField;
    cdsOrcSetorProcITEM: TIntegerField;
    cdsOrcSetorProcITEM_SETOR: TIntegerField;
    cdsOrcSetorProcITEM_PROC: TIntegerField;
    cdsOrcSetorProcID_PROCESSO: TIntegerField;
    cdsOrcSetorProcDESCRICAO: TStringField;
    cdsOrcSetorProcTOTAL_HORA: TFloatField;
    cdsOrcSetorProcVLR_HORA: TFloatField;
    cdsOrcSetorProcVLR_TOTAL: TFloatField;
    frxOrcSetorProc: TfrxDBDataset;
    dsmOSImp_Itens: TDataSource;
    dspOrcSetor: TDataSetProvider;
    dspOrcSetorProc: TDataSetProvider;
    cdsOrcSetorProcNOME_PROCESSO: TStringField;
    cdsOSImpCONDPGTO: TStringField;
    cdsOrcSetorProcUNIDADE: TStringField;
    cdsOrcSetorUNIDADE: TStringField;
    cdsOSImpCLI_CNPJ: TStringField;
    cdsOSImpQTD: TFloatField;
    cdsOsImp_ProcQTD: TFloatField;
    sdsOrcTerceiros: TSQLDataSet;
    cdsOrcTerceiros: TClientDataSet;
    dsOrcTerceiros: TDataSource;
    frxOrcTerceiros: TfrxDBDataset;
    dspOrcTerceiros: TDataSetProvider;
    cdsOrcTerceirosID: TIntegerField;
    cdsOrcTerceirosITEM: TIntegerField;
    cdsOrcTerceirosITEM_TERC: TIntegerField;
    cdsOrcTerceirosVALOR: TFloatField;
    cdsOrcTerceirosNOME_TERCEIRO: TStringField;
    procedure frxReport1Preview(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsOrcSetorAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMImpOrdemServico: TDMImpOrdemServico;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMImpOrdemServico.frxReport1Preview(Sender: TObject);
begin
  if (FileExists(qFilialENDLOGO.AsString)) then
  begin
    if frxReport1.FindComponent('Picture1')<> nil then
      TfrxPictureView(frxReport1.FindComponent('Picture1')).Picture.LoadFromFile(qFilialENDLOGO.AsString);
  end;
//  TfrxRichView(frxReport1.FindObject('Rich1')).RichEdit.SelectAll;
//  TfrxRichView(frxReport1.FindObject('Rich1')).RichEdit.SelAttributes.Size := 9;
//  TfrxRichView(frxReport1.FindObject('Rich1')).RichEdit.SelAttributes.Size := 6;
end;

procedure TDMImpOrdemServico.DataModuleCreate(Sender: TObject);
begin
  qFilial.Open;
end;

procedure TDMImpOrdemServico.cdsOrcSetorAfterScroll(DataSet: TDataSet);
begin
  cdsOrcSetorProc.Close;
  sdsOrcSetorProc.ParamByName('ID').AsInteger         := cdsOrcSetorID.AsInteger;
  sdsOrcSetorProc.ParamByName('ITEM').AsInteger       := cdsOrcSetorITEM.AsInteger;
  sdsOrcSetorProc.ParamByName('ITEM_SETOR').AsInteger := cdsOrcSetorITEM_SETOR.AsInteger;
  cdsOrcSetorProc.Open;
end;

end.
