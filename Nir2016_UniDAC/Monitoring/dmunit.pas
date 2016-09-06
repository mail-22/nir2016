unit DMUnit;

//Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\Work\Metro_Project\Bin\data\db.mdb;Mode=ReadWrite;Extended Properties="";Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False
interface

uses Forms, ADOint, IniFiles, DbUtil
  , utility
  , SysUtils, Classes, ADODB, DB, DisplayLabel, Dialogs
  , JvJCLUtils, JvComponentBase, JvBDEFilter, Windows,
  JvDSADialogs, cxClasses, uADStanIntf, uADStanOption, uADStanError,
  uADGUIxIntf, uADPhysIntf, uADStanDef, uADStanPool, uADStanAsync,
  uADPhysManager, uADStanParam, uADDatSManager, uADDAptIntf,
  uADDAptManager, uADPhysODBCBase, uADPhysMSAcc, uADCompDataSet,
  uADCompClient, uADGUIxFormsWait, uADCompGUIx, MemDS, DBAccess, Uni,
  UniProvider, ODBCUniProvider, AccessUniProvider, DAAlerter, UniAlerter,
  DASQLMonitor, UniSQLMonitor
//, frxClass
//, frxDBSet
  //, frxClass, frxDBSet
  ;

type
  TDM = class(TDataModule)
    OpenDialog1: TOpenDialog;
    JvDBFilter1: TJvDBFilter;
    dsBilding: TDataSource;
    dsTrebovan: TDataSource;
    dsNorm: TDataSource;
    dstblVypoln: TDataSource;
    dsNormOfBilding: TDataSource;
    ADGUIxWaitCursor1: TADGUIxWaitCursor;
    UniConnection1: TUniConnection;
    tblBilding: TUniQuery;
    tblBildingid: TIntegerField;
    tblBildingDSDesigner: TStringField;
    tblBildingDSDesigner2: TStringField;
    tblBildingDSDesigner3: TStringField;
    tblBildingDSDesigner4: TStringField;
    tblBildingDSDesigner5: TStringField;
    tblBildingDSDesigner6: TStringField;
    tblBildingDSDesigner7: TStringField;
    tblBildingDSDesigner8: TStringField;
    tblBildingDSDesigner9: TStringField;
    tblBildingDSDesigner10: TStringField;
    tblBildingDSDesigner11: TStringField;
    tblBildingDSDesigner12: TStringField;
    tblBildingDSDesigner13: TStringField;
    tblBildingDSDesigner14: TStringField;
    tblBildingDSDesigner15: TStringField;
    tblBildingDSDesigner16: TStringField;
    tblBildingDSDesigner17: TStringField;
    tblBildingC: TStringField;
    tblBildingDSDesigner18: TStringField;
    tblBildingDSDesigner19: TStringField;
    tblBildingDSDesigner20: TStringField;
    tblBildingDSDesigner21: TStringField;
    tblBildingDSDesigner22: TStringField;
    tblBildingDSDesigner23: TStringField;
    tblBildingDSDesigner24: TStringField;
    tblBildingDSDesigner25: TStringField;
    tblBildingDSDesigner0: TIntegerField;
    tblBildingDSDesigner26: TIntegerField;
    tblBildingDSDesigner27: TIntegerField;
    tblBildingDSDesigner28: TIntegerField;
    tblBildingDSDesigner29: TIntegerField;
    tblBildingrtf: TMemoField;
    tblBildingAdress: TStringField;
    tblBildingStreet: TStringField;
    tblBildingBildingNo: TStringField;
    tblBildingRegion: TStringField;
    tblBildingDSDesigner30: TStringField;
    tblBildingDSDesigner31: TStringField;
    tblBildingsootvet: TBooleanField;
    tblBildingPprT: TIntegerField;
    tblBildingZT: TIntegerField;
    tblBildingEt: TIntegerField;
    tblBildingP1: TIntegerField;
    tblBildingP2: TIntegerField;
    AccessUniProvider1: TAccessUniProvider;
    tblVypoln: TUniQuery;
    tblVypolnid: TIntegerField;
    tblVypolnN: TStringField;
    tblVypolnDSDesigner: TStringField;
    tblVypolnDSDesigner2: TBooleanField;
    tblVypolnfid_Bilding: TIntegerField;
    tblVypolnDSDesigner1: TIntegerField;
    tblVypolnSOOTVETSTV: TSmallintField;
    tblVypolnrtf: TMemoField;
    tblVypolnNTreb: TIntegerField;
    tblVypolnNTreb2: TIntegerField;
    tblVypolntest: TIntegerField;
    tblNorm: TUniQuery;
    tblNormOfBilding: TUniQuery;
    tblNormid: TIntegerField;
    tblNormN: TStringField;
    tblNormDSDesigner: TStringField;
    tblNormDSDesigner2: TStringField;
    tblNormDSDesigner3: TStringField;
    tblNormDSDesigner4: TStringField;
    tblNormDSDesigner5: TMemoField;
    tblNormF8: TMemoField;
    UniTransaction1: TUniTransaction;
    tblVypolnAll: TUniQuery;
    tblVypolnAllid: TADAutoIncField;
    tblVypolnAllADDSDesigner: TStringField;
    tblVypolnAllADDSDesigner2: TBooleanField;
    tblVypolnAllfid_Bilding: TIntegerField;
    tblVypolnAllADDSDesigner1: TIntegerField;
    tblVypolnAllSOOTVETSTV: TSmallintField;
    tblVypolnAllrtf: TMemoField;
    tblVypolnAllNTreb: TIntegerField;
    tblVypolnAllNTreb2: TIntegerField;
    tblVypolnAlltest: TIntegerField;
    strngfldVypolnAllN: TStringField;
    tblVypoln_SOOTVETSTV: TUniQuery;
    adtncfld1: TADAutoIncField;
    strngfldVypoln_SOOTVETSTVN: TStringField;
    strngfldVypoln_SOOTVETSTVADDSDesigner: TStringField;
    blnfldVypoln_SOOTVETSTVADDSDesigner2: TBooleanField;
    intgrfldVypoln_SOOTVETSTVfid_Bilding: TIntegerField;
    intgrfldVypoln_SOOTVETSTVADDSDesigner1: TIntegerField;
    smlntfldVypoln_SOOTVETSTVSOOTVETSTV: TSmallintField;
    mfldVypoln_SOOTVETSTVrtf: TMemoField;
    intgrfldVypoln_SOOTVETSTVNTreb: TIntegerField;
    intgrfldVypoln_SOOTVETSTVNTreb2: TIntegerField;
    intgrfldVypoln_SOOTVETSTVtest: TIntegerField;
    tdlTrebovan: TUniQuery;
    tdlTrebovanid: TADAutoIncField;
    strngfldTrebovanN: TStringField;
    strngfldTrebovanADDSDesigner: TStringField;
    blnfldTrebovanADDSDesigner2: TBooleanField;
    intgrfldTrebovanADDSDesigner1: TIntegerField;
    mfldTrebovanrtf: TMemoField;
    intgrfldTrebovanParentField: TIntegerField;
    intgrfldTrebovanDetailField: TIntegerField;
    UniSQLMonitor1: TUniSQLMonitor;
    UniAlerter1: TUniAlerter;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryDescription0AfterPost(DataSet: TDataSet);
    procedure tblDescriptionAfterPost(DataSet: TDataSet);
    procedure qryDescription0AfterRefresh(DataSet: TDataSet);
    procedure qryDescription0WillChangeRecord(DataSet: TDataSet;
      const Reason: TEventReason; const RecordCount: Integer;
      var EventStatus: TEventStatus);
    procedure qryDescription0BeforeRefresh(DataSet: TDataSet);
    procedure tblMetroAfterPost(DataSet: TDataSet);
    procedure tblMetroBeforePost(DataSet: TDataSet);
    procedure tblBildingAfterInsert(DataSet: TDataSet);
    procedure tblNormFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure tblVypoln0AfterScroll(DataSet: TDataSet);
    procedure tblVypolnAfterScroll(DataSet: TDataSet);

  private
    Data_Source: string;
    ProcessDL: boolean;
    DL: TDL;
    procedure AfterPost(DataSet: TDataSet);
    procedure BeforePost(DataSet: TDataSet);

  protected
    CursorLocation: TCursorLocation;
    ResyncValue: OleVariant;
    CursorType: TCursorType;
    UpdateCriteria: OleVariant;
    LockType: TADOLockType;
    MarshalOptions: TMarshalOption;

    MaxRecords: Integer;
    BlockReadSize: Integer;
    CacheSize: Integer;

  public
    //DbFileName: string;
    TOP: Integer;
    A: array of TDataSet; //TDataSet //TAdoDataset;
    procedure Init;
    procedure SetConnection;
    procedure OpenDB(DataSet: TDataSet);
    procedure CloseDB(DataSet: TDataSet);
    procedure RefreshDB(DataSet: TDataSet);
    procedure OpenAllDB;
    procedure CloseAllDB;
    procedure CompactDb();
    procedure DescriptionAfterPost(DataSet: TDataSet);
    procedure ReopenDB();
    function GetDBPath(): boolean;
    procedure start;
  end;

  TMethodMakeConnectionString = (
    csSelfMakeConnectionString,
    csUDL,
    csINI
    );

