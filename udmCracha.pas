unit udmCracha;

interface

uses
  System.SysUtils, System.Classes, Data.DBXInterBase, Data.DB, Data.SqlExpr,
  Datasnap.Provider, Datasnap.DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Data.FMTBcd, IBX.IBCustomDataSet, IBX.IBSQL, IBX.IBDatabase, IBX.IBUpdateSQL;

type
  TdmCracha = class(TDataModule)
    FDConnection1: TFDConnection;
    qryCracha: TFDQuery;
    updCracha: TFDUpdateSQL;
    qryCrachaID: TIntegerField;
    qryCrachaNR_ANILHA: TStringField;
    qryCrachaNOME_AVE: TStringField;
    qryCrachaPROPRIETARIO: TStringField;
    qryCrachaPAI: TStringField;
    qryCrachaMAE: TStringField;
    qryCrachaANILHA_PAI: TStringField;
    qryCrachaANILHA_MAE: TStringField;
    qryCrachaREGISTRO_CTF: TStringField;
    qryCrachaDATA_NASCIMENTO: TDateField;
    qryCrachaSEXO: TStringField;
    DataSource1: TDataSource;
    qryGenetica: TFDQuery;
    updGenetica: TFDUpdateSQL;
    dsGenetica: TDataSource;
    qryGeneticaID: TIntegerField;
    qryGeneticaGEN1: TStringField;
    qryGeneticaGEN2: TStringField;
    qryGeneticaGEN3: TStringField;
    qryGeneticaGEN4: TStringField;
    qryGeneticaGEN5: TStringField;
    qryGeneticaGEN6: TStringField;
    qryGeneticaGEN7: TStringField;
    qryGeneticaGEN8: TStringField;
    qryGeneticaGEN9: TStringField;
    qryGeneticaGEN10: TStringField;
    qryGeneticaGEN11: TStringField;
    qryGeneticaGEN12: TStringField;
    qryGeneticaID_ANILHA_REF: TIntegerField;
    qryGeneticaGEN13: TStringField;
    qryGeneticaGEN14: TStringField;
    qryGeneticaGEN15: TStringField;
    qryGeneticaGEN16: TStringField;
    qryGeneticaGEN17: TStringField;
    qryGeneticaGEN18: TStringField;
    qryGeneticaGEN19: TStringField;
    qryGeneticaGEN20: TStringField;
    qryGeneticaGEN21: TStringField;
    qryGeneticaGEN22: TStringField;
    qryGeneticaGEN23: TStringField;
    qryGeneticaGEN24: TStringField;
    qryGeneticaGEN25: TStringField;
    qryGeneticaGEN26: TStringField;
    qryGeneticaGEN27: TStringField;
    qryGeneticaGEN28: TStringField;
    qryGeneticaGEN29: TStringField;
    qryGeneticaGEN30: TStringField;
    dsConsultaCracha: TDataSource;
    qryConsultaCracha: TFDQuery;
    qryConsultaCrachaID: TIntegerField;
    qryConsultaCrachaNR_ANILHA: TStringField;
    qryConsultaCrachaNOME_AVE: TStringField;
    qryConsultaCrachaPROPRIETARIO: TStringField;
    qryConsultaCrachaPAI: TStringField;
    qryConsultaCrachaMAE: TStringField;
    qryConsultaCrachaANILHA_PAI: TStringField;
    qryConsultaCrachaANILHA_MAE: TStringField;
    qryConsultaCrachaREGISTRO_CTF: TStringField;
    qryConsultaCrachaDATA_NASCIMENTO: TDateField;
    qryConsultaCrachaSEXO: TStringField;
    FDTransaction1: TFDTransaction;
    qryValida: TFDQuery;
    qryValidaID_ANILHA_REF: TIntegerField;
    FDTransaction2: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCracha: TdmCracha;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
