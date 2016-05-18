unit GateShare;

interface
uses
  Windows, Messages, Classes, SysUtils, JSocket, WinSock, SyncObjs;
const
  GATEMAXSESSION = 10000;
  g_sProductName = 'FD1EA72C79B07428F8528533F37DF840586745DD9DF92EC3'; //IGE�Ƽ���ɫ����
  g_sVersion = 'FE53B0C5F100588B2F344FC7EADF5DF93639F1FDDACB12B8';  //2.00 Build 20081130
  g_sUpDateTime = '2B3C92E5A380E14808DFF0F64DF6A65C'; //2008/11/30
  g_sProgram = 'C0CB995DE0C2A55814577F81CCE3A3BD'; //IGE�Ƽ�
  g_sWebSite = 'E14A1EC77CDEF28A670B57F56B07D834D8758E442B312AF440574B5A981AB1752C73BF5C6670B79C'; //http://www.IGEM2.com(����վ)
  g_sBbsSite = '2E5A58E761D583C119D6606E0F38D7A9D8758E442B312AF440574B5A981AB17538E97FF2F0C39555'; //http://www.IGEM2.com.cn(����վ)
  //g_sProductInfo = '8DFDF45695C4099770F02197A7BCE1C5B07D1DD7CD1455D1783D523EA941CBFB'; //��ӭʹ��IGE����ϵ������:
  //g_sSellInfo1 = '71043F0BD11D04C7BA0E09F9A2EF83B7B936E13B070575B9';//��ϵ(QQ):228589790
type
  TGList = class(TList)
  private
    GLock: TRTLCriticalSection;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Lock;
    procedure UnLock;
  end;

  TBlockIPMethod = (mDisconnect, mBlock, mBlockList);
  TSockaddr = record
    nIPaddr: Integer;
    nAttackCount: Integer;
    dwStartAttackTick: LongWord;
    nSocketHandle: Integer;
  end;
  pTSockaddr = ^TSockaddr;

procedure LoadBlockIPFile();
procedure SendGameCenterMsg(wIdent: Word; sSendMsg: string);
procedure SaveBlockIPList();
var
  CS_MainLog: TCriticalSection;
  CS_FilterMsg: TCriticalSection;
  MainLogMsgList: TStringList;
  BlockIPList: TGList;
  TempBlockIPList: TGList;
  CurrIPaddrList: TGList;
  {CurrIPaddrArray:array [0..GATEMAXSESSION - 1] of Integer;
  nSocketCount:Integer = 0;}
  AttackIPaddrList: TGList;
  nIPCountLimit: Integer = 20;
  //nIPCountLimit2              :Integer = 40;
  nShowLogLevel: Integer = 3;
  StringList456A14: TStringList;
  GateClass: string = 'SelGate';
  GateName: string = '��ɫ����';
  TitleName: string = 'IGE�Ƽ�';
  ServerPort: Integer = 5100;     //����DBSERVER�Ķ˿�
  ServerAddr: string = '127.0.0.1';
  GatePort: Integer = 7100;       //���ӿͻ��˵Ķ˿�
  GateAddr: string = '0.0.0.0';

  boGateReady: Boolean = False;
  boShowMessage: Boolean;
  boStarted: Boolean = False;
  boClose: Boolean = False;
  boServiceStart: Boolean = False;
  dwKeepAliveTick: LongWord;
  boKeepAliveTimcOut: Boolean = False;
  nSendMsgCount: Integer;
  n456A2C: Integer;
  n456A30: Integer;
  boSendHoldTimeOut: Boolean;
  dwSendHoldTick: LongWord;
  boDecodeLock: Boolean;
  nMaxConnOfIPaddr: Integer = 10;
  BlockMethod: TBlockIPMethod = mBlock;
  dwKeepConnectTimeOut: LongWord = 120000{60 * 1000};//20081215
  g_boDynamicIPDisMode: Boolean = False; //���ڶ�̬IP���ֻ����õ�¼�����ã��򿪴�ģʽ�����ؽ�������ӵ�¼��������IP��ַ����Ϊ������IP��������¼���������ͻ��˽�ֱ��ʹ�ô�IP���ӽ�ɫ����
  g_dwGameCenterHandle: THandle;
  g_sNowStartGate: string = '����������ɫ����...';
  g_sNowStartOK: string = '������ɫ�������...';

  UseBlockMethod: TBlockIPMethod;
  nUseAttackLevel: Integer;

  dwAttackTime: LongWord = 100;
  nAttackCount: Integer = 5;
  nReviceMsgLength: Integer = 380; //ÿMS�������ܵĳ��ȣ���������Ϊ�ǹ���
  dwReviceTick: LongWord = 500;
  nAttackLevel: Integer = 1;
  nMaxClientMsgCount: Integer = 1;
  m_nAttackCount: Integer = 0;
  m_dwAttackTick: LongWord = 0;

  g_boMinimize: Boolean = True;
  g_boChgDefendLevel: Boolean = True;//�Զ����������ȼ�
  g_nChgDefendLevel:Integer = 3; //�������Ĵ���
  g_boClearTempList: Boolean = True;
  g_dwClearTempList: LongWord = 120;
  g_boReliefDefend: Boolean = True;//��ԭ����
  g_dwReliefDefend: LongWord = 120;//��ԭ���� �ȴ�ʱ��
