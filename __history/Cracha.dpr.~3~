program Cracha;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  uCracha in 'uCracha.pas' {frmCracha},
  udmCracha in 'udmCracha.pas' {DataModule1: TDataModule},
  uCracha_2 in 'uCracha_2.pas' {frmCracha2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmCracha, frmCracha);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmCracha2, frmCracha2);
  Application.Run;
end.
