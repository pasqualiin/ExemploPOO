unit uCarro;

interface

uses uMeioTransporte;

type
  TCarro = class(TMeioTransporte)
    
    Quilometragem: integer;
    procedure Mover();
  end;

implementation

uses Dialogs;

{ TCarro }

procedure TCarro.Mover();
begin
  ShowMessage(Descricao + ' entrou em movimento.');
end;

end.