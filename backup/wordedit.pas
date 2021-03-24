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
    pinyindel: TBitBtn;
    pinyinadd: TBitBtn;
    BitBtn7: TBitBtn;
    pinyinpost: TBitBtn;
    pinyinedit: TBitBtn;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    grddyz: TDBGrid;
    grdpinyin: TDBGrid;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton2: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    ToolButton28: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure pinyindelClick(Sender: TObject);
    procedure pinyinaddClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure pinyinpostClick(Sender: TObject);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure DataSource2StateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure SQLQuery1AfterScroll(DataSet: TDataSet);
    procedure ToolBar1Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure ToolButton22Click(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure ToolButton25Click(Sender: TObject);
    procedure ToolButton26Click(Sender: TObject);
    procedure ToolButton27Click(Sender: TObject);
    procedure ToolButton28Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
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

procedure Tfrmdyzedit.Panel2Click(Sender: TObject);
begin

end;

procedure Tfrmdyzedit.SQLQuery1AfterScroll(DataSet: TDataSet);
begin
  //SQLQuery1.Open;
  //SQLQuery2.SQL.Text := 'select * from tbl_pinyin where fduoyinzi_id=:duoyinzi_id';
  //SQLQuery1.InsertSQL.Text := 'INSERT INTO tbl_duoyinzi (fduoyinzi) VALUES (:duoyinzi)';
  if SQLQuery1.FieldValues['fid']<>null then
    begin
      SQLQuery2.Close;
      SQLQuery2.Params.ParamByName('duoyinzi_id').AsInteger := SQLQuery1.FieldValues['fid'];
      //SQLQuery1.ExecSQL();
      SQLQuery2.Open;
    end;
end;

procedure Tfrmdyzedit.ToolBar1Click(Sender: TObject);
begin
  //TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton10Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton11Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton12Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton13Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton15Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton16Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton17Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton18Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton19Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton1Click(Sender: TObject);
begin
  //DBEdit2.text := TToolButton(Sender).Caption;
  //SelText 当前位置插入字符
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton20Click(Sender: TObject);
begin
   DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton21Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton22Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton24Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton25Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton26Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton27Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton28Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton2Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton3Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton4Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton6Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton7Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton8Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.ToolButton9Click(Sender: TObject);
begin
  DBEdit2.SelText:=TToolButton(Sender).Caption;
end;

procedure Tfrmdyzedit.BitBtn1Click(Sender: TObject);
begin
  //SQLQuery1.Open;
  //SQLQuery1.SQL.Text := 'INSERT INTO tbl_duoyinzi (fduoyinzi) VALUES (:duoyinzi)';
  //SQLQuery1.InsertSQL.Text := 'INSERT INTO tbl_duoyinzi (fduoyinzi) VALUES (:duoyinzi)';
  //SQLQuery1.Params.ParamByName('duoyinzi').AsString := Edit1.text;
  //SQLQuery1.ExecSQL();
  //frmmain.SQLTransaction1.Commit();
end;

procedure Tfrmdyzedit.BitBtn2Click(Sender: TObject);
begin

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

procedure Tfrmdyzedit.pinyindelClick(Sender: TObject);
begin
  if Application.Messagebox('确认删除记录！', '提示',mb_Iconinformation+MB_OKCANCEL) = mrCancel then
  begin
    SQLQuery2.Delete;
    SQLQuery2.ApplyUpdates;
    frmmain.SQLTransaction1.CommitRetaining;  // CommitRetaining
    //exit;
  end;

end;

procedure Tfrmdyzedit.pinyinaddClick(Sender: TObject);
begin
  SQLQuery2.Append;
  SQLQuery2.FieldValues['fduoyinzi_id'] := SQLQuery1.FieldValues['fid'];
end;

procedure Tfrmdyzedit.BitBtn7Click(Sender: TObject);
begin
  SQLQuery1.Append;
end;

procedure Tfrmdyzedit.pinyinpostClick(Sender: TObject);
begin
  SQLQuery2.Post;
  SQLQuery2.ApplyUpdates;
  frmmain.SQLTransaction1.CommitRetaining;  // CommitRetaining
end;

procedure Tfrmdyzedit.DataSource2DataChange(Sender: TObject; Field: TField);
begin

end;

procedure Tfrmdyzedit.DataSource2StateChange(Sender: TObject);
begin
      case SQLQuery2.State of
      dsbrowse:
        begin
          pinyinadd.Enabled :=true;
          pinyindel.Enabled :=true;
          pinyinpost.Enabled :=false;
          //cancelbtn.Enabled :=false;
        end;
      dsinsert:
        begin
          pinyinadd.Enabled :=false;
          pinyindel.Enabled :=false;
          pinyinpost.Enabled :=true;
          //cancelbtn.Enabled :=true;
        end;
      dsedit:
        begin
          pinyinadd.Enabled :=false;
          pinyindel.Enabled :=false;
          pinyinpost.Enabled :=true;
          //cancelbtn.Enabled :=true;
        end;
    end;
end;

procedure Tfrmdyzedit.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  CloseAction := caFree;
  frmdyzedit := nil;
end;

procedure Tfrmdyzedit.FormCreate(Sender: TObject);
begin

end;

procedure Tfrmdyzedit.FormShow(Sender: TObject);
begin
  //SQLQuery1.SQL.Text := 'select * fduoyinzi from tbl_duoyinzi;';
  //SQLQuery1.Active:=True;
  DBEdit1.DataField:='fduoyinzi';
  SQLQuery1.Active:=True;
  DBEdit2.DataField:='fpinyin';
  DBEdit3.DataField:='fciyu';
  grddyz.Columns[0].FieldName:='fid';
  grddyz.Columns[1].FieldName:='fduoyinzi';
  grdpinyin.Columns[0].FieldName:='fid';
  grdpinyin.Columns[1].FieldName:='fpinyin';
  grdpinyin.Columns[2].FieldName:='fciyu';
end;

end.

