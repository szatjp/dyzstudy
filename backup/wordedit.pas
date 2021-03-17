unit wordedit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SQLDB, DB, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Buttons, DBCtrls, DBGrids, ComCtrls;

type

  { Tfrmdyzedit }

  Tfrmdyzedit = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private

  public

  end;

var
  frmdyzedit: Tfrmdyzedit;

implementation

uses main;

{$R *.lfm}

{ Tfrmdyzedit }

procedure Tfrmdyzedit.Panel1Click(Sender: TObject);
begin

end;

procedure Tfrmdyzedit.BitBtn1Click(Sender: TObject);
begin
  //SQLQuery1.Open;
  SQLQuery1.SQL.Text := 'INSERT INTO tbl_duoyinzi (fduoyinzi) VALUES (:duoyinzi)';
  //SQLQuery1.InsertSQL.Text := 'INSERT INTO tbl_duoyinzi (fduoyinzi) VALUES (:duoyinzi)';
  SQLQuery1.Params.ParamByName('duoyinzi').AsString := Edit1.text;
  SQLQuery1.ExecSQL();
  frmmain.SQLTransaction1.Commit();
end;

procedure Tfrmdyzedit.BitBtn3Click(Sender: TObject);
begin
  //DBEdit1.DataField:='fduoyinzi';
  SQLQuery1.Edit;
end;

procedure Tfrmdyzedit.BitBtn4Click(Sender: TObject);
begin
  SQLQuery1.Post;
  SQLQuery1.ApplyUpdates;
  frmmain.SQLTransaction1.CommitRetaining;  // CommitRetaining
end;

procedure Tfrmdyzedit.BitBtn7Click(Sender: TObject);
begin
  SQLQuery1.Append;
end;

procedure Tfrmdyzedit.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  CloseAction := caFree;
  frmdyzedit := nil;
end;

procedure Tfrmdyzedit.FormCreate(Sender: TObject);
begin
  Edit1.SelText:='插入字符串';
end;

procedure Tfrmdyzedit.FormShow(Sender: TObject);
begin
  //SQLQuery1.SQL.Text := 'select fduoyinzi from tbl_duoyinzi;';
  DBEdit1.DataField:='fduoyinzi';
  SQLQuery1.Active:=True;
end;

end.

