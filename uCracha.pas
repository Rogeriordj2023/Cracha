unit uCracha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, udmCracha,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Data.FMTBcd, IBX.IBCustomDataSet,
  IBX.IBUpdateSQL, Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls, uCracha_2;

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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  //udmCracha.DataModule1.qryCracha.Open ;
end;

procedure TfrmCracha.Button2Click(Sender: TObject);
begin
  frmCracha2.ShowModal;
  frmCracha2.c_edit := True;
end;

procedure TfrmCracha.Button4Click(Sender: TObject);
begin
  //FDQuery1.Insert;
end;

procedure TfrmCracha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCracha.FormShow(Sender: TObject);
begin
  pcCadastro.ActivePageIndex := 0;
end;

end.