procedure TestADO();
procedure WillChangeRecord(DataSet: TDataSet;
  const Reason: TEventReason; const RecordCount: Integer;
  var EventStatus: TEventStatus);

var
  DM: TDM;

  //ReadOnlyDB: Boolean;

  User_ID: string = 'Admin'; //'Admin'; //User
  User_Password: string = '21'; //Password
  word2: string = '74278775'; //= Password для Access; //word1 = Password для программы
  DbFileName: string = 'db.mdb';

const
  id_TypeOfDoc_NONE = 10;

implementation

uses
  CommonUnit;

{$R *.dfm}



procedure TDM.tblBildingAfterInsert(DataSet: TDataSet);
begin
   // tblBilding.FieldByName('id').AsInteger;
end;

procedure TDM.Init;
var
  i: Integer;
begin
  SetConnection;
  A := nil;
{ TODO -oSVS -cмодификация таблиц : добавить новые таблицы }

  SetLength(A, Length(A) + 1); A[High(A)] := DM.tblBilding;
  SetLength(A, Length(A) + 1); A[High(A)] := DM.tblVypoln; 
  SetLength(A, Length(A) + 1); A[High(A)] := DM.tdlTrebovan;
  SetLength(A, Length(A) + 1); A[High(A)] := DM.tblVypolnAll;
  SetLength(A, Length(A) + 1); A[High(A)] := DM.tblNorm;
  SetLength(A, Length(A) + 1); A[High(A)] := DM.tblNormOfBilding;    
  SetLength(A, Length(A) + 1); A[High(A)] := DM.tblVypoln_SOOTVETSTV;

  //DM.tblNorm.Open;
  //tblNormOfBilding.Open;

  LockType := ltOptimistic;
  ResyncValue := ADOint.adResyncAll;
  UpdateCriteria := adCriteriaKey;
  CursorLocation := clUseClient; //clUseClient //clUseServer //
  CursorType := ctDynamic; //ctStatic; //ctKeyset //ctDynamic //
  MarshalOptions := moMarshalModifiedOnly; //moMarshalAll

  TOP := utility.INI(IniFile, 'DataSet', 'TOP', 500); //

  CursorLocation := utility.INI(IniFile, 'DataSet', 'CursorLocation', clUseClient); //
  CursorType := utility.INI(IniFile, 'DataSet', 'CursorType', ctDynamic); //
  LockType := utility.INI(IniFile, 'DataSet', 'LockType', ltOptimistic); //
  MarshalOptions := utility.INI(IniFile, 'DataSet', 'MarshalOptions', moMarshalModifiedOnly); //
  ResyncValue := utility.INI(IniFile, 'DataSet', 'ResyncValue', ADOint.adResyncAll); //
  UpdateCriteria := utility.INI(IniFile, 'DataSet', 'UpdateCriteria', adCriteriaKey); //

  MaxRecords := utility.INI(IniFile, 'DataSet', 'MaxRecords', 0); //
  BlockReadSize := utility.INI(IniFile, 'DataSet', 'BlockReadSize', 0); //
  CacheSize := utility.INI(IniFile, 'DataSet', 'CacheSize', 1); //

  OpenAllDB;

  //MaxRecords := 1;  OpenDB(adsBlob);

  ProcessDL := utility.INI(IniFile, 'DL', 'ProcessDL', false); //DataIniFile.UpdateFile;
  if ProcessDL then
  begin
    DL := TDL.Create;
    for i := Low(A) to High(A) do //i: Integer;
      DL.Process(A[i]);
  end;

  //DM.tblVypoln.Parameters[1].Value := '*' ;
