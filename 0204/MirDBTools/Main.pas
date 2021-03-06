unit Main;

interface

uses
  Windows, SysUtils, Classes, Controls, Forms,
  Dialogs, RzTabs, ExtCtrls, RzPanel, RzButton, 
  StdCtrls, Mask, RzEdit, RzLabel, RzCmboBx,Grobal2, RzStatus,
  DB, DBTables, Grids, RzGrids, HumDB, 
  ImgList, ComCtrls, RzDTP, RzBHints, RzRadChk,
  RzSpnEdt, Spin, Menus;

type
  TFrmMain = class(TForm)
    StatusBar: TRzStatusBar;
    StartTimer: TTimer;
    FieldStatus: TRzFieldStatus;
    Query: TQuery;
    RzPageControl2: TRzPageControl;
    TabSheet6: TRzTabSheet;
    TabSheet7: TRzTabSheet;
    RzPageControl3: TRzPageControl;
    TabSheet8: TRzTabSheet;
    RzPanel1: TRzPanel;
    RzMemo1: TRzMemo;
    GridBase: TRzStringGrid;
    TabSheet9: TRzTabSheet;
    GridState: TRzStringGrid;
    TabSheet10: TRzTabSheet;
    TabSheet11: TRzTabSheet;
    RzLabel26: TRzLabel;
    ComboBoxAccount: TRzComboBox;
    RzLabel34: TRzLabel;
    RzEdit1: TRzEdit;
    RzLabel35: TRzLabel;
    ComboBoxHum: TRzComboBox;
    RzLabel37: TRzLabel;
    ComboBoxHero: TRzComboBox;
    RzLabel36: TRzLabel;
    RzEdit2: TRzEdit;
    RzLabel38: TRzLabel;
    GridStore: TRzStringGrid;
    GridSkill: TRzStringGrid;
    RzPanel4: TRzPanel;
    RzStatusPane1: TRzStatusPane;
    RzPanel2: TRzPanel;
    RzPanel3: TRzPanel;
    RzToolButton1: TRzToolButton;
    ImageList1: TImageList;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    RzBitBtn1: TRzBitBtn;
    RzBitBtn2: TRzBitBtn;
    RzToolButton5: TRzToolButton;
    RzToolButton6: TRzToolButton;
    RzLabel1: TRzLabel;
    ComboBoxAccount1: TRzComboBox;
    RzLabel2: TRzLabel;
    EdtFindAccount: TRzEdit;
    ToolBtnFind: TRzToolButton;
    RzToolButton8: TRzToolButton;
    RzLabel3: TRzLabel;
    EdtAccount: TRzEdit;
    RzLabel4: TRzLabel;
    EdtPassWord: TRzEdit;
    RzLabel5: TRzLabel;
    EdtUserName: TRzEdit;
    RzLabel6: TRzLabel;
    EdtQuiz: TRzEdit;
    RzLabel7: TRzLabel;
    EdtAnswer: TRzEdit;
    RzLabel8: TRzLabel;
    EdtQuiz2: TRzEdit;
    RzLabel9: TRzLabel;
    EdtAnswer2: TRzEdit;
    RzLabel10: TRzLabel;
    EdtPhone: TRzEdit;
    RzLabel11: TRzLabel;
    EdtMobilePhone: TRzEdit;
    RzLabel12: TRzLabel;
    EdtMemo: TRzEdit;
    RzLabel13: TRzLabel;
    EdtMemo2: TRzEdit;
    RzLabel14: TRzLabel;
    EdtEMail: TRzEdit;
    EdtBirthDay: TRzEdit;
    RzLabel15: TRzLabel;
    RzLabel16: TRzLabel;
    RzLabel17: TRzLabel;
    DateTimeCreateDate: TRzDateTimePicker;
    DateTimeUpdateDate: TRzDateTimePicker;
    RzBalloonHints1: TRzBalloonHints;
    RzBitBtn3: TRzBitBtn;
    TabSheet1: TRzTabSheet;
    RzBitBtn4: TRzBitBtn;
    RzPanel5: TRzPanel;
    RzGroupBox1: TRzGroupBox;
    RzLabel19: TRzLabel;
    RzSpinEdit2: TRzSpinEdit;
    RzLabel21: TRzLabel;
    RzBitBtn6: TRzBitBtn;
    RzCheckBox3: TRzCheckBox;
    RzCheckBox5: TRzCheckBox;
    RzDateTimeEdit1: TRzDateTimeEdit;
    RzDateTimeEdit2: TRzDateTimeEdit;
    RzRadioButton1: TRzRadioButton;
    RzRadioButton2: TRzRadioButton;
    RzCheckBox2: TRzCheckBox;
    RzGroupBox2: TRzGroupBox;
    RzLabel18: TRzLabel;
    RzBitBtn5: TRzBitBtn;
    RzComboBox1: TRzComboBox;
    RzComboBox2: TRzComboBox;
    RzSpinEdit3: TSpinEdit;
    RzSpinEdit1: TSpinEdit;
    RzBitBtn7: TRzBitBtn;
    RzBitBtn8: TRzBitBtn;
    ProgressBar: TProgressBar;
    pm1: TPopupMenu;
    N1: TMenuItem;
    TabSheet2: TRzTabSheet;
    BagItemGrid: TRzStringGrid;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    PopupMenu2: TPopupMenu;
    N3: TMenuItem;
    TabSheet3: TRzTabSheet;
    RzPanel6: TRzPanel;
    RzToolButton7: TRzToolButton;
    RzToolButton9: TRzToolButton;
    GridNGSkill: TRzStringGrid;
    RzCheckBox1: TRzCheckBox;
    RzSpinEdit4: TRzSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure StartTimerTimer(Sender: TObject);
    procedure GridBaseSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure ComboBoxAccountChange(Sender: TObject);
    procedure ComboBoxHumChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ComboBoxAccount1Change(Sender: TObject);
    procedure ToolBtnFindClick(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure RzToolButton8Click(Sender: TObject);
    procedure ComboBoxHeroChange(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzEdit1Change(Sender: TObject);
    procedure RzEdit2Change(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure RzBitBtn6Click(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure RzBitBtn7Click(Sender: TObject);
    procedure RzBitBtn8Click(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure RzToolButton9Click(Sender: TObject);
    procedure RzToolButton7Click(Sender: TObject);
  private
    function GetStdItemName(nPosition: Integer): string;
    function LoadMagicDB(): Integer;
    function LoadItemsDB(): Integer;
    procedure ShowHumInfo(HumInfo: THumDataInfo);
    procedure ShowUserItems(HumInfo: THumDataInfo);
    procedure ShowStorageItems(HumInfo: THumDataInfo);
    procedure ShowUserMagic(HumInfo: THumDataInfo);
    procedure ShowUserMagic1(HumInfo: THumDataInfo);//显示内功技能
    procedure ShowBagItem(HumInfo: THumDataInfo);
  public
    procedure RefChrGrid(HumInfo: THumDataInfo);
    procedure ShowUserAccount(DBRecord: TAccountDBRecord);
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;
  HumInfo: THumDataInfo;
  DBRecord: TAccountDBRecord;
implementation
uses DBToolsShare, IDDB, Mudutil, BlurFind, AddMagic;
{$R *.dfm}

function Str_ToInt(Str: string; Def: LongInt): LongInt;
begin
  Result := Def;
  if Str <> '' then begin
    if ((Word(Str[1]) >= Word('0')) and (Word(Str[1]) <= Word('9'))) or
      (Str[1] = '+') or (Str[1] = '-') then
      try
        Result := StrToInt64(Str);
      except
      end;
  end;
end;

//加载物品数据
function TFrmMain.LoadItemsDB(): Integer;
var
  i, Idx: Integer;
  StdItem: pTStdItem;
  nRecordCount: Integer;
resourcestring
  sSQLString = 'select * from StdItems';
begin
  //MainOutMessage('正在加载物品数据...');
  FieldStatus.Caption := '正在加载物品数据...';
  try
    Result := -1;
    Query.SQL.Clear;
    Query.DatabaseName := sHeroDB;
    Query.SQL.Add(sSQLString);
    try
      Query.Open;
    finally
      Result := -2;
    end;
    nRecordCount := Query.RecordCount;
    for i := 0 to nRecordCount - 1 do begin
      New(StdItem);
      Idx := Query.FieldByName('Idx').AsInteger;
      StdItem.Name := Query.FieldByName('Name').AsString;
      StdItem.StdMode := Query.FieldByName('StdMode').AsInteger;
      StdItem.Shape := Query.FieldByName('Shape').AsInteger;
      StdItem.Weight := Query.FieldByName('Weight').AsInteger;
      StdItem.AniCount := Query.FieldByName('AniCount').AsInteger;
      StdItem.Source := Query.FieldByName('Source').AsInteger;
      StdItem.Reserved := Query.FieldByName('Reserved').AsInteger;
      StdItem.Looks := Query.FieldByName('Looks').AsInteger;
      StdItem.DuraMax := Word(Query.FieldByName('DuraMax').AsInteger);
      StdItem.AC := MakeLong(Round(Query.FieldByName('Ac').AsInteger), Round(Query.FieldByName('Ac2').AsInteger));
      StdItem.MAC := MakeLong(Round(Query.FieldByName('Mac').AsInteger), Round(Query.FieldByName('MAc2').AsInteger));
      StdItem.DC := MakeLong(Round(Query.FieldByName('Dc').AsInteger), Round(Query.FieldByName('Dc2').AsInteger));
      StdItem.MC := MakeLong(Round(Query.FieldByName('Mc').AsInteger), Round(Query.FieldByName('Mc2').AsInteger));
      StdItem.SC := MakeLong(Round(Query.FieldByName('Sc').AsInteger), Round(Query.FieldByName('Sc2').AsInteger));
      StdItem.Need := Query.FieldByName('Need').AsInteger;
      StdItem.NeedLevel := Query.FieldByName('NeedLevel').AsInteger;
      StdItem.Price := Query.FieldByName('Price').AsInteger;
      if StdItemList.Count = Idx then begin
        StdItemList.Add(StdItem);
        Result := 1;
      end else begin
        FieldStatus.Caption := Format('加载物品(Idx:%d Name:%s)数据失败！！！', [Idx, StdItem.Name]);
        Result := -100;
        Exit;
      end;
      Query.Next;
    end;
    Result := nRecordCount;
    FieldStatus.Caption := Format('物品数据库加载完成(%d)...', [nRecordCount]);
  finally
    Query.Close;
  end;
end;
//加载技能数据库
function TFrmMain.LoadMagicDB(): Integer;
var
  i, nRecordCount: Integer;
  Magic: pTMagic;
resourcestring
  sSQLString = 'select * from Magic';
begin
  Result := -1;
  FieldStatus.Caption := '正在加载技能数据库...';
  Query.SQL.Clear;
  Query.DatabaseName := sHeroDB;
  Query.SQL.Add(sSQLString);
  try
    Query.Open;
  finally
    Result := -2;
  end;
  nRecordCount := Query.RecordCount;
  for i := 0 to nRecordCount - 1 do begin
    New(Magic);
    Magic.wMagicId := Query.FieldByName('MagId').AsInteger;
    Magic.sMagicName := Query.FieldByName('MagName').AsString;
    Magic.btEffectType := Query.FieldByName('EffectType').AsInteger;
    Magic.btEffect := Query.FieldByName('Effect').AsInteger;
    Magic.wSpell := Query.FieldByName('Spell').AsInteger;
    Magic.wPower := Query.FieldByName('Power').AsInteger;
    Magic.wMaxPower := Query.FieldByName('MaxPower').AsInteger;
    Magic.btJob := Query.FieldByName('Job').AsInteger;
    Magic.TrainLevel[0] := Query.FieldByName('NeedL1').AsInteger;
    Magic.TrainLevel[1] := Query.FieldByName('NeedL2').AsInteger;
    Magic.TrainLevel[2] := Query.FieldByName('NeedL3').AsInteger;
    Magic.TrainLevel[3] := Query.FieldByName('NeedL3').AsInteger;
    Magic.MaxTrain[0] := Query.FieldByName('L1Train').AsInteger;
    Magic.MaxTrain[1] := Query.FieldByName('L2Train').AsInteger;
    Magic.MaxTrain[2] := Query.FieldByName('L3Train').AsInteger;
    Magic.MaxTrain[3] := Magic.MaxTrain[2];
    Magic.btTrainLv := 3;
    Magic.dwDelayTime := Query.FieldByName('Delay').AsInteger;
    Magic.btDefSpell := Query.FieldByName('DefSpell').AsInteger;
    Magic.btDefPower := Query.FieldByName('DefPower').AsInteger;
    Magic.btDefMaxPower := Query.FieldByName('DefMaxPower').AsInteger;
    Magic.sDescr := Query.FieldByName('Descr').AsString;
    if Magic.wMagicId > 0 then begin
      MagicList.Add(Magic);
    end else begin
      Dispose(Magic);
    end;
    Result := 1;
    Query.Next;
  end;
  Query.Close;
  //MainOutMessage(Format('技能数据库加载完成(%d)...', [nRecordCount]));
  FieldStatus.Caption := Format('技能数据库加载完成(%d)...', [nRecordCount]);
end;
procedure TFrmMain.FormCreate(Sender: TObject);
  function GetDayOfWeek:string;
  begin
    case DayOfWeek(Date) of
      1:Result:='星期日';
      2:Result:='星期一';
      3:Result:='星期二';
      4:Result:='星期三';
      5:Result:='星期四';
      6:Result:='星期五';
      7:Result:='星期六';
    end;
  end;
var
  Date: TDateTime;
begin
  StartTimer.Enabled := True;
  Date := Now();
  Caption := Caption + '  ['+FormatDateTime('yyyy-mm-dd',Date)+' ' + GetDayOfWeek + ']';
end;

procedure TFrmMain.StartTimerTimer(Sender: TObject);
var
  I: Integer;
  DBRecord: TAccountDBRecord;
begin
  StartTimer.Enabled := False;
  if SizeOf(THumDataInfo) <> 4430 then begin //20081227
    ShowMessage('sizeof(THuman) ' + IntToStr(SizeOf(THumDataInfo)) + ' <> SIZEOFTHUMAN ' + '4430');
    Close;
    Exit;
  end;
  HumChrDB := TFileHumDB.Create(sHumDBFilePath);
  HumDataDB := TFileDB.Create(sMirDBFilePath);
  AccountDB := TFileIDDB.Create(sIDDBFilePath);
  LoadMagicDB(); //加载技能数据
  LoadItemsDB(); //加载物品数据
  for I:=0 to AccountDB.Count -1 do begin
    try
      if AccountDB.OpenEx then begin
        AccountDB.Get(I, DBRecord);
        ComboBoxAccount.Items.Add(DBRecord.UserEntry.sAccount);
      end;
    finally
       AccountDB.Close;
    end;
  end;
  if ComboBoxAccount.Items.Count > 0 then
  ComboBoxAccount1.Text:='';
  ComboBoxAccount1.Items := ComboBoxAccount.Items;
  RzStatusPane1.Caption := 'ID数：'+IntToStr(AccountDB.Count);
  GridBase.Cells[0, 0] := '登陆日期';
  GridBase.Cells[1, 0] := '用户状态';
  GridBase.Cells[2, 0] := '所在地图';
  GridBase.Cells[3, 0] := 'X坐标';
  GridBase.Cells[4, 0] := 'Y坐标';
  GridBase.Cells[5, 0] := '方位';
  GridBase.Cells[6, 0] := '发型';
  GridBase.Cells[7, 0] := '性别';
  GridBase.Cells[0, 2] := '职业';
  GridBase.Cells[1, 2] := '等级';
  GridBase.Cells[2, 2] := '金币';
  GridBase.Cells[3, 2] := '金刚石';
  GridBase.Cells[4, 2] := '元宝';
  GridBase.Cells[5, 2] := '灵符';
  GridBase.Cells[6, 2] := '声望';
  GridBase.Cells[7, 2] := 'PK点';

  GridBase.Cells[0, 4] := '防御力';
  GridBase.Cells[1, 4] := '魔御力';
  GridBase.Cells[2, 4] := '攻击力';
  GridBase.Cells[3, 4] := '魔  法';
  GridBase.Cells[4, 4] := '道  术';
  GridBase.Cells[5, 4] := '英雄名';
  GridBase.Cells[6, 4] := '聚灵珠时间';
  GridBase.Cells[7, 4] := '聚灵珠经验';

  GridBase.Cells[0, 6] := '当前HP';
  GridBase.Cells[1, 6] := '最大HP';
  GridBase.Cells[2, 6] := '当前MP';
  GridBase.Cells[3, 6] := '最大MP';
  GridBase.Cells[4, 6] := '当前经验';
  GridBase.Cells[5, 6] := '升级经验';
  GridBase.Cells[6, 6] := '是否英雄';
  GridBase.Cells[7, 6] := '回城地图';

  GridBase.Cells[0, 8] := 'X坐标';
  GridBase.Cells[1, 8] := 'Y坐标';
  GridBase.Cells[2, 8] := '伴侣';
  GridBase.Cells[3, 8] := '师傅';
  GridBase.Cells[4, 8] := '仓库密码';
  GridBase.Cells[5, 8] := '忠诚度';
  GridBase.Cells[6, 8] := '杀怪倍数';

  GridState.Cells[0, 0] := '序号';
  GridState.Cells[1, 0] := '物品代码';
  GridState.Cells[2, 0] := '物品名称';
  GridState.Cells[3, 0] := '物品ID';
  GridState.Cells[4, 0] := '当前持久';
  GridState.Cells[5, 0] := '最高持久';

  GridState.Cells[0, 1] := '衣服';
  GridState.Cells[0, 2] := '武器';
  GridState.Cells[0, 3] := '照明物';
  GridState.Cells[0, 4] := '头盔';
  GridState.Cells[0, 5] := '项链';
  GridState.Cells[0, 6] := '左手镯';
  GridState.Cells[0, 7] := '右手镯';
  GridState.Cells[0, 8] := '左戒指';
  GridState.Cells[0, 9] := '右戒指';
  GridState.Cells[0, 10] := '物品';
  GridState.Cells[0, 11] := '腰带';
  GridState.Cells[0, 12] := '靴子';
  GridState.Cells[0, 13] := '宝石';
  GridState.Cells[0, 14] := '斗笠';

  GridStore.Cells[0, 0] := '序号';
  GridStore.Cells[1, 0] := '物品代码';
  GridStore.Cells[2, 0] := '物品名称';
  GridStore.Cells[3, 0] := '物品ID';
  GridStore.Cells[4, 0] := '当前持久';
  GridStore.Cells[5, 0] := '最高持久';
  for I:=1 to 46 do begin
    GridStore.Cells[0, I] := IntToStr(I);
  end;

  GridSkill.Cells[0, 0] := '序号';
  GridSkill.Cells[1, 0] := '技能名称';
  GridSkill.Cells[2, 0] := '技能代码';
  GridSkill.Cells[3, 0] := '技能等级';
  GridSkill.Cells[4, 0] := '已修炼值';
  GridSkill.Cells[5, 0] := '技能按键';
  for I:=1 to 30 do begin
    GridSkill.Cells[0, I] := IntToStr(I);
  end;

  GridNGSkill.Cells[0, 0] := '序号';
  GridNGSkill.Cells[1, 0] := '技能名称';
  GridNGSkill.Cells[2, 0] := '技能代码';
  GridNGSkill.Cells[3, 0] := '技能等级';
  GridNGSkill.Cells[4, 0] := '已修炼值';
  GridNGSkill.Cells[5, 0] := '技能按键';
  for I:=1 to 30 do begin
    GridNGSkill.Cells[0, I] := IntToStr(I);
  end;

  BagItemGrid.Cells[0, 0] := '物品号';
  BagItemGrid.Cells[1, 0] := '物品代码';
  BagItemGrid.Cells[2, 0] := '物品ID';
  BagItemGrid.Cells[3, 0] := '物品名称';
  BagItemGrid.Cells[4, 0] := '当前持久';
  BagItemGrid.Cells[5, 0] := '最高持久';
  for I:=1 to 46 do begin
    BagItemGrid.Cells[0, I] := IntToStr(I);
  end;
end;


function TFrmMain.GetStdItemName(nPosition: Integer): string;
var
  StdItem: pTStdItem;
begin
  if (nPosition - 1 >= 0) and (nPosition < StdItemList.Count) then begin
    StdItem := StdItemList.Items[nPosition - 1];
    if StdItem <> nil then begin
      Result := StdItem.Name;
    end;
  end;
end;

procedure TFrmMain.GridBaseSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  with GridBase do begin
  if not Odd(ARow) then begin
    Options := Options - [Grids.goEditing];
  end else begin
    Options := Options + [Grids.goEditing];
  end;
  end;
end;

procedure TFrmMain.ComboBoxAccountChange(Sender: TObject);
var
  ChrList: TStringList;
  HumRecord: THumInfo;
  I: Integer;
  QuickID: pTQuickID;
begin
  ComboBoxHum.Clear;
  ComboBoxHero.Clear;
  if ComboBoxAccount.Text <> '' then begin
    ChrList := TStringList.Create;
    try
      if HumChrDB.Open and (HumChrDB.FindByAccount(ComboBoxAccount.Text, ChrList) >= 0) then begin
        try
          if HumDataDB.OpenEx then begin
            for i := 0 to ChrList.Count - 1 do begin
              QuickID := pTQuickID(ChrList.Objects[i]);
              if HumChrDB.GetBy(QuickID.nIndex, HumRecord) then begin
                if HumRecord.Header.boIsHero then
                  ComboBoxHero.Add(HumRecord.sChrName)
                else
                  ComboBoxHum.Add(HumRecord.sChrName);
               end;
            end;
          end;
        finally
          HumDataDB.Close;
        end;
      end;
    finally
      HumChrDB.Close;
    end;
    ChrList.Free;
  end;
end;

procedure TFrmMain.ComboBoxHumChange(Sender: TObject);
var
  s64: string;
  n08, nIndex: Integer;
  HumDBRecord: THumDataInfo;
begin
  s64 := ComboBoxHum.Text;
  try
    if HumDataDB.OpenEx then begin
      n08 := HumDataDB.Index(s64);
      if n08 >= 0 then begin
        nIndex := HumDataDB.Get(n08, HumInfo);
        if nIndex >= 0 then begin
          RefChrGrid(HumInfo);
        end;
      end;

      ComboBoxHero.Items.Clear;
      for nIndex:= 0 to HumDataDB.count -1 do begin
        if HumDataDB.Get(nIndex, HumDBRecord) >= 0 then begin
          if HumDBRecord.Data.boIsHero and (CompareText(s64, HumDBRecord.Data.sMasterName) = 0) then
          ComboBoxHero.Items.Add(HumDBRecord.Data.sChrName);
        end;
      end;
    end;
  finally
    HumDataDB.Close;
  end;
end;


procedure TFrmMain.RefChrGrid(HumInfo: THumDataInfo);
begin
  ShowHumInfo(HumInfo);
  ShowUserItems(HumInfo);
  ShowStorageItems(HumInfo);
  ShowUserMagic(HumInfo);
  ShowUserMagic1(HumInfo);//内功技能显示
  ShowBagItem(HumInfo);
end;

procedure TFrmMain.ShowHumInfo(HumInfo: THumDataInfo);
var
  I, II: integer;
begin
  for I := 0 to GridBase.RowCount - 1 do begin
    for ii := 0 to GridBase.ColCount - 1 do begin
      if Odd(i) then
      GridBase.Cells[ii, i] := '';
    end;
  end;
  GridBase.Cells[0,1] := DateTimeToStr(HumInfo.Header.dCreateDate); //登陆日期
  GridBase.Cells[1,1] := BooltoStr(HumInfo.Header.boDeleted); //用户状态
  GridBase.Cells[2,1] := HumInfo.Data.sCurMap; //所在地图
  GridBase.Cells[3,1] := IntToStr(HumInfo.Data.wCurX);//X坐标
  GridBase.Cells[4,1] := IntToStr(HumInfo.Data.wCurY);//Y坐标
  GridBase.Cells[5,1] := IntToStr(HumInfo.Data.btDir);//方位
  GridBase.Cells[6,1] := IntToStr(HumInfo.Data.btHair);//发型
  GridBase.Cells[7,1] := IntToStr(HumInfo.Data.btSex);//性别
  GridBase.Cells[0,3] := IntToStr(HumInfo.Data.btJob);//职业
  GridBase.Cells[1,3] := IntToStr(HumInfo.Data.Abil.Level);//等级
  GridBase.Cells[2,3] := IntToStr(HumInfo.Data.nGold);//金币
  GridBase.Cells[3,3] := IntToStr(HumInfo.Data.nGameDiaMond);//金刚石
  GridBase.Cells[4,3] := IntToStr(HumInfo.Data.nGameGold);//元宝
  GridBase.Cells[5,3] := IntToStr(HumInfo.Data.nGameGird);//灵符
  GridBase.Cells[6,3] := IntToStr(HumInfo.Data.btCreditPoint);//声望
  GridBase.Cells[7,3] := IntToStr(HumInfo.Data.nPKPOINT);//PK点

  GridBase.Cells[0,5] := IntToStr(HumInfo.Data.Abil.AC);//防御力
  GridBase.Cells[1,5] := IntToStr(HumInfo.Data.Abil.MAC);//魔御力
  GridBase.Cells[2,5] := IntToStr(HumInfo.Data.Abil.DC);//攻击力
  GridBase.Cells[3,5] := IntToStr(HumInfo.Data.Abil.MC);//魔法
  GridBase.Cells[4,5] := IntToStr(HumInfo.Data.Abil.SC);//道术
  GridBase.Cells[5,5] := HumInfo.Data.sHeroChrName;//英雄名
  GridBase.Cells[6,5] :=IntToStr(HumInfo.Data.n_UsesItemTick);//聚灵珠聚集时间 20080911
  GridBase.Cells[7,5] :=IntToStr(HumInfo.Data.n_WinExp);//聚灵珠 累计经验 20080911

  GridBase.Cells[0,7] := IntToStr(HumInfo.Data.Abil.HP);//当前HP
  GridBase.Cells[1,7] := IntToStr(HumInfo.Data.Abil.MaxHP);//最大HP
  GridBase.Cells[2,7] := IntToStr(HumInfo.Data.Abil.MP);//当前MP
  GridBase.Cells[3,7] := IntToStr(HumInfo.Data.Abil.MaxMP);//最大MP
  GridBase.Cells[4,7] := IntToStr(HumInfo.Data.Abil.Exp);//当前经验
  GridBase.Cells[5,7] := IntToStr(HumInfo.Data.Abil.MaxExp);//升级经验
  GridBase.Cells[6,7] := BoolToStr(HumInfo.Data.boIsHero);//是否英雄
  GridBase.Cells[7,7] := HumInfo.Data.sHomeMap;//回城地图

  GridBase.Cells[0,9] := IntToStr(HumInfo.Data.wHomeX);//回城X
  GridBase.Cells[1,9] := IntToStr(HumInfo.Data.wHomeY);//回城Y
  GridBase.Cells[2,9] := HumInfo.Data.sDearName;//伴侣
  GridBase.Cells[3,9] := HumInfo.Data.sMasterName;//师傅
  GridBase.Cells[4,9] := HumInfo.Data.sStoragePwd;//仓库密码
  GridBase.Cells[5,9] := IntToStr(HumInfo.Data.nLoyal);//忠诚度
  GridBase.Cells[6,9] := IntToStr(HumInfo.Data.nEXPRATE);//杀怪倍数
end;

procedure TFrmMain.ShowUserItems(HumInfo: THumDataInfo);
var
  I,II: Integer;
  UserItem: TUserItem;
begin
  for i := 1 to GridState.RowCount - 1 do begin
    for ii := 1 to GridState.ColCount - 1 do begin
      GridState.Cells[ii, i] := '';
    end;
  end;
  for i := Low(HumInfo.Data.HumItems) to High(HumInfo.Data.HumItems) do begin
    if HumInfo.Data.HumItems[i].MakeIndex <= 0 then Continue;
    UserItem := HumInfo.Data.HumItems[i];
    GridState.Cells[1,I+1] := IntToStr(UserItem.wIndex);
    GridState.Cells[2,I+1] := GetStdItemName(UserItem.wIndex);
    GridState.Cells[3,I+1] := IntToStr(UserItem.MakeIndex);
    GridState.Cells[4,I+1] := IntToStr(UserItem.Dura);
    GridState.Cells[5,I+1] := IntToStr(UserItem.DuraMax);
  end;

  for i := Low(HumInfo.Data.HumAddItems) to High(HumInfo.Data.HumAddItems) do begin
    if HumInfo.Data.HumAddItems[i].MakeIndex <= 0 then Continue;
    UserItem := HumInfo.Data.HumAddItems[i];
    GridState.Cells[1,I+1] := IntToStr(UserItem.wIndex);
    GridState.Cells[2,I+1] := GetStdItemName(UserItem.wIndex);
    GridState.Cells[3,I+1] := IntToStr(UserItem.MakeIndex);
    GridState.Cells[4,I+1] := IntToStr(UserItem.Dura);
    GridState.Cells[5,I+1] := IntToStr(UserItem.DuraMax);
  end;
end;

procedure TFrmMain.ShowStorageItems(HumInfo: THumDataInfo);
var
  I,II: Integer;
  UserItem: TUserItem;
begin
  for i := 1 to GridStore.RowCount - 1 do begin
    for ii := 1 to GridStore.ColCount - 1 do begin
      GridStore.Cells[ii, i] := '';
    end;
  end;
  for i := Low(HumInfo.Data.StorageItems) to High(HumInfo.Data.StorageItems) do begin
    if HumInfo.Data.StorageItems[i].MakeIndex <= 0 then Continue;
    UserItem := HumInfo.Data.StorageItems[i];
    GridStore.Cells[1,I+1] := IntToStr(UserItem.wIndex);
    GridStore.Cells[2,I+1] := GetStdItemName(UserItem.wIndex);
    GridStore.Cells[3,I+1] := IntToStr(UserItem.MakeIndex);
    GridStore.Cells[4,I+1] := IntToStr(UserItem.Dura);
    GridStore.Cells[5,I+1] := IntToStr(UserItem.DuraMax);
  end;
end;

procedure TFrmMain.ShowUserMagic(HumInfo: THumDataInfo);
var
  I,II: Integer;
  UserMagic: THumMagic;
begin
  for i := 1 to GridSkill.RowCount - 1 do begin
    for ii := 1 to GridSkill.ColCount - 1 do begin
      GridSkill.Cells[ii, i] := '';
    end;
  end;
  for I:=1 to 30 do begin
    GridSkill.Cells[0, I] := IntToStr(I);
  end;  
  for i := Low(HumInfo.Data.HumMagics) to High(HumInfo.Data.HumMagics) do begin
    if HumInfo.Data.HumMagics[i].wMagIdx <= 0 then Continue;
    UserMagic := HumInfo.Data.HumMagics[i];
    GridSkill.Cells[1,I+1] := GetMagicName(UserMagic.wMagIdx);
    GridSkill.Cells[2,I+1] := IntToStr(UserMagic.wMagIdx);
    GridSkill.Cells[3,I+1] := IntToStr(UserMagic.btLevel);
    GridSkill.Cells[4,I+1] := IntToStr(UserMagic.nTranPoint);
    GridSkill.Cells[5,I+1] := IntToStr(UserMagic.btKey);
  end;
end;
//显示内功技能
procedure TFrmMain.ShowUserMagic1(HumInfo: THumDataInfo);
var
  I,II: Integer;
  UserMagic: THumMagic;
begin
  for i := 1 to GridNGSkill.RowCount - 1 do begin
    for ii := 1 to GridNGSkill.ColCount - 1 do begin
      GridNGSkill.Cells[ii, i] := '';
    end;
  end;
  for I:=1 to 30 do begin
    GridSkill.Cells[0, I] := IntToStr(I);
  end;
  for i := Low(HumInfo.Data.HumNGMagics) to High(HumInfo.Data.HumNGMagics) do begin
    if HumInfo.Data.HumNGMagics[i].wMagIdx <= 0 then Continue;
    UserMagic := HumInfo.Data.HumNGMagics[i];
    GridNGSkill.Cells[1,I+1] := GetMagicName(UserMagic.wMagIdx);
    GridNGSkill.Cells[2,I+1] := IntToStr(UserMagic.wMagIdx);
    GridNGSkill.Cells[3,I+1] := IntToStr(UserMagic.btLevel);
    GridNGSkill.Cells[4,I+1] := IntToStr(UserMagic.nTranPoint);
    GridNGSkill.Cells[5,I+1] := IntToStr(UserMagic.btKey);
  end;
end;

procedure TFrmMain.ShowBagItem(HumInfo: THumDataInfo);
var
  I,II: Integer;
  UserItem: TUserItem;
begin
  for i := 1 to BagItemGrid.RowCount - 1 do begin
    for ii := 1 to BagItemGrid.ColCount - 1 do begin
      BagItemGrid.Cells[ii, i] := '';
    end;
  end;

  for i := Low(HumInfo.Data.BagItems) to High(HumInfo.Data.BagItems) do begin
    if HumInfo.Data.BagItems[i].MakeIndex <= 0 then Continue;
    UserItem := HumInfo.Data.BagItems[i];
    if UserItem.wIndex > 0 then begin
      BagItemGrid.Cells[1, I + 1] := IntToStr(UserItem.MakeIndex);
      BagItemGrid.Cells[2, I + 1] := IntToStr(UserItem.wIndex);
      BagItemGrid.Cells[3, I + 1] := GetStdItemName(UserItem.wIndex);
      BagItemGrid.Cells[4, I + 1] := IntToStr(UserItem.Dura);
      BagItemGrid.Cells[5, I + 1] := IntToStr(UserItem.DuraMax);
    end else begin
      BagItemGrid.Cells[1, I + 1] := '';
      BagItemGrid.Cells[2, I + 1] := '';
      BagItemGrid.Cells[3, I + 1] := '';
      BagItemGrid.Cells[4, I + 1] := '';
      BagItemGrid.Cells[5, I + 1] := '';
    end;
  end;
end;

procedure TFrmMain.ShowUserAccount(DBRecord: TAccountDBRecord);
begin
  EdtAccount.Text := DBRecord.UserEntry.sAccount;
  EdtPassWord.Text := DBRecord.UserEntry.sPassword;
  EdtUserName.Text := DBRecord.UserEntry.sUserName;
  EdtQuiz.Text := DBRecord.UserEntry.sQuiz;
  EdtAnswer.Text := DBRecord.UserEntry.sAnswer;
  EdtQuiz2.Text := DBRecord.UserEntryAdd.sQuiz2;
  EdtAnswer2.Text := DBRecord.UserEntryAdd.sAnswer2;
  EdtPhone.Text := DBRecord.UserEntry.sPhone;
  EdtMobilePhone.Text := DBRecord.UserEntryAdd.sMobilePhone;
  EdtMemo.Text := DBRecord.UserEntryAdd.sMemo;
  EdtMemo2.Text := DBRecord.UserEntryAdd.sMemo2;
  EdtEMail.Text := DBRecord.UserEntry.sEMail;
  DateTimeCreateDate.DateTime := DBRecord.Header.CreateDate;
  DateTimeUpdateDate.DateTime := DBRecord.Header.UpdateDate;
  EdtBirthDay.Text := DBRecord.UserEntryAdd.sBirthDay;
end;

procedure TFrmMain.FormDestroy(Sender: TObject);
begin
  HumChrDB.Free;
  HumDataDB.Free;
  AccountDB.Free;
  FrmMain:= nil;
end;

procedure TFrmMain.ComboBoxAccount1Change(Sender: TObject);
var
  sAccount: string;
  AccountList: TStringList;
  I, nIndex: Integer;
begin
  try
    sAccount := Trim(ComboBoxAccount1.Text);
    if sAccount = '' then Exit;
    AccountList := TStringList.Create;
    try
      if AccountDB.Open then begin
        if AccountDB.FindByName(sAccount, AccountList) > 0 then begin
          for I := 0 to AccountList.Count - 1 do begin
            nIndex := Integer(AccountList.Objects[I]);
            if AccountDB.GetBy(nIndex, DBRecord) then begin
              if CompareText(DBRecord.UserEntry.sAccount ,sAccount) = 0 then begin
                ShowUserAccount(DBRecord);
                Break;
              end;
            end;
          end;
        end;
      end;
    finally
      AccountDB.Close;
    end;
    AccountList.Free;
  except
  end;
end;

procedure TFrmMain.ToolBtnFindClick(Sender: TObject);
var
  sAccount: string;
  n10: Integer;
begin
  if Trim(EdtFindAccount.Text) = '' then begin
    Application.MessageBox('帐号不能为空！', '提示', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;
  try
    sAccount := Trim(EdtFindAccount.Text);
    if AccountDB.Open then begin
      n10 := AccountDB.Index(sAccount);
      if (n10 >= 0) and (AccountDB.Get(n10, DBRecord) >= 0) then begin
        ShowUserAccount(DBRecord);
      end else begin
        Application.MessageBox('没有找到你要查找的帐号！', '提示', MB_OK +
           MB_ICONINFORMATION);
      end;
    end;
  finally
    AccountDB.Close;
  end;
end;

procedure TFrmMain.RzToolButton2Click(Sender: TObject);
begin
  FrmBlurFind := TFrmBlurFind.Create(Application);
  FrmBlurFind.Open(2);
end;

procedure TFrmMain.RzToolButton4Click(Sender: TObject);
begin
  FrmBlurFind := TFrmBlurFind.Create(Application);
  FrmBlurFind.Open(1);
end;

procedure TFrmMain.RzToolButton8Click(Sender: TObject);
begin
  FrmBlurFind := TFrmBlurFind.Create(Application);
  FrmBlurFind.Open(2);
end;

procedure TFrmMain.ComboBoxHeroChange(Sender: TObject);
var
  s64: string;
  n08, nIndex: Integer;
begin
  s64 := ComboBoxHero.Text;
  try
    if HumDataDB.OpenEx then begin
      n08 := HumDataDB.Index(s64);
      if n08 >= 0 then begin
        nIndex := HumDataDB.Get(n08, HumInfo);
        if nIndex >= 0 then begin
           RefChrGrid(HumInfo);
        end;
      end;
    end;
  finally
    HumDataDB.Close;
  end;
end;

procedure TFrmMain.RzToolButton1Click(Sender: TObject);
var
  n10: Integer;
begin
  if Trim(RzEdit1.Text) = '' then begin
    Application.MessageBox('帐号不能为空！', '提示', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;
  try
    if AccountDB.Open then begin
      n10 := AccountDB.Index(Trim(RzEdit1.Text));
      if (n10 >= 0) and (AccountDB.Get(n10, DBRecord) >= 0) then begin
        ComboBoxAccount.Items.Clear;
        ComboBoxAccount.Style:= csDropDown;
        ComboBoxAccount.Text := RzEdit1.Text;
        ComboBoxAccount.OnChange(Sender);
        //ShowUserAccount(DBRecord);
      end else begin
        Application.MessageBox('没有找到你要查找的帐号！', '提示', MB_OK + MB_ICONINFORMATION);
        ComboBoxAccount.Style:= csDropDownList;
      end;
    end;
  finally
    AccountDB.Close;
  end;
end;

procedure TFrmMain.RzToolButton3Click(Sender: TObject);
var
  n08, nIndex: Integer;
  HumDBRecord: THumInfo;
  HumanRCD: THumDataInfo;
begin
  try
    if HumChrDB.OpenEx then begin
      n08 := HumChrDB.Index(Trim(RzEdit2.Text));
      if n08 >= 0 then begin
        nIndex := HumChrDB.Get(n08, HumDBRecord);
        if (nIndex >= 0) and (not HumDBRecord.Header.boIsHero) then begin
          ComboBoxAccount.Items.Clear;
          ComboBoxAccount.Style:= csDropDown;
          ComboBoxAccount.Text := HumDBRecord.sAccount;

          ComboBoxHum.Items.Clear;
          ComboBoxHum.Style:= csDropDown;
          ComboBoxHum.Text := Trim(RzEdit2.Text);

          try
            if HumDataDB.OpenEx then begin
              if HumDataDB.count > 0 then begin
                n08:= HumDataDB.Index(Trim(RzEdit2.Text));
                nIndex := HumDataDB.Get(n08, HumInfo);
                if nIndex >= 0 then begin
                  RefChrGrid(HumInfo);
                end;
                ComboBoxHero.Items.Clear;
                for nIndex:= 0 to HumDataDB.count -1 do begin
                  if HumDataDB.Get(nIndex, HumanRCD) >= 0 then begin
                    if HumanRCD.Data.boIsHero and (CompareText(Trim(RzEdit2.Text), HumanRCD.Data.sMasterName) = 0) then
                    ComboBoxHero.Items.Add(HumanRCD.Data.sChrName);
                  end;
                end;
              end;
            end;
          finally
            HumDataDB.Close;
          end;
        end else begin
          Application.MessageBox('没有找到你要查找的角色！', '提示', MB_OK + MB_ICONINFORMATION);
          ComboBoxHum.Style:= csDropDownList;
        end;
      end;
    end;
  finally
    HumChrDB.Close;
  end;
end;

procedure TFrmMain.RzBitBtn1Click(Sender: TObject);
var
  nIdx,I: Integer;
  boSaveOK: Boolean;
begin
if HumInfo.Header.sName <> '' then begin
  HumInfo.Header.dCreateDate := StrToDateTime(GridBase.Cells[0,1]); //登陆日期
  HumInfo.Header.boDeleted := StrToBool(GridBase.Cells[1,1]); //用户状态
  HumInfo.Data.sCurMap := GridBase.Cells[2,1]; //所在地图
  HumInfo.Data.wCurX := Str_ToInt(GridBase.Cells[3,1],0);//X坐标
  HumInfo.Data.wCurY := Str_ToInt(GridBase.Cells[4,1],0);//Y坐标
  HumInfo.Data.btDir := Str_ToInt(GridBase.Cells[5,1],0);//方位
  HumInfo.Data.btHair := Str_ToInt(GridBase.Cells[6,1],0);//发型
  HumInfo.Data.btSex := Str_ToInt(GridBase.Cells[7,1],0);//性别
  HumInfo.Data.btJob := Str_ToInt(GridBase.Cells[0,3],0);//职业
  HumInfo.Data.Abil.Level := Str_ToInt(GridBase.Cells[1,3],0);//等级
  HumInfo.Data.nGold := Str_ToInt(GridBase.Cells[2,3],0);//金币
  HumInfo.Data.nGameDiaMond := Str_ToInt(GridBase.Cells[3,3],0);//金刚石
  HumInfo.Data.nGameGold := Str_ToInt(GridBase.Cells[4,3],0);//元宝
  HumInfo.Data.nGameGird := Str_ToInt(GridBase.Cells[5,3],0);//灵符
  HumInfo.Data.btCreditPoint := Str_ToInt(GridBase.Cells[6,3],0);//声望
  HumInfo.Data.nPKPOINT := Str_ToInt(GridBase.Cells[7,3],0);//PK点

  HumInfo.Data.Abil.AC := Str_ToInt(GridBase.Cells[0,5],0);//防御力
  HumInfo.Data.Abil.MAC := Str_ToInt(GridBase.Cells[1,5],0);//魔御力
  HumInfo.Data.Abil.DC := Str_ToInt(GridBase.Cells[2,5],0);//攻击力
  HumInfo.Data.Abil.MC := Str_ToInt(GridBase.Cells[3,5],0);//魔法
  HumInfo.Data.Abil.SC := Str_ToInt(GridBase.Cells[4,5], 0);//道术
  HumInfo.Data.sHeroChrName := GridBase.Cells[5,5];//英雄名
  HumInfo.Data.n_UsesItemTick := Str_ToInt(GridBase.Cells[6,5], 0);//聚灵珠聚集时间 20080911
  HumInfo.Data.n_WinExp :=Str_ToInt(GridBase.Cells[7,5],0);//聚灵珠 累计经验 20080911

  HumInfo.Data.Abil.HP := Str_ToInt(GridBase.Cells[0,7],0);//当前HP
  HumInfo.Data.Abil.MaxHP := Str_ToInt(GridBase.Cells[1,7],0);//最大HP
  HumInfo.Data.Abil.MP := Str_ToInt(GridBase.Cells[2,7],0);//当前MP
  HumInfo.Data.Abil.MaxMP := Str_ToInt(GridBase.Cells[3,7],0);//最大MP
  HumInfo.Data.Abil.Exp := StrToInt64(GridBase.Cells[4,7]);//当前经验  20090101
  HumInfo.Data.Abil.MaxExp := strtoint64(GridBase.Cells[5,7]);//升级经验 20090101
  HumInfo.Data.boIsHero := StrToBool(GridBase.Cells[6,7]);//是否英雄
  HumInfo.Data.sHomeMap := GridBase.Cells[7,7];//回城地图

  HumInfo.Data.wHomeX := Str_ToInt(GridBase.Cells[0,9],0);//回城X
  HumInfo.Data.wHomeY := Str_ToInt(GridBase.Cells[1,9],0);//回城Y
  HumInfo.Data.sDearName := GridBase.Cells[2,9];//伴侣
  HumInfo.Data.sMasterName := GridBase.Cells[3,9];//师傅
  HumInfo.Data.sStoragePwd := GridBase.Cells[4,9];//仓库密码
  HumInfo.Data.nLoyal := Str_ToInt(GridBase.Cells[5,9],0);//忠诚度
  HumInfo.Data.nEXPRATE := Str_ToInt(GridBase.Cells[6,9],0);//杀怪倍数

  for i := Low(HumInfo.Data.HumItems) to High(HumInfo.Data.HumItems) do begin
    HumInfo.Data.HumItems[i].wIndex := Str_ToInt(GridState.Cells[1,I+1],0);
    HumInfo.Data.HumItems[i].MakeIndex := Str_ToInt(GridState.Cells[3,I+1],0);
    HumInfo.Data.HumItems[i].Dura := Str_ToInt(GridState.Cells[4,I+1],0);
    HumInfo.Data.HumItems[i].DuraMax := Str_ToInt(GridState.Cells[5,I+1],0);
  end;

  for i := Low(HumInfo.Data.HumAddItems) to High(HumInfo.Data.HumAddItems) do begin
    HumInfo.Data.HumAddItems[i].wIndex := Str_ToInt(GridState.Cells[1,I+1],0);
    HumInfo.Data.HumAddItems[i].MakeIndex := Str_ToInt(GridState.Cells[3,I+1],0);
    HumInfo.Data.HumAddItems[i].Dura := Str_ToInt(GridState.Cells[4,I+1],0);
    HumInfo.Data.HumAddItems[i].DuraMax := Str_ToInt(GridState.Cells[5,I+1],0);
  end;

  for i := Low(HumInfo.Data.StorageItems) to High(HumInfo.Data.StorageItems) do begin
    HumInfo.Data.StorageItems[i].wIndex := Str_ToInt(GridStore.Cells[1,I+1],0);
    HumInfo.Data.StorageItems[i].MakeIndex := Str_ToInt(GridStore.Cells[3,I+1],0);
    HumInfo.Data.StorageItems[i].Dura := Str_ToInt(GridStore.Cells[4,I+1],0);
    HumInfo.Data.StorageItems[i].DuraMax := Str_ToInt(GridStore.Cells[5,I+1],0);
  end;

  for i := Low(HumInfo.Data.BagItems) to High(HumInfo.Data.BagItems) do begin
    HumInfo.Data.BagItems[i].MakeIndex := Str_ToInt(BagItemGrid.Cells[1,I+1],0);
    HumInfo.Data.BagItems[i].wIndex := Str_ToInt(BagItemGrid.Cells[2,I+1],0);
    HumInfo.Data.BagItems[i].Dura := Str_ToInt(BagItemGrid.Cells[4,I+1],0);
    HumInfo.Data.BagItems[i].DuraMax := Str_ToInt(BagItemGrid.Cells[5,I+1],0);
  end;

  for i := Low(HumInfo.Data.HumMagics) to High(HumInfo.Data.HumMagics) do begin
    HumInfo.Data.HumMagics[i].wMagIdx:= Str_ToInt(GridSkill.Cells[2,I+1],0);
    HumInfo.Data.HumMagics[i].btLevel:= Str_ToInt(GridSkill.Cells[3,I+1],0);
    HumInfo.Data.HumMagics[i].nTranPoint:= Str_ToInt(GridSkill.Cells[4,I+1],0);
    HumInfo.Data.HumMagics[i].btKey:= Str_ToInt(GridSkill.Cells[5,I+1],0);
  end;

  for i := Low(HumInfo.Data.HumNGMagics) to High(HumInfo.Data.HumNGMagics) do begin
    HumInfo.Data.HumNGMagics[i].wMagIdx:= Str_ToInt(GridNGSkill.Cells[2,I+1],0);
    HumInfo.Data.HumNGMagics[i].btLevel:= Str_ToInt(GridNGSkill.Cells[3,I+1],0);
    HumInfo.Data.HumNGMagics[i].nTranPoint:= Str_ToInt(GridNGSkill.Cells[4,I+1],0);
    HumInfo.Data.HumNGMagics[i].btKey:= Str_ToInt(GridNGSkill.Cells[5,I+1],0);
  end;

  boSaveOK := False;
  try
    if HumDataDB.Open then begin
      nIdx := HumDataDB.Index(HumInfo.Header.sName);
      if (nIdx >= 0) then begin
        HumDataDB.Update(nIdx, HumInfo);
        boSaveOK := True;
      end;
    end;
  finally
    HumDataDB.Close;
  end;
  if boSaveOK then begin
    MessageBox(Handle, '人物数据保存成功！！！', '提示信息', MB_OK + MB_ICONINFORMATION);
  end else begin
    MessageBox(Handle, '人物数据保存失败！！！', '错误信息', MB_OK + MB_ICONEXCLAMATION);
  end;
  FillChar(HumInfo, SizeOf(THumDataInfo), #0);
  RefChrGrid(HumInfo);  
end;   
end;

procedure TFrmMain.RzEdit1Change(Sender: TObject);
begin
  RzEdit2.text:='';
end;

procedure TFrmMain.RzEdit2Change(Sender: TObject);
begin
  RzEdit1.text:='';
end;

procedure TFrmMain.RzBitBtn2Click(Sender: TObject);
var
  sChrName: string;
  I,II:Integer;
begin
  sChrName := HumInfo.Header.sName;
  if sChrName = '' then Exit;
  if MessageDlg('是否确认删除人物 ' + sChrName + ' 及人物数据？', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    try
      if HumChrDB.Open then begin
        HumChrDB.Delete(sChrName);
      end;
    finally
      HumChrDB.Close;
    end;
    try
      if HumDataDB.Open then HumDataDB.Delete(sChrName);
    finally
      HumDataDB.Close;
    end;
  end;
  FillChar(HumInfo, SizeOf(THumDataInfo), #0);
  RzEdit2.Text:='';
  RzEdit1.text:='';
  ComboBoxAccount.Text:='';
  ComboBoxHum.text:='';
  ComboBoxHero.Text:='';
  RefChrGrid(HumInfo);
  for I := 0 to GridBase.RowCount - 1 do begin
    for ii := 0 to GridBase.ColCount - 1 do begin
      if Odd(i) then
      GridBase.Cells[ii, i] := '';
    end;
  end;
end;

procedure TFrmMain.RzBitBtn3Click(Sender: TObject);
var
  sAccount: string;
  nIndex: integer;
  boSaveOK: Boolean;
begin
  boSaveOK := False;
  sAccount:= EdtAccount.Text;
  if sAccount = '' then Exit;
  DBRecord.UserEntry.sPassword := Trim(EdtPassWord.Text);
  DBRecord.UserEntry.sUserName := Trim(EdtUserName.Text);
  //DBRecord.UserEntry.sSSNo := Trim(EdSSNo.Text);
  //DBRecord.UserEntryAdd.sBirthDay := Trim(EdBirthDay.Text);
  DBRecord.UserEntry.sQuiz := Trim(EdtQuiz.Text);
  DBRecord.UserEntry.sAnswer := Trim(EdtAnswer.Text);
  DBRecord.UserEntryAdd.sQuiz2 := Trim(EdtQuiz2.Text);
  DBRecord.UserEntryAdd.sAnswer2 := Trim(EdtAnswer2.Text);
  DBRecord.UserEntry.sPhone := Trim(EdtPhone.Text);
  DBRecord.UserEntryAdd.sMobilePhone := Trim(EdtMobilePhone.Text);
  DBRecord.UserEntryAdd.sMemo := Trim(EdtMemo.Text);
  DBRecord.UserEntryAdd.sMemo2 := Trim(EdtMemo2.Text);
  DBRecord.UserEntry.sEMail := Trim(EdtEMail.Text);
  DBRecord.Header.CreateDate:= DateTimeCreateDate.DateTime;
  DBRecord.Header.UpdateDate:= DateTimeUpdateDate.DateTime;
  try
    if AccountDB.Open then begin
      nIndex := AccountDB.Index(sAccount);
      if nIndex >= 0 then
        if AccountDB.Update(nIndex, DBRecord) then begin
          ShowUserAccount(DBRecord);
          FillChar(DBRecord, SizeOf(TAccountDBRecord), #0);
          boSaveOK := True;
        end;
    end;
  finally
    AccountDB.Close;
  end;
  if boSaveOK then begin
    MessageBox(Handle, '账号数据保存成功！！！', '提示信息', MB_OK + MB_ICONINFORMATION);
  end else begin
    MessageBox(Handle, '账号数据保存失败！！！', '错误信息', MB_OK + MB_ICONEXCLAMATION);
  end;
end;

procedure TFrmMain.RzBitBtn4Click(Sender: TObject);
var
  sAccount: string;
  nIndex, I:Integer;
begin
  sAccount := EdtAccount.Text;
  if sAccount = '' then Exit;
  if MessageDlg('是否确认删除账号[ ' + sAccount + ' ]数据？', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
    try
      if AccountDB.Open then begin
        nIndex := AccountDB.Index(sAccount);
        if nIndex >= 0 then
          DBRecord.Header.boDeleted:= True;
          if AccountDB.Update(nIndex, DBRecord) then begin
            EdtAccount.Text := '';
            EdtPassWord.Text := '';
            EdtUserName.Text := '';
            EdtQuiz.Text := '';
            EdtAnswer.Text := '';
            EdtQuiz2.Text := '';
            EdtAnswer2.Text := '';
            EdtPhone.Text := '';
            EdtMobilePhone.Text := '';
            EdtMemo.Text := '';
            EdtMemo2.Text := '';
            EdtEMail.Text := '';
            EdtBirthDay.Text := '';
            FillChar(DBRecord, SizeOf(TAccountDBRecord), #0);
            I:= ComboBoxAccount1.IndexOf(sAccount);
            ComboBoxAccount1.Items.Delete(I);
          end;
      end;
    finally
      AccountDB.Close;
    end;
  end;
end;

//清理指定日期没上线过,且等于小于指定等级的数据
procedure TFrmMain.RzBitBtn6Click(Sender: TObject);
var
  I,II: Integer;
  NewChrDB: TFileHumDB;
  NewDataDB: TFileDB;
  sHumDBFile, sMirDBFile: string;
  SrcHumanRCD: THumDataInfo;
  HumRecord,HumRecord1: THumInfo;
  nSrcHumIndex: Integer;
  boIsNoHumDate: boolean;

  NewIDDB: TFileIDDB;
  DBRecord,DBRecord2: TAccountDBRecord;
begin
  RzBitBtn6.Enabled :=False;
  RzDateTimeEdit1.ReadOnly:= True;
  RzDateTimeEdit2.ReadOnly:= True;
  RzSpinEdit2.ReadOnly:= True;
  RzSpinEdit4.ReadOnly:= True;
  RzCheckBox1.ReadOnly:= True;
  RzCheckBox2.ReadOnly:= True;
  RzCheckBox3.ReadOnly:= True;
  RzCheckBox5.ReadOnly:= True;
  sHumDBFile := ExtractFilePath(sHumDBFilePath)+'NewHum.DB';
  sMirDBFile := ExtractFilePath(sMirDBFilePath)+'NewMir.DB';

  if FileExists(sHumDBFile) then DeleteFile(sHumDBFile);
  if FileExists(sMirDBFile) then DeleteFile(sMirDBFile);

  NewChrDB := TFileHumDB.Create(sHumDBFile);
  NewDataDB := TFileDB.Create(sMirDBFile);

  try
    if HumDataDB.Open and HumChrDB.Open then begin
      ProgressBar.Position:= 0;
      ProgressBar.Min := 0;
      ProgressBar.Max:= HumDataDB.m_QuickList.Count;
      for i := 0 to HumDataDB.m_QuickList.Count - 1 do begin
        if (HumDataDB.Get(i, SrcHumanRCD) < 0) or (SrcHumanRCD.Data.sChrName = '') then begin
           ProgressBar.Position:= ProgressBar.Position + 1;
           Continue;
        end;
        if RzCheckBox2.Checked then begin//清理已删除的角色
          FillChar(HumRecord, SizeOf(HumRecord), #0);
          nSrcHumIndex := HumChrDB.Index(SrcHumanRCD.Data.sChrName);
          if HumChrDB.GetBy(nSrcHumIndex, HumRecord) then begin
            if HumRecord.boDeleted then begin
              ProgressBar.Position:= ProgressBar.Position + 1;
              Continue;
            end;
          end;
        end;
        if RzRadioButton1.Checked then begin//清理指定日期,且等级小于指定值
           if (RzDateTimeEdit1.Date <= SrcHumanRCD.Header.dCreateDate) and
              (not SrcHumanRCD.Data.boIsHero) and //不清理英雄 20090108
              (SrcHumanRCD.Data.Abil.Level < RzSpinEdit2.Value) then begin
               ProgressBar.Position:= ProgressBar.Position + 1;
               Continue;
           end;
        end;
        if RzRadioButton2.Checked then begin
           if (RzDateTimeEdit2.Date <= SrcHumanRCD.Header.dCreateDate) then begin
             ProgressBar.Position:= ProgressBar.Position + 1;
             Continue;
           end;
        end;
        if RzCheckBox3.Checked then begin// 清理无数据的角色
           boIsNoHumDate:= False;
           for II := 0 to HumChrDB.m_QuickList.Count - 1 do begin
             HumChrDB.Get(II,HumRecord1);
             if CompareText(HumRecord1.sChrName,SrcHumanRCD.Data.sChrName)=0 then begin
               boIsNoHumDate:= True;
               Break;
             end;
           end;
           if not boIsNoHumDate then begin
             ProgressBar.Position:= ProgressBar.Position + 1;
             Continue;
           end;
        end;
        if RzCheckBox1.Checked then begin//清理等级未达到指定等级的角色 20090108
           if (not SrcHumanRCD.Data.boIsHero) and //不清理英雄
              (SrcHumanRCD.Data.Abil.Level < RzSpinEdit4.Value) then begin
               ProgressBar.Position:= ProgressBar.Position + 1;
               Continue;
           end;
        end;

        NewDataDB.Lock;
        try
          if NewDataDB.Index(SrcHumanRCD.Data.sChrName) >= 0 then begin
             ProgressBar.Position:= ProgressBar.Position + 1;
             Continue;
          end;
        finally
          NewDataDB.UnLock;
        end;
        FillChar(HumRecord, SizeOf(THumInfo), #0);
        try
          if NewChrDB.Open then begin
            if NewChrDB.ChrCountOfAccount(SrcHumanRCD.Data.sChrName) < 2 then begin
              HumRecord.sChrName := SrcHumanRCD.Data.sChrName;
              HumRecord.sAccount := SrcHumanRCD.Data.sAccount;
              HumRecord.Header.boIsHero:= SrcHumanRCD.Data.boIsHero;//20080916 统一英雄标识
              HumRecord.boDeleted := False;
              HumRecord.btCount := 0;
              HumRecord.Header.sName := SrcHumanRCD.Data.sChrName;
              NewChrDB.Add(HumRecord);
              ProgressBar.Position:= ProgressBar.Position + 1;
            end;
          end;
        finally
          NewChrDB.Close;
        end;

        try
          if NewDataDB.Open and (NewDataDB.Index(SrcHumanRCD.Data.sChrName) = -1) then begin
             NewDataDB.Add(SrcHumanRCD);
          end;
        finally
          NewDataDB.Close;
        end;
      end;
    end;
  finally
    HumDataDB.Close;
    HumChrDB.Close;
  end;

  NewChrDB.Free;
  NewDataDB.Free;
  if RzCheckBox5.Checked then begin//清理无角色账号
     sHumDBFile := ExtractFilePath(sIDDBFilePath)+'NewID.DB';
     if FileExists(sHumDBFile) then DeleteFile(sHumDBFile);
     NewIDDB := TFileIDDB.Create(sHumDBFile);

    try
      if AccountDB.Open then begin
        for I := 0 to AccountDB.m_QuickList.Count - 1 do begin
          if (AccountDB.Get(I, DBRecord) < 0) then Continue;
          if DBRecord.Header.boDeleted then Continue;
          try
            if HumChrDB.Open then begin
              if HumChrDB.ChrCountOfAccount(DBRecord.UserEntry.sAccount) = 0 then Continue;
            end;
          finally
            HumChrDB.Close;
          end;

          NewIDDB.Lock;
          try
            if NewIDDB.Index(DBRecord.UserEntry.sAccount) >= 0 then Continue;
          finally
            NewIDDB.UnLock;
          end;
          FillChar(DBRecord2, SizeOf(TAccountDBRecord), #0);
          try
            if NewIDDB.Open then begin
              DBRecord2.Header:= DBRecord.Header;
              DBRecord2.UserEntry:= DBRecord.UserEntry;
              DBRecord2.UserEntryAdd:= DBRecord.UserEntryAdd;
              DBRecord2.nErrorCount:= DBRecord.nErrorCount;
              DBRecord2.dwActionTick:= DBRecord.dwActionTick;
              DBRecord2.N:= DBRecord.N;
              NewIDDB.Add(DBRecord2);
            end;
          finally
            NewIDDB.Close;
          end;
        end;//for i := 0 to AccountDB.m_QuickList.Count - 1 do begin
      end;
    finally
      AccountDB.Close;
    end;
    NewIDDB.Free;
  end;

  if FileExists(sHumDBFilePath) then begin
     if FileExists(ExtractFilePath(sHumDBFilePath)+'Hum.bak') then DeleteFile(ExtractFilePath(sHumDBFilePath)+'Hum.bak');
     Renamefile(sHumDBFilePath, ExtractFilePath(sHumDBFilePath)+'Hum.bak');
  end;
  if FileExists(sMirDBFilePath) then begin
     if FileExists(ExtractFilePath(sMirDBFilePath)+'Mir.bak') then DeleteFile(ExtractFilePath(sMirDBFilePath)+'Mir.bak');
     Renamefile(sMirDBFilePath, ExtractFilePath(sMirDBFilePath)+'Mir.bak');
  end;
  if FileExists(ExtractFilePath(sHumDBFilePath)+'NewHum.DB') then begin
     Renamefile(ExtractFilePath(sHumDBFilePath)+'NewHum.DB',sHumDBFilePath);
  end;
  if FileExists(ExtractFilePath(sMirDBFilePath)+'NewMir.DB') then begin
     Renamefile(ExtractFilePath(sMirDBFilePath)+'NewMir.DB',sMirDBFilePath);
  end;

  if FileExists(sIDDBFilePath) then begin
     if FileExists(ExtractFilePath(sIDDBFilePath)+'ID.bak') then DeleteFile(ExtractFilePath(sIDDBFilePath)+'ID.bak');
     Renamefile(sIDDBFilePath, ExtractFilePath(sIDDBFilePath)+'ID.bak');
  end;
  if FileExists(ExtractFilePath(sIDDBFilePath)+'NewID.DB') then begin
     Renamefile(ExtractFilePath(sIDDBFilePath)+'NewID.DB', sIDDBFilePath);
  end;
  //删除索引文件
  if FileExists(ExtractFilePath(sMirDBFilePath)+'Mir.DB.idx') then DeleteFile(ExtractFilePath(sMirDBFilePath)+'Mir.DB.idx');
  if FileExists(ExtractFilePath(sMirDBFilePath)+'NewMir.DB.idx') then DeleteFile(ExtractFilePath(sMirDBFilePath)+'NewMir.DB.idx');
  if FileExists(ExtractFilePath(sIDDBFilePath)+'Id.DB.idx') then DeleteFile(ExtractFilePath(sIDDBFilePath)+'Id.DB.idx');
  if FileExists(ExtractFilePath(sIDDBFilePath)+'NewId.DB.idx') then DeleteFile(ExtractFilePath(sIDDBFilePath)+'NewId.DB.idx');

  RzDateTimeEdit1.ReadOnly:= False;
  RzDateTimeEdit2.ReadOnly:= False;
  RzSpinEdit2.ReadOnly:= False;
  RzSpinEdit4.ReadOnly:= False;
  RzCheckBox1.ReadOnly:= False;
  RzCheckBox2.ReadOnly:= False;
  RzCheckBox3.ReadOnly:= False;
  RzCheckBox5.ReadOnly:= False;
  ProgressBar.Position:= 0;
  RzBitBtn6.Enabled :=True;
  ShowMessage('完成！！！');
end;

procedure TFrmMain.RzBitBtn5Click(Sender: TObject);
var
  I, nIdx: Integer;
  SrcHumanRCD: THumDataInfo;
begin
  RzBitBtn5.Enabled :=False;
  RzComboBox1.ReadOnly:= True;
  RzSpinEdit1.ReadOnly:= True;
  RzComboBox2.ReadOnly:= True;
  RzSpinEdit3.ReadOnly:= True;
  try
    if HumDataDB.Open then begin
      ProgressBar.Position:= 0;
      ProgressBar.Min := 0;
      ProgressBar.Max:= HumDataDB.m_QuickList.Count;
      for I := 0 to HumDataDB.m_QuickList.Count - 1 do begin
        if (HumDataDB.Get(I, SrcHumanRCD) < 0) or (SrcHumanRCD.Data.sChrName = '') then begin
          ProgressBar.Position:= ProgressBar.Position + 1;
          Continue;
        end;
        case RzComboBox1.ItemIndex of
          0: begin//大于
             if SrcHumanRCD.Data.Abil.Level > RzSpinEdit1.Value then begin
               case RzComboBox2.ItemIndex of
                 0: SrcHumanRCD.Data.Abil.Level:= RzSpinEdit3.value;
                 1: SrcHumanRCD.Data.Abil.Level:= SrcHumanRCD.Data.Abil.Level + RzSpinEdit3.value;
                 2: SrcHumanRCD.Data.Abil.Level:= SrcHumanRCD.Data.Abil.Level - RzSpinEdit3.value;
               end;
             end;
           end;//0
          1: begin//等于
             if SrcHumanRCD.Data.Abil.Level = RzSpinEdit1.Value then begin
               case RzComboBox2.ItemIndex of
                 0: SrcHumanRCD.Data.Abil.Level:= RzSpinEdit3.value;
                 1: SrcHumanRCD.Data.Abil.Level:= SrcHumanRCD.Data.Abil.Level + RzSpinEdit3.value;
                 2: SrcHumanRCD.Data.Abil.Level:= SrcHumanRCD.Data.Abil.Level - RzSpinEdit3.value;
               end;
             end;
           end;
          2: begin//小于
             if SrcHumanRCD.Data.Abil.Level < RzSpinEdit1.Value then begin
               case RzComboBox2.ItemIndex of
                 0: SrcHumanRCD.Data.Abil.Level:= RzSpinEdit3.value;
                 1: SrcHumanRCD.Data.Abil.Level:= SrcHumanRCD.Data.Abil.Level + RzSpinEdit3.value;
                 2: SrcHumanRCD.Data.Abil.Level:= SrcHumanRCD.Data.Abil.Level - RzSpinEdit3.value;
               end;
             end;
           end;
        end;
        nIdx := HumDataDB.Index(SrcHumanRCD.Header.sName);
        if (nIdx >= 0) then begin
          HumDataDB.Update(nIdx, SrcHumanRCD);
          ProgressBar.Position:= ProgressBar.Position + 1;
        end;
      end;
    end;
  finally
    HumDataDB.Close;
  end;
  RzComboBox1.ReadOnly:= False;
  RzSpinEdit1.ReadOnly:= False;
  RzComboBox2.ReadOnly:= False;
  RzSpinEdit3.ReadOnly:= False;
  ProgressBar.Position:= 0;
  RzBitBtn5.Enabled :=True;
  ShowMessage('完成！！！');
end;

procedure TFrmMain.RzBitBtn7Click(Sender: TObject);
var
  i: Integer;
  NewIDDB: TFileIDDB;
  sDBFile: string;
  DBRecord,DBRecord2: TAccountDBRecord;
begin
  RzBitBtn7.Enabled :=False;
  sDBFile := ExtractFilePath(sIDDBFilePath)+'NewID.DB';
  if FileExists(sDBFile) then DeleteFile(sDBFile);
  NewIDDB := TFileIDDB.Create(sDBFile);
  try
    if AccountDB.Open then begin
      ProgressBar.Position:= 0;
      ProgressBar.Min := 0;
      ProgressBar.Max:= AccountDB.m_Header.nIDCount;
      for I := 0 to AccountDB.m_Header.nIDCount - 1 do begin
        if AccountDB.GetBy( I, DBRecord) then begin
          if DBRecord.Header.boDeleted or (Length(DBRecord.UserEntry.sAccount) < 3) or
            (Trim(DBRecord.UserEntry.sPassword)='') or (Trim(DBRecord.UserEntry.sUserName)='') then begin
             ProgressBar.Position:= ProgressBar.Position + 1;
             Continue;
          end;
          NewIDDB.Lock;
          try
            if NewIDDB.Index(DBRecord.UserEntry.sAccount) >= 0 then begin
              ProgressBar.Position:= ProgressBar.Position + 1;
              Continue;
            end;
          finally
            NewIDDB.UnLock;
          end;
          FillChar(DBRecord2, SizeOf(TAccountDBRecord), #0);
          try
            if NewIDDB.Open then begin
              DBRecord2.Header:= DBRecord.Header;
              DBRecord2.UserEntry.sAccount := Trim(DBRecord.UserEntry.sAccount);//账号
              DBRecord2.UserEntry.sPassword := Trim(DBRecord.UserEntry.sPassword);//密码
              DBRecord2.UserEntry.sUserName := Trim(DBRecord.UserEntry.sUserName);//用户名称
              DBRecord2.UserEntry.sSSNo := Trim(DBRecord.UserEntry.sSSNo);//身份证
              DBRecord2.UserEntry.sPhone := Trim(DBRecord.UserEntry.sPhone);//电话
              DBRecord2.UserEntry.sQuiz := Trim(DBRecord.UserEntry.sQuiz);//问题1
              DBRecord2.UserEntry.sAnswer := Trim(DBRecord.UserEntry.sAnswer);//答案1
              DBRecord2.UserEntry.sEMail := Trim(DBRecord.UserEntry.sEMail);//邮箱

              DBRecord2.UserEntryAdd.sBirthDay := Trim(DBRecord.UserEntryAdd.sBirthDay);
              DBRecord2.UserEntryAdd.sQuiz2 := Trim(DBRecord.UserEntryAdd.sQuiz2);
              DBRecord2.UserEntryAdd.sAnswer2 := Trim(DBRecord.UserEntryAdd.sAnswer2);
              DBRecord2.UserEntryAdd.sMobilePhone := Trim(DBRecord.UserEntryAdd.sMobilePhone);
              DBRecord2.UserEntryAdd.sMemo := Trim(DBRecord.UserEntryAdd.sMemo);
              DBRecord2.UserEntryAdd.sMemo2 := Trim(DBRecord.UserEntryAdd.sMemo2);

              DBRecord2.nErrorCount:= DBRecord.nErrorCount;
              DBRecord2.dwActionTick:= DBRecord.dwActionTick;
              DBRecord2.N:= DBRecord.N;
              NewIDDB.Add(DBRecord2);
              ProgressBar.Position:= ProgressBar.Position + 1;
            end;
          finally
            NewIDDB.Close;
          end;
        end;
      end;
    end;
  finally
    AccountDB.Close;
  end;
  RzBitBtn7.Enabled :=True;
  ProgressBar.Position := 0;
  ShowMessage('修复ID.DB [ '+sDBFile+' ]完成！！！');
end;

procedure TFrmMain.RzBitBtn8Click(Sender: TObject);
var
  I: Integer;
  NewChrDB: TFileHumDB;
  NewDataDB: TFileDB;
  sHumDBFile, sMirDBFile: string;
  SrcHumanRCD: THumDataInfo;
  HumRecord: THumInfo;
begin
  RzBitBtn8.Enabled := False;

  sHumDBFile := ExtractFilePath(sHumDBFilePath)+'NewHum.DB';
  sMirDBFile := ExtractFilePath(sMirDBFilePath)+'NewMir.DB';

  if FileExists(sHumDBFile) then DeleteFile(sHumDBFile);
  if FileExists(sMirDBFile) then DeleteFile(sMirDBFile);

  NewChrDB := TFileHumDB.Create(sHumDBFile);
  NewDataDB := TFileDB.Create(sMirDBFile);

  try
    if HumDataDB.Open and HumChrDB.Open then begin
      ProgressBar.Position:= 0;
      ProgressBar.Min := 0;
      ProgressBar.Max:= HumDataDB.m_QuickList.Count;
      for I := 0 to HumDataDB.m_QuickList.Count - 1 do begin
        if (HumDataDB.Get(i, SrcHumanRCD) < 0) then begin
          ProgressBar.Position:= ProgressBar.Position + 1;
          Continue;
        end;
        if (SrcHumanRCD.Data.sChrName = '') or (SrcHumanRCD.Data.sAccount = '') then begin
          ProgressBar.Position:= ProgressBar.Position + 1;
          Continue;
        end;
        NewDataDB.Lock;
        try
          if NewDataDB.Index(SrcHumanRCD.Data.sChrName) >= 0 then Continue;
        finally
          NewDataDB.UnLock;
        end;
        FillChar(HumRecord, SizeOf(THumInfo), #0);
        try
          if NewChrDB.Open then begin
            if NewChrDB.ChrCountOfAccount(SrcHumanRCD.Data.sChrName) < 2 then begin
              HumRecord.sChrName := SrcHumanRCD.Data.sChrName;
              HumRecord.sAccount := SrcHumanRCD.Data.sAccount;
              HumRecord.boDeleted := False;
              HumRecord.btCount := 0;
              HumRecord.Header.sName := SrcHumanRCD.Data.sChrName;
              HumRecord.Header.boIsHero:= SrcHumanRCD.Header.boIsHero;//是否英雄
              HumRecord.Header.dCreateDate:= Now();//最后登录时间
              NewChrDB.Add(HumRecord);
              ProgressBar.Position:= ProgressBar.Position + 1;
            end;
          end;
        finally
          NewChrDB.Close;
        end;

        try
          if NewDataDB.Open and (NewDataDB.Index(SrcHumanRCD.Data.sChrName) = -1) then begin
            NewDataDB.Add(SrcHumanRCD);
          end;
        finally
          NewDataDB.Close;
        end;
      end;
    end;
  finally
    HumDataDB.Close;
    HumChrDB.Close;
  end;
  RzBitBtn8.Enabled :=True;
  ProgressBar.Position := 0;
  ShowMessage('修复Hum.DB [ '+sHumDBFile+' ]完成！！！'+#13+#10+
              '修复Mir.DB [ '+sMirDBFile+' ]完成！！！' );
end;

procedure TFrmMain.RzToolButton6Click(Sender: TObject);
Var  i, cr : integer;
begin
  cr := GridSkill.Selection.Top;
  if HumInfo.Header.sName <> '' then begin
    if (cr < 0) or (GridSkill.Cells[1, cr] = '') then Exit;
    if MessageDlg('是否确认删除人物技能 [ ' + GridSkill.Cells[1, cr] + ' ]？', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      If cr <= GridSkill.RowCount then Begin
        for I := cr + 1 to GridSkill.RowCount-1 do
         GridSkill.Rows[I-1].Assign(GridSkill.Rows[I]);
        GridSkill.RowCount := GridSkill.RowCount -1;
      end;
    end;
  end;
end;

procedure TFrmMain.RzToolButton5Click(Sender: TObject);
begin
  if HumInfo.Header.sName <> '' then begin
    AddMagicFrm := TAddMagicFrm.Create(Application);
    AddMagicFrm.nCode:= 0;
    AddMagicFrm.IsHero:= HumInfo.Header.boIsHero;
    AddMagicFrm.ShowModal;
    AddMagicFrm.Free;
  end;
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFrmMain.N1Click(Sender: TObject);
Var cr : integer;
begin
  cr := GridStore.Selection.Top;
  if HumInfo.Header.sName <> '' then begin
    if (cr < 0) or (GridStore.Cells[1, cr] = '') then Exit;
    if MessageDlg('是否确认删除人物仓库物品 [ ' + GridStore.Cells[1, cr] + ' ]？', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      GridStore.Cells[1, cr]:= '';
      GridStore.Cells[2, cr]:= '';
      GridStore.Cells[3, cr]:= '';
      GridStore.Cells[4, cr]:= '';
      GridStore.Cells[5, cr]:= '';
    end;
  end;
end;

procedure TFrmMain.N2Click(Sender: TObject);
Var cr : integer;
begin
  cr := BagItemGrid.Selection.Top;
  if HumInfo.Header.sName <> '' then begin
    if (cr < 0) or (BagItemGrid.Cells[1, cr] = '') then Exit;
    if MessageDlg('是否确认删除人物背包物品 [ '+ BagItemGrid.Cells[3, cr] + ' ('+BagItemGrid.Cells[1, cr]+') ]？', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      BagItemGrid.Cells[1, cr]:= '';
      BagItemGrid.Cells[2, cr]:= '';
      BagItemGrid.Cells[3, cr]:= '';
      BagItemGrid.Cells[4, cr]:= '';
      BagItemGrid.Cells[5, cr]:= '';
    end;
  end;
end;

procedure TFrmMain.N3Click(Sender: TObject);
Var cr : integer;
begin
  cr := GridStore.Selection.Top;
  if HumInfo.Header.sName <> '' then begin
    if (cr < 0) or (GridStore.Cells[1, cr] = '') then Exit;
    if MessageDlg('是否确认删除人物装备物品 [ '+ GridStore.Cells[2, cr] + ' ('+GridStore.Cells[1, cr]+') ]？', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      GridStore.Cells[1, cr]:= '';
      GridStore.Cells[2, cr]:= '';
      GridStore.Cells[3, cr]:= '';
      GridStore.Cells[4, cr]:= '';
      GridStore.Cells[5, cr]:= '';
    end;
  end;
end;

procedure TFrmMain.RzToolButton9Click(Sender: TObject);
Var  i, cr : integer;
begin
  cr := GridNGSkill.Selection.Top;
  if HumInfo.Header.sName <> '' then begin
    if (cr < 0) or (GridNGSkill.Cells[1, cr] = '') then Exit;
    if MessageDlg('是否确认删除人物内功技能 [ ' + GridNGSkill.Cells[1, cr] + ' ]？', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      If cr <= GridNGSkill.RowCount then Begin
        for I := cr + 1 to GridNGSkill.RowCount-1 do
         GridNGSkill.Rows[I-1].Assign(GridNGSkill.Rows[I]);
        GridNGSkill.RowCount := GridNGSkill.RowCount -1;
      end;
    end;
  end;

end;

procedure TFrmMain.RzToolButton7Click(Sender: TObject);
begin
  if HumInfo.Header.sName <> '' then begin
    AddMagicFrm := TAddMagicFrm.Create(Application);
    AddMagicFrm.nCode:= 1;
    AddMagicFrm.IsHero:= HumInfo.Header.boIsHero;
    AddMagicFrm.ShowModal;
    AddMagicFrm.Free;
  end;
end;

end.
