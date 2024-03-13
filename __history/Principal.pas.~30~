unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uCracha, udmCracha, uGenetica,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    mnCracha: TMenuItem;
    mnGenetica: TMenuItem;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mnCrachaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnGeneticaClick(Sender: TObject);
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
  dmCracha.FDConnection1.Connected := False;
  action := caFree;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   dmCracha.FDConnection1.Connected := True;
end;

procedure TForm1.mnCrachaClick(Sender: TObject);
begin
   frmCracha.ShowModal;
   dmCracha.qryCracha.Active := True;
end;

procedure TForm1.mnGeneticaClick(Sender: TObject);
begin
  frmGenetica.ShowModal;
end;

end.
