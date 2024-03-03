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
    FDQuery1: TFDQuery;
    FDUpdateSQL1: TFDUpdateSQL;
    FDQuery1ID: TIntegerField;
    FDQuery1NR_ANILHA: TStringField;
    FDQuery1NOME_AVE: TStringField;
    FDQuery1PROPRIETARIO: TStringField;
    FDQuery1PAI: TStringField;
    FDQuery1MAE: TStringField;
    FDQuery1ANILHA_PAI: TStringField;
    FDQuery1ANILHA_MAE: TStringField;
    FDQuery1REGISTRO_CTF: TStringField;
    FDQuery1DATA_NASCIMENTO: TDateField;
    FDQuery1SEXO: TStringField;
    DataSource1: TDataSource;
    FDQuery2: TFDQuery;
    FDUpdateSQL2: TFDUpdateSQL;
    dsGenetica: TDataSource;
    FDQuery2ID: TIntegerField;
    FDQuery2GEN1: TStringField;
    FDQuery2GEN2: TStringField;
    FDQuery2GEN3: TStringField;
    FDQuery2GEN4: TStringField;
    FDQuery2GEN5: TStringField;
    FDQuery2GEN6: TStringField;
    FDQuery2GEN7: TStringField;
    FDQuery2GEN8: TStringField;
    FDQuery2GEN9: TStringField;
    FDQuery2GEN10: TStringField;
    FDQuery2GEN11: TStringField;
    FDQuery2GEN12: TStringField;
    FDQuery2ID_ANILHA_REF: TIntegerField;
    FDQuery2GEN13: TStringField;
    FDQuery2GEN14: TStringField;
    FDQuery2GEN15: TStringField;
    FDQuery2GEN16: TStringField;
    FDQuery2GEN17: TStringField;
    FDQuery2GEN18: TStringField;
    FDQuery2GEN19: TStringField;
    FDQuery2GEN20: TStringField;
    FDQuery2GEN21: TStringField;
    FDQuery2GEN22: TStringField;
    FDQuery2GEN23: TStringField;
    FDQuery2GEN24: TStringField;
    FDQuery2GEN25: TStringField;
    FDQuery2GEN26: TStringField;
    FDQuery2GEN27: TStringField;
    FDQuery2GEN28: TStringField;
    FDQuery2GEN29: TStringField;
    FDQuery2GEN30: TStringField;
    dsCracha: TDataSource;
    FDQuery3: TFDQuery;
    FDQuery3ID: TIntegerField;
    FDQuery3NR_ANILHA: TStringField;
    FDQuery3NOME_AVE: TStringField;
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
