object frmCadOrc_Aprov: TfrmCadOrc_Aprov
  Left = 303
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Aprova'#231#227'o de Or'#231'amento'
  ClientHeight = 442
  ClientWidth = 589
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 589
    Height = 41
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 8
      Width = 86
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Or'#231'amento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 200
      Top = 8
      Width = 45
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 34
      Top = 24
      Width = 77
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 201
      Top = 24
      Width = 7
      Height = 13
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 401
    Width = 589
    Height = 41
    Align = alBottom
    Color = 8404992
    TabOrder = 2
    object btnConfirmar: TNxButton
      Left = 211
      Top = 6
      Width = 139
      Height = 28
      Caption = 'Confirmar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 0
      Transparent = True
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TNxButton
      Left = 350
      Top = 6
      Width = 153
      Height = 28
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 1
      Transparent = True
      OnClick = btnCancelarClick
    end
    object btnInformar: TNxButton
      Left = 73
      Top = 6
      Width = 139
      Height = 28
      Caption = 'Informar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 2
      Transparent = True
      OnClick = btnInformarClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 589
    Height = 360
    Align = alClient
    Color = 16756912
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 1
    object Label4: TLabel
      Left = 22
      Top = 67
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 24
      Top = 123
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'OBS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 12
      Top = 91
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Motivo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 342
      Top = 15
      Width = 48
      Height = 13
      Alignment = taRightJustify
      Caption = 'Usu'#225'rio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 392
      Top = 15
      Width = 48
      Height = 13
      AutoSize = True
      DataField = 'USUARIO'
      DataSource = DMAprova_Orc.dsOrdemServico_Aprov
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 358
      Top = 36
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Hora:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 392
      Top = 36
      Width = 48
      Height = 13
      AutoSize = True
      DataField = 'HORA'
      DataSource = DMAprova_Orc.dsOrdemServico_Aprov
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 522
      Top = 81
      Width = 23
      Height = 22
      Hint = 'Cadastro de Motivo'
      Caption = ' ...'
      Margin = 0
      OnClick = SpeedButton2Click
    end
    object SpeedButton5: TSpeedButton
      Left = 546
      Top = 81
      Width = 23
      Height = 22
      Hint = 'Atualiza tabela Motivo'
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFDF9FAFBF2
        F1F1EEEEEEEBEBEBE9EAECE4E8E9E2E4E7E3E4E6E4E6E7E6E9EAEBECF0F2F4F7
        F2F6F5F7F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF1EBE9D0C5BADBDEE2C9CC
        CEC1C3C4B6B0AEB1A397AA876AA6764FA87044AC754BB39174C7BCB3D5D6DBE5
        E7E8EFEFEEFDFDFDFFFFFFFFFFFFFFFFFFEBE5DC9F6B46DBDBDEC9C8CAB9A796
        B68861C18451D29861CD9460CE945CCC9258C58346B26E36C09E83E3E1E3EFF1
        F2FBFBFBFFFFFFFFFFFFFFFFFFF5F0EEBC8A63C3A48CC3A58CC68F61CF9B68C8
        9565CA9361CD9364C18951BF864FC18853C6884FB8763BCEB3A1F7FCFFFEFEFE
        FFFFFFFFFFFFFFFFFFF7F3EFBD916CD5B493D6AD8BD8AA84CB9668CB9664BA85
        53BA8A61C6A281BF926DBB814EC08F67B47437BE8C5EEDE6DFFFFFFFFFFFFFFF
        FFFFFFFFFFF6F2EEB98F69E3C2A3DDB99AE0BF9CCA9C72BD9473E2CFC0E5D9D0
        F1EEECEFE7E3E1CAB1DCC3AACFB193A96B33E4D1BFFFFFFFFFFFFFFFFFFFFFFF
        FFF7F2EFBA9069DFBB9BDEBD9DC79F7BD8C4B1F1EDEAFFFFFFFFFFFFFFFFFFFF
        FFFFF7F3EEEAD6C4FEFEFEB58560D7BDA9FFFFFFFFFFFFFFFFFFFFFFFFF7F3EF
        BD946CDFBC9CD9B996D8B694C8AE97F6F6F6FFFFFFFEFFFFFFFEFFFFFFFFFBF9
        F7F4EBE5FFFFFFC1A287D9C5B5FFFFFFFFFFFFFFFFFFFFFFFFF5EEEAB07E53E0
        BD9FDCB793E2BE9FCE9E73D0B499FCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE2D6CBEBE3DCFFFFFFFFFFFFFFFFFFFFFFFFF9F9F5BEA994C2A797BFA1
        92BB9E8CB99C89B39983F7F5F2FFFFFFAB7957BB967BB79676B89778B89777B9
        997EECE3DCFFFFFFFFFFFFFFFFFFFFFFFFF5F0E8CAB09BFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC9B7A7D3A679DBB088D9AA84DCAD87C7986EE9DB
        CDFFFFFFFFFFFFFFFFFFFFFFFFE6D8CEB67B50E8D0BCDFC7B7F3EFEBFFFFFFFE
        FFFEFEFFFEFFFFFFFFFFFFBA9F8CD6A57DCF9B6ECD9B6CBF9164E9DDD2FFFFFF
        FFFFFFFFFFFFFFFFFFEDE4DCA86B3BBF865CC29776EAE2DBFFFFFFFFFFFFFFFF
        FFFDFFFFDED0C4D4B8A3C79B71D1A478CD9E70BF9265E8DDD0FFFFFFFFFFFFFF
        FFFFFFFFFFF9F5F2BD8F6DBC8A639D5F2DB58968E0D2C8E7DCD3DAC8B8DECBBA
        C09A77D4A882D0A479D2A478D3A77CBF8E64E8DBCFFFFFFFFFFFFFFFFFFFFFFF
        FFF7F5F2CAAB93E5CCB7CCA788C29471CDAC8ED9BDA3CAA98AD7B094E8CEB2DB
        BEA1DDB995C99D76C0946FC39168EADACFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
        E1D2C6C5A284F6E3D0F0DCC9E6CEB7E6CCB5E5CBB6E7CCB5E5CCB2E3C2A4C299
        78CFB9A6D2BEADB58257E7D5C6FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFEFEDA
        C9BBBA9675D4B193EDD1B8EED3BCECCEB6D1AF8EBE916DC2A386EEE6E2F9F8F6
        FFFFFFBD9A80DBC9BAFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFDFEFEF6F2
        EFD9C8BDBFA38CC3A388B99D83CFBEACFAF6F4F7F4F2FFFFFFFFFFFFFFFFFFF8
        F7F5F8F7F4FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFF
        FFFEFEFFFFFFFFFFFFFF}
      Margin = 0
      OnClick = SpeedButton5Click
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 8
      Top = 6
      Width = 321
      Height = 49
      Caption = ' Tipo '
      Columns = 3
      Ctl3D = False
      DataField = 'TIPO'
      DataSource = DMAprova_Orc.dsOrdemServico_Aprov
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      Items.Strings = (
        'Aprovado'
        'N'#227'o Aprovado'
        'Pendente')
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Values.Strings = (
        'A'
        'N'
        'P')
    end
    object DBDateEdit1: TDBDateEdit
      Left = 56
      Top = 59
      Width = 100
      Height = 21
      DataField = 'DATA'
      DataSource = DMAprova_Orc.dsOrdemServico_Aprov
      NumGlyphs = 2
      TabOrder = 1
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 56
      Top = 82
      Width = 465
      Height = 21
      DropDownCount = 8
      DataField = 'ID_MOTIVO'
      DataSource = DMAprova_Orc.dsOrdemServico_Aprov
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMAprova_Orc.dsMotivo
      TabOrder = 2
    end
    object DBMemo1: TDBMemo
      Left = 56
      Top = 106
      Width = 512
      Height = 248
      DataField = 'OBS'
      DataSource = DMAprova_Orc.dsOrdemServico_Aprov
      ScrollBars = ssVertical
      TabOrder = 3
    end
  end
end
