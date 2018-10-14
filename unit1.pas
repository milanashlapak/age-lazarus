unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  a,b:integer;
  Form1: TForm1;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  a:= strtoint (edit1.text);
  case a of
  0..10:label2.caption:='Дитина, ';
  11..16:label2.caption:='Підліток, ';
  17..23:label2.caption:='Юнак, ';
  24..60:label2.caption:='Дорослий, ';
  61..120:label2.caption:='Людина похилого віку, ';
  121..500: label2.caption := 'Вампир из сумерек';
  end;
  b:=a mod 10;
  if (a=11) or (a=12) or (a=13) or (a=14)
  then label2.caption:=label2.caption+inttostr (a)+ ' років'
  else case b of
  1:label2.caption:=label2.caption+inttostr (a)+' рік';
  2..4:label2.caption:=label2.caption+inttostr (a)+' роки';
  0,5..9:label2.caption:=label2.caption+inttostr (a)+' років';
  end;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

end.

