unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StrUtils, StdCtrls, ExplodeFunc, CRCFunc, FileFunc, SolveFunc;

type
  TForm1 = class(TForm)
    dlgOpen: TOpenDialog;
    btnOpen: TButton;
    editAddress: TEdit;
    editSize: TEdit;
    lblAddress: TLabel;
    lblSize: TLabel;
    editVariable: TEdit;
    lblVariable: TLabel;
    btnExport: TButton;
    dlgSave: TSaveDialog;
    procedure btnOpenClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnExportClick(Sender: TObject);
var clipaddress, clipsize: string;
begin
  if dlgSave.Execute then
    begin
    clipaddress := ReplaceStr(editAddress.Text,'x',editVariable.Text); // Insert variable into address & size.
    clipsize := ReplaceStr(editSize.Text,'x',editVariable.Text);
    ClipFile(Solve(clipaddress),Solve(clipsize),dlgSave.FileName); // Save to external file.
    end;
end;

procedure TForm1.btnOpenClick(Sender: TObject);
begin
  if dlgOpen.Execute then
    begin
    LoadFile(dlgOpen.FileName); // Copy file to memory.
    Form1.Caption := 'ClipFile - '+dlgOpen.FileName; // Show file name in title bar.
    end;
end;

end.
