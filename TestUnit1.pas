unit TestUnit1;

interface
uses Sysutils;

type

  TTestClass1 = class

  private
    FField: Integer;
  public
    constructor Create(Value: Integer);
    function GetFieldOfString: String;
    procedure SetField(Value: Integer);
    property Field: Integer read FField;
  end;

implementation

constructor TTestClass1.Create(Value: Integer);
begin
  SetField(Value);
end;

function TTestClass1.GetFieldOfString: String;
begin
  Result := IntToStr(FField);
end;

procedure TTestClass1.SetField(Value: Integer);
begin
  FField := Value;
end;

end.