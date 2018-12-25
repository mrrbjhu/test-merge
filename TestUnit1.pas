unit TestUnit1;

interface
uses Sysutils;

type

  TTestClass1 = class

  private
    FField: Integer;
  public
    constructor Create(Value: Integer);
    destructor Destroy; override;

    function FieldSetNotNegative: Integer;

    function FieldRevertNegative: Integer;
    function GetFieldOfString: String;
    procedure SetField(Value: Integer);
    procedure SetFieldToZero;
    property Field: Integer read FField;
  end;

implementation

constructor TTestClass1.Create(Value: Integer);
begin
  FField := VAlue;
end;


destructor TTestClass1.Destroy;
begin
  inherited;
end;


function TTestClass1.FieldSetNotNegative: Integer;
begin
  if FField < 0 then FField := -FField;
end;

function TTestClass1.FieldRevertNegative: Integer;
begin
  FField := -FField;
  Result := FField;
end;

function TTestClass1.GetFieldOfString: String;
begin
  Result := IntToStr(FField);
end;

procedure TTestClass1.SetField(Value: Integer);
begin
  FField := Value;
end;


procedure TTestClass1.SetFieldToZero;
begin
  FField := 0;
end;

end.
