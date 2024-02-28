object frmCracha: TfrmCracha
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Rela'#231#227'o de Aves'
  ClientHeight = 547
  ClientWidth = 853
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object DBText21: TDBText
    Left = 193
    Top = 160
    Width = 65
    Height = 17
  end
  object DBText22: TDBText
    Left = 135
    Top = 160
    Width = 65
    Height = 17
  end
  object pcCadastro: TPageControl
    Left = 0
    Top = 0
    Width = 853
    Height = 547
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Crach'#225
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 845
        Height = 483
        Align = alTop
        DataSource = DataModule1.dsCracha
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NOME_AVE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            Title.Caption = 'Nome da Ave'
            Width = 189
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NR_ANILHA'
            Title.Caption = 'Nr'#186' Anilha'
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEXO'
            Title.Caption = 'Sexo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAI'
            Title.Caption = 'Pai'
            Width = 178
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ANILHA_PAI'
            Title.Caption = 'Anilha Pai'
            Width = 143
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MAE'
            Title.Caption = 'M'#227'e'
            Width = 164
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ANILHA_MAE'
            Title.Caption = 'Anilha M'#227'e'
            Width = 129
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_NASCIMENTO'
            Title.Caption = 'Data de Nascimento'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REGISTRO_CTF'
            Title.Caption = 'Registro CTF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROPRIETARIO'
            Title.Caption = 'Propriet'#225'rio'
            Width = 228
            Visible = True
          end>
      end
      object Button1: TButton
        Left = 3
        Top = 489
        Width = 75
        Height = 25
        Caption = 'Incluir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 84
        Top = 489
        Width = 75
        Height = 25
        Caption = 'Alterar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 2
      end
      object Button3: TButton
        Left = 165
        Top = 489
        Width = 75
        Height = 25
        Caption = 'Excluir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 3
      end
      object Button5: TButton
        Left = 246
        Top = 489
        Width = 75
        Height = 25
        Caption = 'Gen'#233'tica'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 4
        OnClick = Button1Click
      end
      object Button7: TButton
        Left = 327
        Top = 489
        Width = 75
        Height = 25
        Caption = 'Imprimir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 5
        OnClick = Button1Click
      end
    end
  end
end
