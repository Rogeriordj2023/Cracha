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
  end;

var
  frmGenetica: TfrmGenetica;

implementation

{$R *.dfm}

procedure TfrmGenetica.AlteraBotao;
begin
  Button1.Enabled := dmCracha.FDQuery2.State=(dsBrowse);
  Button2.Enabled := dmCracha.FDQuery2.State=(dsBrowse);
  Button4.Enabled := dmCracha.FDQuery2.State<>(dsBrowse);
  Button6.Enabled := dmCracha.FDQuery2.State<>(dsBrowse);
end;

procedure TfrmGenetica.Button1Click(Sender: TObject);
begin
  dmCracha.FDQuery4.ParamByName('ID_ANILHA_REF').asInteger := dmCracha.FDQuery3ID.AsInteger;
  dmCracha.FDQuery4.Open;

  if Not(dmCracha.FDQuery4.isEmpty) then
  begin
    ShowMessage('J� existe um cadastro de gen�tica para essa anilha!');
    Exit;
  end;


  dmCracha.FDQuery2.Open;
  dmCracha.FDQuery2.insert;
  dmCracha.FDQuery2.FieldByName('GEN1').AsString := dmCracha.FDQuery3.FieldByName('Pai').AsString;
  dmCracha.FDQuery2.FieldByName('GEN16').AsString := dmCracha.FDQuery3.FieldByName('Mae').AsString;
end;

procedure TfrmGenetica.Button2Click(Sender: TObject);
begin
  dmCracha.FDQuery2.Edit;
  dbComboBox1.SetFocus;
  AlteraBotao;
end;

procedure TfrmGenetica.Button4Click(Sender: TObject);
begin
  if dmCracha.FDQuery2.State = dsInsert then
  begin
    dmCracha.FDQuery2.FieldByName('ID_ANILHA_REF').AsString := dmCracha.FDQuery3ID.AsString;
    dmCracha.FDQuery2.Post;
  end;

  dmCracha.FDQuery2.ApplyUpdates(0);
  dmCracha.FDQuery2.RefreshRecord(True);
  Close;
end;

procedure TfrmGenetica.Button6Click(Sender: TObject);
begin
  dmCracha.FDQuery2.CancelUpdates;
  AlteraBotao;
  Close;
end;

procedure TfrmGenetica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Close;
end;

procedure TfrmGenetica.FormShow(Sender: TObject);
begin
  dmCracha.FDQuery2.Open;
  dmCracha.FDQuery3.Open;
  AlteraBotao;
end;

end.
