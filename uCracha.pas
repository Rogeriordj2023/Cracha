unit uCracha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, udmCracha,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, IBX.IBCustomDataSet,
  IBX.IBUpdateSQL, Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls, uCracha_2,
  RLReport, uGenetica;

type
  TfrmCracha = class(TForm)
    pcCadastro: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    DBText21: TDBText;
    DBText22: TDBText;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    Button7: TButton;
    impCracha: TRLReport;
    RLPanel1: TRLPanel;
    RLImage1: TRLImage;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel1: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText8: TRLDBText;
    RLPanel2: TRLPanel;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
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
  frmCracha2.c_insert := True;
  frmCracha2.c_edit   := False;
  frmCracha2.ShowModal;
end;

procedure TfrmCracha.Button2Click(Sender: TObject);
begin
  frmCracha2.ShowModal;
  frmCracha2.c_edit   := True;
  frmCracha2.c_insert := False;
end;

procedure TfrmCracha.Button3Click(Sender: TObject);
var
  Result : Integer;
begin
  Result := MessageDlg('Aten��o, Deseja realmente excluir a ave do plantel?',mtInformation,mbYesNo,-1);

  if Result = mrYes then
    dmCracha.qryCracha.Delete;
end;

procedure TfrmCracha.Button5Click(Sender: TObject);
begin
  frmgenetica.ID_Cracha := dmCracha.qryCracha.FieldByName('ID').AsInteger;
  frmgenetica.v_Nome    := dmCracha.qryCracha.FieldByName('NOME_AVE').AsString;
  frmGenetica.ShowModal;
//  dmCracha.qryCracha.RefreshRecord(true);
end;

procedure TfrmCracha.Button7Click(Sender: TObject);
begin
  dmCracha.qryGenetica.ParamByName('ID').AsInteger := dmCracha.qryCracha.FieldByName('ID').AsInteger;
  dmCracha.qryGenetica.Open;
  impCracha.Preview();
end;

procedure TfrmCracha.DBGrid1DblClick(Sender: TObject);
begin
  Button2Click(Sender);
end;

procedure TfrmCracha.FormActivate(Sender: TObject);
begin
  dmCracha.qryCracha.First;
end;

procedure TfrmCracha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Close;
end;

procedure TfrmCracha.FormShow(Sender: TObject);
begin
  dmCracha.qryCracha.Open;
end;

end.