end; //Init

procedure TDM.DataModuleCreate(Sender: TObject);
var sMyDocAppPath: string;
begin
 // ADConnection1.Params.Text:='DSN=dbtemp'+#13#10+'User_Name=Admin' + 'Database=C:\Nir2015_FireDAC\Monitoring\db1.mdb';
 // ADConnection1.DriverName:='MSACC';
{
  cxLocalizer1.FileName:='DevExRus100Proc.ini';
 cxLocalizer1.Active:=true;
 cxLocalizer1.Locale:=1049;
}
{
   sMyDocAppPath:=ExtractFilePath(Application.ExeName)+'\';
if FileExists(sMyDocAppPath + 'DevExRus100Proc.ini') then
  begin
      cxLocalizer1.Active   := false;
      cxLocalizer1.FileName := sMyDocAppPath + 'DevExRus100Proc.ini';
      cxLocalizer1.Active   := True;

      if FileExists(sMyDocAppPath + 'lang.ini') then
        with TIniFile.Create(sMyDocAppPath + 'lang.ini') do
        begin
          cxLocalizer1.Locale := ReadInteger('LANG', 'Locale', GetThreadLocale);//если пользователь ещё не указал, то берём локаль винды
          free;
        end//with
      else
        cxLocalizer1.Locale := GetThreadLocale;//если пользователь ещё не указал, то берём локаль винды
  end;//if FileExists(sMyDocAppPath + 'Lang\lang.ini') then

  if cxLocalizer1.Locale = 0 then
    cxLocalizer1.Locale := GetThreadLocale;
}
//EXIT;
  //siLangDispatcher1.FileName:= ExtractFilePath(Application.ExeName) + 'ru.sil';
  //siLangDispatcher1.LoadAllFromFile(siLangDispatcher1.FileName);
  //siLangDispatcher1.SaveAllToFile(siLangDispatcher1.FileName, '~!@#');

  Init;
