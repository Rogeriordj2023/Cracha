unit uCracha_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, udmCracha, IBX.IBCustomDataSet,
  IBX.IBUpdateSQL, IBX.IBSQL, Vcl.Mask;

type
  TfrmCracha2 = class(TForm)
    Label3: TLabel;
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
    Button6: TButton;
    Button4: TButton;
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
    procedure Button6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  c_edit: Boolean;
  c_insert: Boolean;
  end;

var
  frmCracha2: TfrmCracha2;

implementation

{$R *.dfm}

procedure TfrmCracha2.Button4Click(Sender: TObject);
begin
  dmCracha.FDQuery1.ApplyUpdates(0);
end;

procedure TfrmCracha2.Button6Click(Sender: TObject);
begin
  dmCracha.FDQuery1.CancelUpdates;
  Close;
end;

procedure TfrmCracha2.FormShow(Sender: TObject);
begin
  if c_edit then
    dmCracha.FDQuery1.Edit;

  if c_insert then
  begin
    dmCracha.FDQuery1.Close;
    dmCracha.FDQuery1.Append;
    DBEdit1.SetFocus;
  end;
end;

end.
