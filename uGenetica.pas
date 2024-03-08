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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Procedure AlteraBotao;
  public
    { Public declarations }
    c_insert_g:Boolean;
    c_edit_g:Boolean;
    ID_Cracha:Integer;
  end;

var
  frmGenetica: TfrmGenetica;

implementation

{$R *.dfm}

procedure TfrmGenetica.AlteraBotao;
begin
  if dmCracha.qryConsultaCracha.State=(dsBrowse) then
  begin
    Button1.Enabled := True;
    Button2.Enabled := True;
    Button4.Enabled := False;
    Button6.Enabled := False;
  end else
  begin
    Button1.Enabled := False;
    Button2.Enabled := False;
    Button4.Enabled := True;
    Button6.Enabled := True;
  end;
end;

procedure TfrmGenetica.Button1Click(Sender: TObject);
begin
  ///verificar o codigo esta errado.....verificar logica....

  dmCracha.qryGenetica.Open;
  dmCracha.qryGenetica.insert;
  dmCracha.qryGenetica.FieldByName('GEN1').AsString := dmCracha.qryConsultaCracha.FieldByName('Pai').AsString;
  dmCracha.qryGenetica.FieldByName('GEN16').AsString := dmCracha.qryConsultaCracha.FieldByName('Mae').AsString;
end;

procedure TfrmGenetica.Button2Click(Sender: TObject);
begin
  dmCracha.qryGenetica.Edit;
  dbComboBox1.SetFocus;
  AlteraBotao;
end;

procedure TfrmGenetica.Button4Click(Sender: TObject);
begin
  if dmCracha.qryGenetica.State = dsInsert then
  begin
    dmCracha.qryGenetica.FieldByName('ID_ANILHA_REF').AsString := dmCracha.qryConsultaCrachaID.AsString;
    dmCracha.qryGenetica.Post;
  end;

  dmCracha.qryGenetica.ApplyUpdates(0);
  dmCracha.qryGenetica.RefreshRecord(True);
  Close;
end;

procedure TfrmGenetica.Button6Click(Sender: TObject);
begin
  if (dmCracha.qryGenetica.State = dsEdit)  or  (dmCracha.qryGenetica.State = dsInsert) then
  begin
    dmCracha.qryGenetica.CancelUpdates;
    AlteraBotao;
  end;
  Close;
end;

procedure TfrmGenetica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Close;
end;

procedure TfrmGenetica.FormShow(Sender: TObject);
Begin
  dmCracha.qryConsultaCracha.Open;
  AlteraBotao;
end;

end.