end;

procedure TDM.SetConnection;
var
  strTmp: string; //ovTmp: OleVariant;
  ConnectionString: string;
  Section, Ident, Default: string;
  i: integer;
  iDefault: integer;
  iSelf: integer;
  //iUDL, iINI: integer;

  MethodMakeConnectionString: TMethodMakeConnectionString;
  NameUDLFile: string;
  //DB_File_name: string;

  IniFile: TIniFile; //CommonUnit
  IniFileName: string; //CommonUnit
  tmpB:Boolean;
begin
  UniConnection1.Disconnect;
  strTmp := ExtractFilePath(Application.ExeName) + '\db1.mdb';
  UniConnection1.Database := strTmp;
  tmpB:= UniConnection1.Connected;
  UniConnection1.Connect;

  TestADO();
  //GetDBPath;
  Data_Source := DBFileName;


  IniFileName := ChangeFileExt(Forms.Application.ExeName, '.ini');
  IniFile := TIniFile.Create(IniFileName);

//////////////////////////////////////////////////////////
  Section := 'ModeConnectionStringMake';
  Ident := 'UDL';
  i := ord(csUDL); //?
  //MethodMakeConnectionString:=csSelfMakeConnectionString;//csUDL;
  iDefault := ord(csUDL); //TMethodMakeConnectionString=(csSelfMakeConnectionString,csUDL,csINI
  //iDefault := utility.INI(IniFile, 'TEST', 'TEST', 2);//IniFile.UpdateFile;  IniFile.UpdateFile;
  i := IniFile.ReadInteger(Section, Ident, iDefault);
  IniFile.WriteInteger(Section, Ident, i);
  MethodMakeConnectionString := TMethodMakeConnectionString(i); //csUDL;
{
  iINI := DataIniFile.ReadInteger(Section, 'INI', 0);
  DataIniFile.WriteInteger(Section, 'INI', iINI);
                                       }
  case MethodMakeConnectionString of
    csINI:
      begin
        ConnectionString := '';
        Section := 'ConnectionString';
        Ident := 'ConnectionString'; Default := '';
        ConnectionString := IniFile.ReadString(Section, Ident, Default);
        ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;';
          //Password="";User ID=Admin;';
        ConnectionString := ConnectionString + 'Password="";'; //--
        ConnectionString := ConnectionString + 'User ID=' + User_ID + ';';
        ConnectionString := ConnectionString + 'Data Source=' + Data_Source + ';';
        ConnectionString := ConnectionString +
          'Mode=Share Deny None;Extended Properties="";Jet OLEDB:System database="";Jet OLEDB:Registry Path="";';
        ConnectionString := ConnectionString + 'Jet OLEDB:Database Password=' +
          Word2 + ';'; //--
        ConnectionString := ConnectionString +
          'Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;';
        ConnectionString := ConnectionString +
          'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don''t Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;';
        ConnectionString := ConnectionString + 'Jet OLEDB:SFP=False';
      end; //csINI:
    csUDL:
      begin
      //'FILE NAME=C:\Program Files\Common Files\SYSTEM\ole db\Data Links\Data.udl'
        SetCurrentDir(ExtractFilePath(Application.ExeName) + '\');
        strTmp := GetCurrentDir;
        NameUDLFile := ChangeFileExt(Application.ExeName, '.udl');
        NameUDLFile := ExtractFilePath(Application.ExeName) + '\'
          + ChangeFileExt(ExtractFileName(Application.ExeName), '.udl');

        ConnectionString := ''; //ExtractFilePath //ExtractFileDir
        ConnectionString := 'FILE NAME=' + NameUDLFile;
      end; //csUDL
    csSelfMakeConnectionString:
      begin
        ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;';
        ConnectionString := ConnectionString + 'Password="";'; //--
        ConnectionString := ConnectionString + 'User ID=Admin;'; //'User ID=' + User_ID + ';';
        ConnectionString := ConnectionString + 'Data Source=' + Data_Source + ';';
        ConnectionString := ConnectionString +
          'Mode=Share Deny None;Extended Properties="";Jet OLEDB:System database="";Jet OLEDB:Registry Path="";';
        ConnectionString := ConnectionString + 'Jet OLEDB:Database Password=' +
          Word2 + ';'; //--
        ConnectionString := ConnectionString +
          'Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;';
        ConnectionString := ConnectionString +
          'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don''t Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;';
        ConnectionString := ConnectionString + 'Jet OLEDB:SFP=False';
      //DBFileName := utility.INI(IniFile, 'ConnectionString', 'DBFileName', DBFileName);

        ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;';
        ConnectionString := ConnectionString + 'User ID=Admin;';
        ConnectionString := ConnectionString + 'Data Source=' + Data_Source + ';';
        ConnectionString := ConnectionString + 'JPersist Security Info=False';


        IniFile.WriteString('ConnectionString', 'DBFileName', DBFileName);
      end; //csSelfMakeConnectionString:
  else
    MessageDlg('Не определен метод формирования ConnectionString', mtWarning, [mbOK], 0);
  end; //case
//
{
  ConnectionString := '';
  ConnectionString :=
    'Provider=Microsoft.Jet.OLEDB.4.0;Password="";User ID=Admin;';
  ConnectionString := ConnectionString +
    'Data Source=' + Data_Source + ';';
  ConnectionString := ConnectionString +
    'Mode=Share Deny None;Extended Properties="";Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;';
  ConnectionString := ConnectionString +
    'Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don''t Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;';
  ConnectionString := ConnectionString + 'Jet OLEDB:SFP=False';
}
{
  ADOConnection1.Close;
  ADOConnection1.ConnectionString := ConnectionString;
  try
    ADOConnection1.Open; //ADOConnection1.mode;
  except
    MessageDlg('ADOConnection: проблема соединения с базой данных' + #13 +
      'ADOConnection...' + #13
      + ADOConnection1.ConnectionString, mtError, [mbOk], 0); //Abort;
  end;
}
end;
//SetConnection

procedure TDM.RefreshDB(DataSet: TDataSet);
var
  SavePlace: TBookmark;
  ComponentName: string;
begin
  //DataSet.FieldByName('id').AsInteger;//???
  ComponentName := DataSet.Name; //???
  SavePlace := DataSet.GetBookmark;
  CloseDB(DataSet);
  OpenDB(DataSet);
  if DataSet.BookmarkValid(SavePlace) then { TODO : if DataSet.BookmarkValid(SavePlace) }
  begin
    DataSet.GotoBookmark(SavePlace);
  end;
  DataSet.FreeBookmark(SavePlace);
end; //RefreshDB

procedure TDM.CloseDB(DataSet: TDataSet);
begin
  DataSet.Close;
end;

procedure TDM.CloseAllDB;
var
  i: Integer;
begin
  for i := Low(A) to High(A) do
  begin
    A[i].DisableControls;
    A[i].Close;
  end; //for
end; //CloseAllDB

procedure TDM.OpenDB(DataSet: TDataSet);
var iTmp: Integer;                     
begin
  try
    DataSet.Close;
{
    DataSet.MaxRecords := MaxRecords; // TODO : DataSet.MaxRecords:=MaxRecords
    DataSet.CursorLocation := CursorLocation;
    DataSet.CursorType := CursorType;
    DataSet.LockType := LockType;
    DataSet.MarshalOptions := MarshalOptions;
}
    DataSet.Open;
{
    case DataSet.CursorLocation of
      clUseClient:
        begin
          //'Update Resync' //adResyncUnderlyingValues = 1; -def //adResyncAllValues = 2;
          iTmp := DataSet.Properties['Update Resync'].Value;
          DataSet.Properties['Update Resync'].Value := adResyncAutoIncrement +
            adResyncUpdates + adResyncInserts + adResyncConflicts;
          iTmp := DataSet.Properties['Update Resync'].Value;

          //'Update Criteria'//adCriteriaUpdCols = 2; -def //adCriteriaAllCols = 1;//adCriteriaKey = 0;
          iTmp := DataSet.Properties['Update Criteria'].Value;
          DataSet.Properties['Update Criteria'].Value := adCriteriaKey;
          //adCriteriaAllCols;
          iTmp := DataSet.Properties['Update Criteria'].Value;
        end;
      clUseServer:
        begin
          //DataSet.Properties['Update Resync'].Value:=ResyncValue;
          //DataSet.Properties['Update Criteria'].Value:=UpdateCriteria;
        end;
    else ;
    end; // case DataSet.CursorLocation
}
    DataSet.BlockReadSize := BlockReadSize; //0
    //DataSet.CacheSize := CacheSize; //1
    //DataSet.Prepared:=true;//1

  except //DataSet.CommandText
    MessageDlg('Open: проблема соединения с базой данных' + #13 + DataSet.Name,
      mtError, [mbOk], 0); //Abort;
  end; //try
end; //OpenDB

procedure TDM.OpenAllDB;
var
  i: Integer; //DataSet: TDataSet;
begin
  for i := Low(A) to High(A) do //i: Integer;
  begin
    try
      //DataSet := A[i];
      CloseDB(A[i]);
      OpenDB(A[i]);
    except //A[i].CommandText
      MessageDlg('Open: проблема соединения с базой данных, таблица: ' + #13 +
        A[i].Name + #13 + 'Путь: ' + Data_Source, mtError, [mbOk], 0); //Abort;
    end; //try
  end; //for
end; //OpenAllDB

procedure TDM.CompactDb();
begin
  //ADOConnection1
 // DbUtil.CompactDb(ADOConnection1);
  OpenAllDB;
end;

procedure TestADO();
var
  Q: TADOQuery;
begin //  'c:\program files\common files\System\ADO\msado15.dll';
  //IniFileName := JvFileUtil.GetWindowsDir +'\'+ ChangeFileExt(ExtractFileName(Application.ExeName), '.ini');
{
  if not FileExists('c:\program files\common files\System\ADO\msado15.dll') then
  begin
    MessageDlg('Возможно у Вас проблема с MS ADO', mtInformation, [mbOK], 0);
  end  else  begin  end;
}
  try
    Q := TADOQuery.Create(nil);
    Q.Free();
  except
    Dialogs.MessageDlg(' у Вас проблема с MS ADO ...',
      mtError,
      [mbOk], 0); //Abort;
  end;
end; //TestADO

procedure TDM.qryDescription0AfterPost(DataSet: TDataSet);
begin
  DescriptionAfterPost(DataSet);
end;

procedure TDM.tblDescriptionAfterPost(DataSet: TDataSet);
begin
  DescriptionAfterPost(DataSet);
end;

procedure TDM.DescriptionAfterPost(DataSet: TDataSet);
begin { TODO : DescriptionAfterPost }
  //dm.RefreshDB(dm.TypeOfDoc);
  //RefreshDataSet(dm.tblDescription);
end;

procedure TDM.qryDescription0AfterRefresh(DataSet: TDataSet);
var
  i: Integer;
begin
end;

procedure TDM.qryDescription0BeforeRefresh(DataSet: TDataSet);
begin
  //dm.RefreshDB(dm.tblDescription);
end;

procedure TDM.ReopenDB();
begin
  //ADOConnection1.Close; ADOConnection1.connected := False; //?
 // ADOConnection1.Open; ADOConnection1.Connected := True; //?
  OpenAllDb;
end;


procedure TDM.qryDescription0WillChangeRecord(DataSet: TDataSet;
  const Reason: TEventReason; const RecordCount: Integer;
  var EventStatus: TEventStatus);
begin
  if Reason = erUndoUpdate then begin ///в случае ошибки
         //ReadUnderlyingValues; ///показываем причину конфликта
    WillChangeRecord(DataSet, Reason, RecordCount, EventStatus);
    EventStatus := esCancel; //....и прото отменяем обновление
  end;
end;

procedure WillChangeRecord(DataSet: TDataSet;
  const Reason: TEventReason; const RecordCount: Integer;
  var EventStatus: TEventStatus);
var
  i: integer;
  MessageString: OleVariant;
begin
{эта процедура вызывается при ошибке, связанной с
конкурирующим обновлением при оптимистической блокировке
если установленно свойство Update Resync равное adResyncConflicts
то значения каждого поля записи, вызвавшей конфликт помещаются
в свойство UnderlyingValue каждого поля
здесь мы попросту показываем их}
{
  MessageString := 'Произошел конфликт! Данные на сервере уже изменены!' + #10 + #10;
  MessageString := 'Исходные данные <=> Попытка изменения <=> Данные на сервере' + #10 + #10;
//ShowMessage(String(MessageString)); Exit;
  for i := 1 to DataSet.Recordset.Fields.Count - 1 do
  begin
   ////перебираем поля не с нуля а с 1 - нулевое поле - автоинкремент
    MessageString := MessageString + DataSet.Recordset.Fields[i].OriginalValue;
    MessageString := MessageString + '   <==>  ';
    MessageString := MessageString + DataSet.Recordset.Fields[i].Value;
    MessageString := MessageString + '   <==>  ';
    MessageString := MessageString + DataSet.Recordset.Fields[i].UnderlyingValue + #10;

    DataSet.Recordset.Fields[i].Value := DataSet.Recordset.Fields[i].UnderlyingValue;
  end;
  ShowMessage(string(MessageString));
}
end;

function TDM.GetDBPath: boolean;
begin
  //DbFileName := 'db.db2';  { TODO : D..ileName := '.mdb'; }
  if FileExists(DbFileName) then
  begin
    IniFile.WriteString('ConnectionString', 'DBFileName', DBFileName);
    exit;
  end;

  DBFileName := ExtractFilePath(Application.ExeName) + 'data\' + DbFileName;
  if FileExists(DbFileName) then
  begin
    IniFile.WriteString('ConnectionString', 'DBFileName', DBFileName);
    exit;
  end;

  Data_Source := ExtractFilePath(Application.ExeName) + 'data\' + DbFileName;
  //DbFileName := IniFile.ReadString('ConnectionString', 'DBFileName', Data_Source);
  Data_Source := DbFileName;
  if FileExists(DbFileName) then
  begin
    IniFile.WriteString('ConnectionString', 'DBFileName', DBFileName);
    exit;
  end;

  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName); // + 'data\';
  OpenDialog1.Execute;
  DBFileName := DM.OpenDialog1.FileName;
  if FileExists(DbFileName) then
  begin
    IniFile.WriteString('ConnectionString', 'DBFileName', DBFileName);
    exit;
  end;

  if not FileExists(DbFileName) then
  begin
    raise Exception.Create(#13 + #13 +
      'Попробуйте указать файл базы данных:'
      + #13 +
      'В меню: File -> Open -> *.mdb'
      + #13 + #13);
  end;
end; //GetDBPath


/////////////////////////////////////////////////////////////////////////////

procedure TDM.start;
var
  strTmp: string;
  NameUDLFile: string;
  ConnectionString: string;
begin
  SetCurrentDir(ExtractFilePath(Application.ExeName) + '\data\');
  strTmp := GetCurrentDir;
  NameUDLFile := ChangeFileExt(Application.ExeName + '\data', '.udl');
  NameUDLFile := ExtractFilePath(Application.ExeName) + '\data\'
    + ChangeFileExt(ExtractFileName(Application.ExeName), '.udl');

  ConnectionString := ''; //ExtractFilePath //ExtractFileDir
  ConnectionString := 'FILE NAME=' + NameUDLFile;
{
  ADOConnection1.Close;
  ADOConnection1.ConnectionString := ConnectionString;
  try
    ADOConnection1.Open; //ADOConnection1.mode;
  except
    MessageDlg('ADOConnection: проблема соединения с базой данных' + #13 +
      'ADOConnection...' + #13
      + ADOConnection1.ConnectionString, mtError, [mbOk], 0); //Abort;
  end;
}

end; //start;///////////////////////////////////////////////////////////

procedure TDM.tblMetroAfterPost(DataSet: TDataSet);
begin
  AfterPost(DataSet);
end;

procedure TDM.tblMetroBeforePost(DataSet: TDataSet);
begin //<проверка введенных данных>
  BeforePost(DataSet);
end;

procedure TDM.AfterPost(DataSet: TDataSet);
begin
  Exit;
//DSAMessageDlg(0, ' (Flag_EndOfTime = True)' + #13#10 + '', mtInformation, [], 0, dckScreen, 3);
  Application.MessageBox('изменения посланы в СУБД    ', 'СУБД', MB_OK +
    MB_ICONINFORMATION + MB_TOPMOST);
// добавить JvDSADialogs ?
end;

procedure TDM.BeforePost(DataSet: TDataSet);
begin
  Exit;
//<проверка введенных данных>
  if (True) then
  begin
    if Application.MessageBox(
      'Хотите занести текущую запись в базу данных?',
      'Подтвердите сохранение изменений',
      MB_YESNOCANCEL + MB_ICONQUESTION) <> IDYES
      then begin
      DataSet.Cancel;
    //Abort;
    end
  end
  else begin
    Application.MessageBox('Ошибочные данные',
      'Исправьте ошибку',
      MB_OK + MB_ICONEXCLAMATION);
    Abort;
  end;
end;

procedure TDM.tblNormFilterRecord(DataSet: TDataSet; var Accept: Boolean);
var
  s1, s2: string; bRes: Boolean;
  sRes: string;
  iRes : integer;
  i1 , i2 :Integer;
  f1 , f2 :Double ;
begin
{
  s1 := DM.wdstrngfldVypolnN.AsString;
  s1 := dm.tblVypoln.FieldByName('N').AsString;

   s2 := dm.tblNorm.FieldByName('N').AsString;
   s2 := dm.wdstrngfldNormN.AsString;

    iRes := AnsiCompareStr(s1, s2);
    bRes := iRes = 0;

    if bRes then  Accept := True
    else Accept := False ;

 exit;
  s1 := DM.wdstrngfldVypolnN.AsString;
  s1 := dm.tblVypoln.FieldByName('N').AsString;
  f1 :=  StrToFloat(s1);
  i1 := Round (f1) ;

  s2 := dm.tblNorm.FieldByName('N').AsString;
  s2 := dm.wdstrngfldNormN.AsString;
  if (s2='') then s2 := '0';
  f2 :=  StrToFloat(s2);
  i2 := Round (f2) ;

  if (s2='') then s2 := ' ';

  if i1 = i2 then  Accept := True
  else Accept := False ;
}
end;



procedure TDM.tblVypoln0AfterScroll(DataSet: TDataSet);
var
  s1, s2: string; bRes: Boolean;
  sRes: string;
  i1 , i2 :Integer;
  f1 , f2 :Double ;
begin
  tblNorm.Filtered:=False;
  tblNorm.Filtered:=True;
  Exit;
  tblNormOfBilding.Filtered:=False;
  tblNormOfBilding.Filtered:=True;


  DM.tblNorm.Filtered := False;

{
type TFilterOption = (foCaseInsensitive, foNoPartialCompare);
}

end;

procedure TDM.tblVypolnAfterScroll(DataSet: TDataSet);
var
  sql1 :string;
  sql2 :string;
  s1, s2 :string;
begin
  DM.tblNorm.Close;
  if (dm.tblVypolnN.AsString = '') then s1:='...' else s1:= dm.tblVypolnN.AsString;
  sql1:= 'select * from norm where N like :N' ;
  DM.tblNorm.SQL.Text:=sql1;
  DM.tblNorm.ParamByName('N').AsString := s1;
  DM.tblNorm.Open;

Exit;
  if (dm.tblVypolnN.AsString = '') then s1:='0' else s1:= dm.tblVypolnN.AsString;
  sql1:= 'select * from norm where (N like ' + s1 +')' ;
  DM.tblNorm.Close;
  DM.tblNorm.SQL.Text:=sql1;
  DM.tblNorm.Open;

  if (dm.tblVypolnN.AsString = '') then s2:='0' else s2:= dm.tblVypolnN.AsString;
  sql2:= 'select * from normofbilding where (fid_Vypoln = '+  dm.tblBildingid.AsString   + ' ) and (N like  ' + s2 +')' ;
  DM.tblNormOfBilding.Close;
  DM.tblNormOfBilding.SQL.Text:=sql2;
  DM.tblNormOfBilding.Open;
end;


initialization

finalization

end.
{
  try
    Application.CreateForm(TDM, DM);
  except
    //on EDatabaseError do ;
    on EOleException do ; // uses ComObj
  //else ;
  end;
}


{
Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\My Dropbox\Share\Work\Тестирование сэу\db.mdb;Mode=ReadWrite;Extended Properties="";Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False
Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\My Dropbox\Share\Work\Тестирование сэу\Anamat_Inquest_2010\Bin\Data\db.mdb;Mode=ReadWrite;Extended Properties="";Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False
}

{
Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Dropbox\Share5\Work\d7\db1.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password=1;Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;
}