const
  tSelGate = 6;//20071222 ����,�������������ر�,Ҫ����������ͬ������ֵһ��
implementation

{----------------��ȡ����IP�б�����--------------------}
procedure LoadBlockIPFile();
var
  I: Integer;
  sFileName: string;
  LoadList: TStringList;
  sIPaddr: string;
  nIPaddr: Integer;
  IPaddr: pTSockaddr;
begin
  sFileName := '.\BlockIPList.txt';
  if FileExists(sFileName) then begin
    LoadList := TStringList.Create;
    LoadList.LoadFromFile(sFileName);
    for I := 0 to LoadList.Count - 1 do begin
      sIPaddr := Trim(LoadList.Strings[0]);
      if sIPaddr = '' then Continue;
      nIPaddr := inet_addr(PChar(sIPaddr));
      if nIPaddr = INADDR_NONE then Continue;
      New(IPaddr);
      FillChar(IPaddr^, SizeOf(TSockaddr), 0);
      IPaddr.nIPaddr := nIPaddr;
      BlockIPList.Add(IPaddr);
    end;
    LoadList.Free;
  end;
end;
{--------------��������IP�Ĺ���-----------------}
procedure SaveBlockIPList();
var
  I: Integer;
  SaveList: TStringList;
begin
  SaveList := TStringList.Create;
  for I := 0 to BlockIPList.Count - 1 do begin
    SaveList.Add(StrPas(inet_ntoa(TInAddr(pTSockaddr(BlockIPList.Items[I]).nIPaddr))));
  end;
  SaveList.SaveToFile('.\BlockIPList.txt');
  SaveList.Free;
end;

procedure SendGameCenterMsg(wIdent: Word; sSendMsg: string);
var
  SendData: TCopyDataStruct;
  nParam: Integer;
begin
  nParam := MakeLong(Word(tSelGate), wIdent);
  SendData.cbData := Length(sSendMsg) + 1;
  GetMem(SendData.lpData, SendData.cbData);
  StrCopy(SendData.lpData, PChar(sSendMsg));
  SendMessage(g_dwGameCenterHandle, WM_COPYDATA, nParam, Cardinal(@SendData));
  FreeMem(SendData.lpData);
end;

constructor TGList.Create;
begin
  inherited Create;
  InitializeCriticalSection(GLock);
end;

destructor TGList.Destroy;
begin
  DeleteCriticalSection(GLock);
  inherited;
end;

procedure TGList.Lock;
begin
  EnterCriticalSection(GLock);
end;

procedure TGList.UnLock;
begin
  LeaveCriticalSection(GLock);
end;

initialization
  begin
    CS_MainLog := TCriticalSection.Create;
    CS_FilterMsg := TCriticalSection.Create;
    StringList456A14 := TStringList.Create;
    MainLogMsgList := TStringList.Create;
  end;

finalization
  begin
    StringList456A14.Free;
    MainLogMsgList.Free;
    CS_MainLog.Free;
    CS_FilterMsg.Free;
  end;

end.
