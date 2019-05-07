program SSFacil_OS;

uses
  Forms,
  UMenu in 'UMenu.pas' {fMenu},
  DmdDatabase in '..\ssfacil\DmdDatabase.pas' {dmDatabase: TDataModule},
  uUtilPadrao in '..\ssfacil\uUtilPadrao.pas',
  UEscolhe_Filial in '..\ssfacil\UEscolhe_Filial.pas' {frmEscolhe_Filial},
  rsDBUtils in '..\rslib\nova\rsDBUtils.pas',
  LogProvider in '..\logs\src\LogProvider.pas',
  LogTypes in '..\logs\src\LogTypes.pas',
  USel_Pessoa in '..\ssfacil\USel_Pessoa.pas' {frmSel_Pessoa},
  UDMCadOrdemServico in 'UDMCadOrdemServico.pas' {DMCadOrdemServico: TDataModule},
  UCadOrdemServico in 'UCadOrdemServico.pas' {frmCadOrdemServico},
  USel_Produto in '..\ssfacil\USel_Produto.pas' {frmSel_Produto},
  UDMSel_Produto in '..\ssfacil\UDMSel_Produto.pas' {DMSel_Produto: TDataModule},
  USel_Produto_Preco in '..\ssfacil\USel_Produto_Preco.pas' {frmSel_Produto_Preco},
  UDMCadSetor in '..\ssfacil\UDMCadSetor.pas' {DmCadSetor: TDataModule},
  UDMCadProcesso_Grupo in '..\ssfacil\UDMCadProcesso_Grupo.pas' {DMCadProcesso_Grupo: TDataModule},
  UDMCadServico_OS in 'UDMCadServico_OS.pas' {DMCadServico_OS: TDataModule},
  UCadServico_OS in 'UCadServico_OS.pas' {frmCadServico_OS},
  UCadOrdemServico_Proc in 'UCadOrdemServico_Proc.pas' {frmCadOrdemServico_Proc},
  UCadOrdemServico_Mat in 'UCadOrdemServico_Mat.pas' {frmCadOrdemServico_Mat},
  UCadProcesso in 'uCadProcesso.pas' {frmCadProcesso},
  UCadOrdemServico_Terc in 'UCadOrdemServico_Terc.pas' {frmCadOrdemServico_Terc},
  UDMImpOrdemServico in 'UDMImpOrdemServico.pas' {DMImpOrdemServico: TDataModule},
  UProcesso_ES in 'UProcesso_ES.pas' {frmProcesso_ES},
  UDMProcesso_ES in 'UDMProcesso_ES.pas' {DMProcesso_ES: TDataModule},
  UDMCadParada in 'UDMCadParada.pas' {DMCadParada: TDataModule},
  uCadParada in 'uCadParada.pas' {frmCadParada},
  UDMBaixa_Mat_OS in 'UDMBaixa_Mat_OS.pas' {DMBaixa_Mat_OS: TDataModule},
  UBaixa_Mat_OS in 'UBaixa_Mat_OS.pas' {frmBaixa_Mat_OS},
  UDMEstoque in '..\ssfacil\UDMEstoque.pas' {DMEstoque: TDataModule},
  UBaixa_Mat_OS_Det in 'UBaixa_Mat_OS_Det.pas' {frmBaixa_Mat_OS_Det},
  UDMCadProduto in 'UDMCadProduto.pas' {dmCadProduto: TDataModule},
  UCadProduto in 'UCadProduto.pas' {frmCadProduto},
  UDMCadUnidade in '..\ssfacil\UDMCadUnidade.pas' {DMCadUnidade: TDataModule},
  UCadUnidade in '..\ssfacil\UCadUnidade.pas' {frmCadUnidade},
  UCadUnidade_Conv in '..\ssfacil\UCadUnidade_Conv.pas' {frmCadUnidade_Conv},
  UDMCadNCM in '..\ssfacil\UDMCadNCM.pas' {DMCadNCM: TDataModule},
  UCadNCM in '..\ssfacil\UCadNCM.pas' {frmCadNCM},
  UCadObs_Lei in '..\ssfacil\UCadObs_Lei.pas' {frmCadObs_Lei},
  UDMCadObs_Lei in '..\ssfacil\UDMCadObs_Lei.pas' {DMCadObs_Lei: TDataModule},
  USel_CodCest in '..\ssfacil\USel_CodCest.pas' {frmSel_CodCest},
  USenha in '..\ssfacil\USenha.pas' {frmSenha},
  uUtilCliente in '..\ssfacil\uUtilCliente.pas',
  UAjustar_OS in 'UAjustar_OS.pas' {frmAjustar_OS},
  UCadProcesso_Grupo in 'UCadProcesso_Grupo.pas' {frmCadProcesso_Grupo},
  UCadProcesso_Grupo_Itens in 'UCadProcesso_Grupo_Itens.pas' {frmCadProcesso_Grupo_Itens},
  UCadOrdemServico_Enc in 'UCadOrdemServico_Enc.pas' {frmCadOrdemServico_Enc},
  UMaterial_OS in 'UMaterial_OS.pas' {frmMaterial_OS},
  UProcesso_ES_OS in 'UProcesso_ES_OS.pas' {frmProcesso_ES_OS},
  UCadOrc in 'UCadOrc.pas' {frmCadOrc},
  UDMSel_Setor_Proc in 'UDMSel_Setor_Proc.pas' {DMSel_Setor_Proc: TDataModule},
  USel_Setor_Proc2 in 'USel_Setor_Proc2.pas' {frmSel_Setor_Proc2},
  UDMCadEnsaio in 'UDMCadEnsaio.pas' {DMCadEnsaio: TDataModule},
  uCadEnsaio in 'uCadEnsaio.pas' {frmCadEnsaio},
  USel_Ensaio in 'USel_Ensaio.pas' {frmSel_Ensaio},
  UCadOrc_Custo in 'UCadOrc_Custo.pas' {frmCadOrc_Custo},
  USel_Produto_Lote in '..\ssfacil\PedidoLoja\USel_Produto_Lote.pas' {frmSel_Produto_Lote},
  USel_Funcionario in 'USel_Funcionario.pas' {frmSel_Funcionario},
  UDMCadPessoa in '..\ssfacil\UDMCadPessoa.pas' {DMCadPessoa: TDataModule},
  uCadPessoa in '..\ssfacil\uCadPessoa.pas' {frmCadPessoa},
  UNFe_ConsultaCadastro in '..\ssfacil\UNFe_ConsultaCadastro.pas' {fNFe_ConsultaCadastro},
  UConsPessoa_Fat in '..\ssfacil\UConsPessoa_Fat.pas' {frmConsPessoa_Fat},
  UDMConsPessoa in '..\ssfacil\UDMConsPessoa.pas' {DMConsPessoa: TDataModule},
  UConsPessoa_Fat_Itens in '..\ssfacil\UConsPessoa_Fat_Itens.pas' {frmConsPessoa_Fat_Itens},
  UConsPessoa_Fin in '..\ssfacil\UConsPessoa_Fin.pas' {frmConsPessoa_Fin},
  UConsPessoa_Prod in '..\ssfacil\UConsPessoa_Prod.pas' {frmConsPessoa_Prod},
  UCadPessoa_Servico in '..\ssfacil\UCadPessoa_Servico.pas' {frmCadPessoa_Servico},
  UCadPessoa_Servico_Int in '..\ssfacil\UCadPessoa_Servico_Int.pas' {frmCadPessoa_Servico_Int},
  UConsCNPJ_ACBR in '..\ssfacil\UConsCNPJ_ACBR.pas' {frmConsCNPJ_ACBR},
  UConsCPF_ACBR in '..\ssfacil\UConsCPF_ACBR.pas' {frmConsCPF_ACBR},
  URelPessoa in '..\ssfacil\URelPessoa.pas' {fRelPessoa},
  UDMRel in '..\ssfacil\UDMRel.pas' {DMRel: TDataModule},
  SelfPrintDefs in '..\ssfacil\sendmail\SelfPrintDefs.pas',
  SendMail in '..\ssfacil\sendmail\SendMail.pas',
  SendMailOptions in '..\ssfacil\sendmail\SendMailOptions.pas' {FormSendMailOptions},
  USel_ContaOrc in '..\ssfacil\USel_ContaOrc.pas' {frmSel_ContaOrc},
  USel_EnqIPI in '..\ssfacil\USel_EnqIPI.pas' {frmSel_EnqIPI},
  USel_Atividade in '..\ssfacil\USel_Atividade.pas' {frmSel_Atividade},
  UCadOrc_Aprov in 'UCadOrc_Aprov.pas' {frmCadOrc_Aprov},
  USel_OrdemProd in '..\ssfacil\USel_OrdemProd.pas' {frmSel_OrdemProd},
  USel_Orc in 'USel_Orc.pas' {frmSel_Orc},
  UDMCopiarOrc in 'UDMCopiarOrc.pas' {DMCopiarOrc: TDataModule},
  UDMCadTab_IBPT in '..\ssfacil\UDMCadTab_IBPT.pas' {DMCadTab_IBPT: TDataModule},
  uUtilIBPT in '..\ssfacil\uUtilIBPT.pas',
  ApiIbpt in '..\ssfacil\ApiIbpt.pas',
  uLkJSON in '..\ssfacil\lkJSON-1.07\uLkJSON.pas',
  UCadOrdemServico_Lib in 'UCadOrdemServico_Lib.pas' {frmCadOrdemServico_Lib},
  uConsAgenda in '..\ssfacil\uConsAgenda.pas' {frmConsAgenda},
  UDMCadAgenda in '..\ssfacil\UDMCadAgenda.pas' {DMCadAgenda: TDataModule},
  UCadSetor in '..\ssfacil\uCadSetor.pas' {frmCadSetor},
  UCadSetor_Proc in '..\ssfacil\UCadSetor_Proc.pas' {frmCadSetor_Proc},
  uNFeComandos in '..\ssfacil\uNFeComandos.pas',
  uNFeConsts in '..\nfe 4.00\nfesrv\uNFeConsts.pas',
  UDMAprova_Orc in 'UDMAprova_Orc.pas' {DMAprova_Orc: TDataModule},
  DmdDatabase_NFeBD in '..\ssfacil\DmdDatabase_NFeBD.pas' {dmDatabase_NFeBD: TDataModule},
  UDMConsOS in 'UDMConsOS.pas' {DMConsOS: TDataModule},
  UConsProcesso in 'UConsProcesso.pas' {frmConsProcesso};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SSFacil OS';
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TfMenu, fMenu);
  Application.Run;
end.
