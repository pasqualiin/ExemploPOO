unit uMeioTransporte;

interface

uses Classes;

type
  TMeioTransporte = class(TComponent)

  private
    FDescricao: string;
    FCapacidade: integer;

  protected
    procedure Ligar(); virtual; abstract;

  public
    constructor Create(AOwner: TComponent); override;
    procedure Mover; virtual;

  published
    property Capacidade: integer read FCapacidade write FCapacidade;
    property Descricao: string read FDescricao write FDescricao;
  end;

implementation

{ TMeioTransporte }

uses Dialogs;

constructor TMeioTransporte.Create(AOwner: TComponent);
begin

end;

procedure TMeioTransporte.Mover;
begin
  Ligar();
end;

end.
