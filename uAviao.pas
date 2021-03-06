unit uAviao;

interface

uses uMeioTransporte, Classes;

type
  TAviao = class(TMeioTransporte)
  private
    FHorasVoo: integer;
    function GetHorasVoo: integer;
    procedure SetHorasVoo(const Value: integer);

  protected
    procedure Ligar(); override;

  public
    procedure Mover(); override;
    constructor Create(AOwner: TComponent); override;

  published
    property HorasVoo: integer read GetHorasVoo write SetHorasVoo;
  end;

procedure Register;

implementation

uses Dialogs;

{ TAviao }
procedure Register;
begin
  RegisterComponents('ClubeDelphi', [TAviao])
end;

constructor TAviao.Create(AOwner: TComponent);
begin
  HorasVoo := 0;
end;

function TAviao.GetHorasVoo: integer;
begin
  result := FHorasVoo;
end;

procedure TAviao.Ligar;
begin
  ShowMessage('Ligando avi�o ...' + Descricao);
end;

procedure TAviao.Mover();
begin
  inherited;
  ShowMessage(Descricao + ' est� Voando.');
end;

procedure TAviao.SetHorasVoo(const Value: integer);
begin
  if Value < 0 then
    FHorasVoo := 0
  else
    FHorasVoo := Value;
end;

end.
