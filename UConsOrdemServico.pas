unit UConsOrdemServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMConsOrdemServico, ExtCtrls, StdCtrls, Mask, ToolEdit,
  CurrEdit, NxCollection, Grids, DBGrids, SMDBGrid, RzTabs, DB, ComObj;

type
  TfrmConsOrdemServico = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Label4: TLabel;
    DateEdit2: TDateEdit;
    Label5: TLabel;
    DateEdit3: TDateEdit;
    Label6: TLabel;
    DateEdit4: TDateEdit;
    btnConsultar: TNxButton;
    RzPageControl1: TRzPageControl;
    TS_Detalhada: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    TS_OSPed: TRzTabSheet;
    SMDBGrid2: TSMDBGrid;
    Panel2: TPanel;
    Label7: TLabel;
    DateEdit5: TDateEdit;
    Label8: TLabel;
    DateEdit6: TDateEdit;
    RadioGroup1: TRadioGroup;
    Label9: TLabel;
    DateEdit7: TDateEdit;
    Label10: TLabel;
    DateEdit8: TDateEdit;
    TS_OS: TRzTabSheet;
    SMDBGrid3: TSMDBGrid;
    NxButton1: TNxButton;
    Label11: TLabel;
    DateEdit9: TDateEdit;
    Label12: TLabel;
    DateEdit10: TDateEdit;
    Panel4: TPanel;
    Shape6: TShape;
    Label31: TLabel;
    Shape1: TShape;
    Label13: TLabel;
    Shape2: TShape;
    Label26: TLabel;
    Shape18: TShape;
    Label68: TLabel;
    Shape19: TShape;
    Label66: TLabel;
    Shape14: TShape;
    Label77: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure SMDBGrid2TitleClick(Column: TColumn);
    procedure SMDBGrid3TitleClick(Column: TColumn);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid3GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDMConsOrdemServico: TDMConsOrdemServico;
    vComando : String;

    procedure prc_CriaExcel(vDados: TDataSource; Grid : TSMDBGrid);
    procedure prc_Condicao;
    procedure prc_ConsOrdemServico_Ped;
    procedure prc_ConsOrdemServico_Nota;
    procedure prc_ConsOrdemServico;

  public
    { Public declarations }

  end;

var
  frmConsOrdemServico: TfrmConsOrdemServico;

implementation

uses rsDBUtils, StrUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmConsOrdemServico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsOrdemServico.FormShow(Sender: TObject);
begin
  fDMConsOrdemServico := TDMConsOrdemServico.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsOrdemServico);
  if CurrencyEdit1.AsInteger > 0 then
    btnConsultarClick(Sender);
end;

