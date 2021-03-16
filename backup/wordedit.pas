unit wordedit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, SQLDB, DB, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Buttons, DBCtrls;

type

  { Tfrmdyzedit }

  Tfrmdyzedit = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    SQLQuery1: TSQLQuery;
    procedure Panel1Click(Sender: TObject);
  private

  public

  end;

var
  frmdyzedit: Tfrmdyzedit;

implementation

{$R *.lfm}

{ Tfrmdyzedit }

procedure Tfrmdyzedit.Panel1Click(Sender: TObject);
begin

end;

end.

