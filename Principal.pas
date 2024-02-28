unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uCracha, udmCracha;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    mnCracha: TMenuItem;
    mnGenetica: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mnCrachaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  udmCracha.DataModule1.FDConnection1.Connected := False;
  action := caFree;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   with udmCracha.TDataModule1 do
   begin
     udmCracha.DataModule1.FDConnection1.Connected := True;
   end;
end;

procedure TForm1.mnCrachaClick(Sender: TObject);
begin
   frmCracha.ShowModal;
end;

end.