procedure TfrmConsOrdemServico.btnConsultarClick(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Detalhada then
    prc_ConsOrdemServico_Nota
  else
  if RzPageControl1.ActivePage = TS_OSPed then
    prc_ConsOrdemServico_Ped
  else
    prc_ConsOrdemServico;
end;

procedure TfrmConsOrdemServico.prc_ConsOrdemServico_Ped;
begin
  prc_Condicao;
  SMDBGrid2.DisableScroll;
  fDMConsOrdemServico.cdsOrdemServico_Ped.Close;
  fDMConsOrdemServico.sdsOrdemServico_Ped.CommandText := fDMConsOrdemServico.ctOrdemServico_Ped + vComando;
  fDMConsOrdemServico.cdsOrdemServico_Ped.Open;
  fDMConsOrdemServico.cdsOrdemServico_Ped.IndexFieldNames := 'NUM_OS';
  SMDBGrid2.EnableScroll;
end;

procedure TfrmConsOrdemServico.prc_ConsOrdemServico_Nota;
begin
  prc_Condicao;
  SMDBGrid1.DisableScroll;
  fDMConsOrdemServico.cdsOrdemServico_Nota.Close;
  fDMConsOrdemServico.sdsOrdemServico_Nota.CommandText := fDMConsOrdemServico.ctOrdemServico_Nota + vComando;
  fDMConsOrdemServico.cdsOrdemServico_Nota.Open;
  fDMConsOrdemServico.cdsOrdemServico_Nota.IndexFieldNames := 'NUM_OS;NUMNOTA';
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsOrdemServico.prc_Condicao;
begin
  vComando := '';
  if CurrencyEdit1.AsInteger > 0 then
    vComando := vComando + ' and O2.NUM_OS = ' + IntToStr(CurrencyEdit1.AsInteger)
  else
  begin
    if trim(Edit1.Text) <> '' then
      vComando := vComando + ' AND CLI.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
       
    if DateEdit1.Date > 10 then
      vComando := vComando + ' AND O2.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.Date));
    if DateEdit2.Date > 10 then
      vComando := vComando + ' AND O2.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
    if DateEdit3.Date > 10 then
      vComando := vComando + ' AND P2.DTEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.Date));
    if DateEdit4.Date > 10 then
      vComando := vComando + ' AND P2.DTEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
    if DateEdit7.Date > 10 then
      vComando := vComando + ' AND O2.DTRECEBIMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit7.Date));
    if DateEdit8.Date > 10 then
      vComando := vComando + ' AND O2.DTRECEBIMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit8.date));
    if DateEdit9.Date > 10 then
      vComando := vComando + ' AND O2.DT_AGENDA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit9.date));
    if DateEdit10.Date > 10 then
      vComando := vComando + ' AND O2.DT_AGENDA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit10.date));
    if RzPageControl1.ActivePage = TS_Detalhada then
    begin
      if DateEdit5.Date > 10 then
        vComando := vComando + ' AND n2.DTRECEBIMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.Date));
      if DateEdit6.Date > 10 then
        vComando := vComando + ' AND n2.DTRECEBIMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit6.date));
    end;
    case RadioGroup1.ItemIndex of
      1 : vComando := vComando + ' and p2.NUM_PEDIDO IS NULL ';
      2 : vComando := vComando + ' and p2.NUM_PEDIDO IS NOT NULL ';
      3 : vComando := vComando + ' and N2.NUMNOTA IS NULL ';
      4 : vComando := vComando + ' and N2.NUMNOTA IS NOT NULL ';
    end;
  end;
end;

procedure TfrmConsOrdemServico.prc_ConsOrdemServico;
var
  vComandoAux, vComandoAux2: String;
  i: Integer;
begin
  i := PosEx('GROUP',fDMConsOrdemServico.ctOrdemServico,0);
  vComandoAux  := copy(fDMConsOrdemServico.ctOrdemServico,i,Length(fDMConsOrdemServico.ctOrdemServico) - i + 1);
  vComandoAux2 := copy(fDMConsOrdemServico.ctOrdemServico,1,i-1);
  prc_Condicao;
  SMDBGrid3.DisableScroll;
  fDMConsOrdemServico.cdsOrdemServico.Close;
  //fDMConsOrdemServico.sdsOrdemServico_Ped.CommandText := fDMConsOrdemServico.ctOrdemServico + vComando;
  fDMConsOrdemServico.sdsOrdemServico.CommandText := vComandoAux2 + vComando + vComandoAux;
  fDMConsOrdemServico.cdsOrdemServico.Open;
  fDMConsOrdemServico.cdsOrdemServico.IndexFieldNames := 'NUM_OS';
  SMDBGrid3.EnableScroll;
end;

procedure TfrmConsOrdemServico.NxButton1Click(Sender: TObject);
begin
  case RzPageControl1.ActivePageIndex of
    0: prc_CriaExcel(SMDBGrid1.DataSource, SMDBGrid1);
    1: prc_CriaExcel(SMDBGrid2.DataSource, SMDBGrid2);
    2: prc_CriaExcel(SMDBGrid3.DataSource, SMDBGrid3);
  end;
end;

procedure TfrmConsOrdemServico.prc_CriaExcel(vDados: TDataSource; Grid : TSMDBGrid);
var
  planilha: variant;
  vTexto: string;
begin
  Screen.Cursor := crHourGlass;
  vDados.DataSet.First;

  planilha := CreateOleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportando dados do tela para o Excel';
  planilha.visible := true;

  prc_Preencher_Excel2(planilha, vDados, Grid);

  planilha.columns.Autofit;
  vTexto := ExtractFilePath(Application.ExeName);

  vTexto := vTexto + Name + '_Pessoa_' + Grid.Name + '_' +  Monta_Numero(DateToStr(Date), 0);
  try
    planilha.ActiveWorkBook.SaveAs(vTexto);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmConsOrdemServico.SMDBGrid1TitleClick(Column: TColumn);
var
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsOrdemServico.cdsOrdemServico_Nota.IndexFieldNames := Column.FieldName;
end;

procedure TfrmConsOrdemServico.SMDBGrid2TitleClick(Column: TColumn);
var
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsOrdemServico.cdsOrdemServico_Ped.IndexFieldNames := Column.FieldName;
end;

procedure TfrmConsOrdemServico.SMDBGrid3TitleClick(Column: TColumn);
var
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsOrdemServico.cdsOrdemServico.IndexFieldNames := Column.FieldName;
end;

procedure TfrmConsOrdemServico.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not(fDMConsOrdemServico.cdsOrdemServico_Nota.Active) or (fDMConsOrdemServico.cdsOrdemServico_Nota.IsEmpty) then
    exit;
  if fDMConsOrdemServico.cdsOrdemServico_NotaFATURADO_NOTA.AsString = 'S' then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if fDMConsOrdemServico.cdsOrdemServico_NotaFATURADO_NOTA.AsString = 'P' then
  begin
    Background  := $00FF7979;
    AFont.Color := clBlack;
  end
  else
  if fDMConsOrdemServico.cdsOrdemServico_NotaPRODUZIDO.AsString = 'I' then
    Background := $00FFFF75
  else
  if fDMConsOrdemServico.cdsOrdemServico_NotaPRODUZIDO.AsString = 'S' then
    Background := clMoneyGreen
  else
  if fDMConsOrdemServico.cdsOrdemServico_NotaCOPIADO_PEDIDO.AsString = 'S' then
    Background := $000080FF
  else
  if fDMConsOrdemServico.cdsOrdemServico_NotaCOPIADO_PEDIDO.AsString = 'P' then
    Background := $00A6FFFF;
end;

procedure TfrmConsOrdemServico.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not(fDMConsOrdemServico.cdsOrdemServico_Ped.Active) or (fDMConsOrdemServico.cdsOrdemServico_Ped.IsEmpty) then
    exit;
  if fDMConsOrdemServico.cdsOrdemServico_PedFATURADO_NOTA.AsString = 'S' then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if fDMConsOrdemServico.cdsOrdemServico_PedFATURADO_NOTA.AsString = 'P' then
  begin
    Background  := $00FF7979;
    AFont.Color := clBlack;
  end
  else
  if fDMConsOrdemServico.cdsOrdemServico_PedPRODUZIDO.AsString = 'I' then
    Background := $00FFFF75
  else
  if fDMConsOrdemServico.cdsOrdemServico_PedPRODUZIDO.AsString = 'S' then
    Background := clMoneyGreen
  else
  if fDMConsOrdemServico.cdsOrdemServico_PedCOPIADO_PEDIDO.AsString = 'S' then
    Background := $000080FF
  else
  if fDMConsOrdemServico.cdsOrdemServico_PedCOPIADO_PEDIDO.AsString = 'P' then
    Background := $00A6FFFF;
end;

procedure TfrmConsOrdemServico.SMDBGrid3GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not(fDMConsOrdemServico.cdsOrdemServico.Active) or (fDMConsOrdemServico.cdsOrdemServico.IsEmpty) then
    exit;
  if fDMConsOrdemServico.cdsOrdemServicoFATURADO_NOTA.AsString = 'S' then
  begin
    Background  := clGreen;
    AFont.Color := clWhite;
  end
  else
  if fDMConsOrdemServico.cdsOrdemServicoFATURADO_NOTA.AsString = 'P' then
  begin
    Background  := $00FF7979;
    AFont.Color := clBlack;
  end
  else
  if fDMConsOrdemServico.cdsOrdemServicoPRODUZIDO.AsString = 'I' then
    Background := $00FFFF75
  else
  if fDMConsOrdemServico.cdsOrdemServicoPRODUZIDO.AsString = 'S' then
    Background := clMoneyGreen
  else
  if fDMConsOrdemServico.cdsOrdemServicoCOPIADO_PEDIDO.AsString = 'S' then
    Background := $000080FF
  else
  if fDMConsOrdemServico.cdsOrdemServicoCOPIADO_PEDIDO.AsString = 'P' then
    Background := $00A6FFFF;
end;

end.
