object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de Crach'#225
  ClientHeight = 442
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 448
    Top = 40
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object mnCracha: TMenuItem
        Caption = 'Crach'#225
        OnClick = mnCrachaClick
      end
      object mnGenetica: TMenuItem
        Caption = 'Gen'#233'tica'
        OnClick = mnGeneticaClick
      end
    end
  end
end
