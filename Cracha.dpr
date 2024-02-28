program Cracha;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  uCracha in 'uCracha.pas' {frmCracha},
  udmCracha in 'udmCracha.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmCracha, frmCracha);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
