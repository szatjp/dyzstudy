unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SQLite3Conn, SQLDB, SQLDBLib, dbf, DB, Forms, Controls,
  Graphics, Dialogs, StdCtrls, DBGrids, sqlite3dyn;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Memo1: TMemo;
    SQLDBLibraryLoader1: TSQLDBLibraryLoader;
    dyzdbconn: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure dyzdbconnAfterConnect(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.dyzdbconnAfterConnect(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
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
       memo1.Lines.Add(E.Message);
       memo1.Lines.Add('请检查sqlite数据库是否配置正确。');
       showmessage(E.Message);
     end;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  //dyzdbconn.Open;
  //SQLTransaction1.StartTransaction;
  //if dyzdbconn.GetTableNames(''):
  //dyzdbconn.ExecuteDirect('create table tbl_duoyinzi (fid int primary key not null, fword varchar(6) not null);');
  //dyzdbconn.ExecuteDirect('create table tbl_pinyin (fid int primary key not null, fduoyinzi_id int not null,'
  //                 + 'fpinyin varchar(10) not null);');
  //dyzdbconn.ExecuteDirect('create table tbl_ciyu (fid int primary key not null, fpinyin_id int not null,'
  //                 + 'fciyu varchar(20) not null);');
  //SQLTransaction1.Commit;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  SQLQuery1.Active := True;
end;

end.

