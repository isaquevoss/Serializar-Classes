unit uUnit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TMinhaClasse = class
  private
    Fpropriedade1: string;
    Fpropriedade2: string;
    Fpropriedade3: integer;
  public
    property propriedade1: string read Fpropriedade1 write Fpropriedade1;
    property propriedade2: string read Fpropriedade2 write Fpropriedade2;
    property propriedade3: integer read Fpropriedade3 write Fpropriedade3;
  end;

var
  Form1: TForm1;

implementation
  uses
    Rest.Json;




{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  _minhaClasse: TMinhaClasse;
begin
  _minhaClasse := TMinhaClasse.Create();

  _minhaClasse.propriedade1 := 'valor da prop 1';
  _minhaClasse.propriedade2 := 'valor da prop 2';
  _minhaClasse.propriedade3 := 89;

  Memo1.Text := TJson.ObjectToJsonString(_minhaClasse);

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  _minhaClasse: TMinhaClasse;
begin
  _minhaClasse := TJson.JsonToObject<TMinhaClasse>(Memo1.Text);

end;

end.
