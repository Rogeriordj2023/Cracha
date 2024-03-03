unit uGenetica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, udmCracha, Data.DB;

type
  TfrmGenetica = class(TForm)
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button6: TButton;
    Button4: TButton;
    DBComboBox1: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    c_insert_g:Boolean;
    c_edit_g:Boolean;
  end;

var
  frmGenetica: TfrmGenetica;

implementation

{$R *.dfm}

procedure TfrmGenetica.Button1Click(Sender: TObject);
begin
  dmCracha.FDQuery2.Open;
  dmCracha.FDQuery2.insert;
end;

procedure TfrmGenetica.Button2Click(Sender: TObject);
begin
  if dmCracha.FDQuery2.State = dsBrowse then
  begin
    dmCracha.FDQuery2.Close;
    dmCracha.FDQuery2.Open;
  end;

  dmCracha.FDQuery2.Edit;
  dbComboBox1.SetFocus;
end;

procedure TfrmGenetica.Button4Click(Sender: TObject);
begin
  dmCracha.FDQuery2.FieldByName('ID_ANILHA_REF').AsString := dmCracha.FDQuery3ID.AsString;

  if dmCracha.FDQuery2.State = dsEdit then
    dmCracha.FDQuery2.ApplyUpdates(0);

  if dmCracha.FDQuery2.State = dsInsert then
    dmCracha.FDQuery2.Post;

  dmCracha.FDQuery2.RefreshRecord(True);
end;

procedure TfrmGenetica.Button6Click(Sender: TObject);
begin
  dmCracha.FDQuery2.CancelUpdates;
  Close;
end;

procedure TfrmGenetica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Close;
end;

procedure TfrmGenetica.FormShow(Sender: TObject);
begin
  dmCracha.FDQuery3.Open;
end;

end.
