unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SQLite3Conn, SQLDB, SQLDBLib, dbf, DB, Forms, Controls,
  Graphics, Dialogs, StdCtrls, DBGrids, DBCtrls, ExtCtrls, ComCtrls, Buttons,
  sqlite3dyn;

type

  { Tfrmmain }

  Tfrmmain = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    dyzedit: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    SQLDBLibraryLoader1: TSQLDBLibraryLoader;
    dyzdbconn: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    StaticText1: TStaticText;
    StatusBar1: TStatusBar;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure dyzdbconnAfterConnect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
  private

  public

  end;

var
  frmmain: Tfrmmain;

implementation

uses wordedit;

{$R *.lfm}

{ Tfrmmain }

procedure Tfrmmain.dyzdbconnAfterConnect(Sender: TObject);
begin

end;

procedure Tfrmmain.FormShow(Sender: TObject);
begin
  //SQLQuery1.Active := True;
  SQLQuery1.Close;
  SQLQuery1.Params.ParamByName('duoyinzi').AsString := '%';
  SQLQuery1.Open;
end;

procedure Tfrmmain.Panel1Click(Sender: TObject);
begin
  //SELECT fid,fduoyinzi
  //FROM tbl_duoyinzi
  //WHERE 1 < (select fduoyinzi_id,group_concat('['||fpinyin||']'||fciyu,',') from tbl_pinyin group by fduoyinzi_id)
  // SELECT * FROM 表名 ORDER BY RANDOM() limit 1 // 取随机记录
end;

procedure Tfrmmain.StaticText1Click(Sender: TObject);
begin

end;

procedure Tfrmmain.Button1Click(Sender: TObject);
begin
  dyzdbconn.Close;
  dyzdbconn.CharSet := PChar('UTF8');
  dyzdbconn.DatabaseName := 'dyzdb.dbe';
  dyzdbconn.UserName := trim('tonglp');
  dyzdbconn.Password := trim('tonglp');
  try
     //dyzdbconn.createDb; // 不用这个，会出错
     //SQLiteLibraryName := 'sqlite3.dll';
     SQLiteDefaultLibrary := 'sqlite3.dll';
     //dyzdbconn.DatabaseName := 'Enviar.dbe';
     //dyzdbconn.Connected := True;
     //SQLQuery1.Active := True;
     dyzdbconn.Connected:=true;
     showmessage('sqlite数据库 ' + '' + ' 创建操作完成。');
  except
     on E: Exception do
     begin
       //memo1.Lines.Add(E.Message);
       //memo1.Lines.Add('请检查sqlite数据库是否配置正确。');
       showmessage(E.Message);
     end;
  end;
end;

procedure Tfrmmain.BitBtn1Click(Sender: TObject);
begin
  SQLQuery1.Close;
  SQLQuery1.Params.ParamByName('duoyinzi').AsString := dyzedit.Text;
  SQLQuery1.Open;
end;

procedure Tfrmmain.BitBtn2Click(Sender: TObject);
begin
  if (ceshi = nil) then Application.CreateForm(Tceshi, ceshi);
    ceshi.ShowModal;
end;

procedure Tfrmmain.Button2Click(Sender: TObject);
begin
  dyzdbconn.Open;
  SQLTransaction1.StartTransaction;
  //if dyzdbconn.GetTableNames(''):
  dyzdbconn.ExecuteDirect('create table tbl_duoyinzi (fid integer primary key autoincrement, fduoyinzi varchar(6) unique not null);');
  dyzdbconn.ExecuteDirect('create table tbl_pinyin (fid integer primary key autoincrement, fduoyinzi_id int not null,'
                   + 'fpinyin varchar(10) not null, fciyu varchar(20) not null);'
                   + 'create unique index zipinyin on tbl_pinyin(fduoyinzi_id, fpinyin);');
  //dyzdbconn.ExecuteDirect('create table tbl_ciyu (fid integer primary key autoincrement, fpinyin_id int not null,'
  //                 + 'fciyu varchar(20) not null);');
  SQLTransaction1.Commit;
end;

procedure Tfrmmain.Button3Click(Sender: TObject);
begin
  SQLQuery1.Active := True;
end;

procedure Tfrmmain.Button4Click(Sender: TObject);
//var
//  frmdyzedit: Tfrmdyzedit;
begin
  if (frmdyzedit = nil) then Application.CreateForm(Tfrmdyzedit, frmdyzedit);
    frmdyzedit.ShowModal;
end;

end.

