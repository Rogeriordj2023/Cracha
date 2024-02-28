unit uCracha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, udmCracha,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, IBX.IBCustomDataSet,
  IBX.IBUpdateSQL, Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmCracha = class(TForm)
    pcCadastro: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label3: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Image1: TImage;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
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
    updSQL: TFDUpdateSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCracha: TfrmCracha;

implementation

{$R *.dfm}

procedure TfrmCracha.Button1Click(Sender: TObject);
begin
  FDQuery1.Open;
  FDQuery1.Insert;
end;

procedure TfrmCracha.Button4Click(Sender: TObject);
begin
  FDQuery1.Insert;
end;

procedure TfrmCracha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCracha.FormShow(Sender: TObject);
begin
  pcCadastro.ActivePageIndex := 0;
  FDQuery1.Open;
end;

end.
