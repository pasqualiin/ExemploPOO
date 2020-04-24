unit uPessoa;

interface

uses
  System.SysUtils, System.Classes, uMeioTransporte;

type
  TPessoa = class(TComponent)
  private
    FNome: String;
    FTransporte: TMeioTransporte;
    procedure SetNome(const Value: String);
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    property Nome: String read FNome write SetNome;
    property Transporte : TMeioTransporte read FTransporte
    write FTransporte;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('ClubeDelphi', [TPessoa]);
end;

{ TPessoa }

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
