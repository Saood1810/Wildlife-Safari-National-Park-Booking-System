unit ClsRollAndWin;

interface

type
  TRoll = class(TObject)
  private

    fDiscountCode, fFname, fSurname: string;
    fDice1score, fDice2score, fDice3score: integer;
    fDOB: tDateTime;

  public
    Constructor Create(pDiscountCode, pFname, pSurname: string;
      pDOB: tDateTime);
    Function CheckifEligible: boolean;

    Procedure RollDice1(iRoll1: integer);
    Procedure RollDice2(iRoll2: integer);
    Procedure RollDice3(iRoll3: integer);
    Function GetDisocuntcode: string;
    Function GetDice1score: integer;
    Function GetDice2score: integer;
    Function GetDice3score: integer;
    Function ToString: string;
  end;

implementation

uses sysutils, math, DateUtils;
{ TRoll }

function TRoll.CheckifEligible: boolean;
begin
  // Person Has to be older than 30 to particpate
  if YearsBetween(Now, fDOB) >= 30 then
    Result := True
  Else
    Result := False;

end;

constructor TRoll.Create(pDiscountCode, pFname, pSurname: string;
  pDOB: tDateTime);
begin
  fDiscountCode := pDiscountCode;
  fFname := pFname;
  fSurname := pSurname;
  fDOB := pDOB;
  fDice1score := 1;
  fDice2score := 2;
  fDice3score := 3;
  fDiscountCode := '';
end;

function TRoll.GetDice1score: integer;
begin
  Result := fDice1score;
end;

function TRoll.GetDice2score: integer;
begin
  Result := fDice2score;
end;

function TRoll.GetDice3score: integer;
begin
  Result := fDice3score;
end;

function TRoll.GetDisocuntcode: string;
begin
  fDiscountCode := IntToStr(Randomrange(100, 1000)) + copy(fFname, 1, 2) + copy
    (fSurname, 1, 2);
  Result := fDiscountCode;
end;

procedure TRoll.RollDice1(iRoll1: integer);
begin
  fDice1score := iRoll1;
end;

procedure TRoll.RollDice2(iRoll2: integer);
begin
  fDice2score := iRoll2;
end;

procedure TRoll.RollDice3(iRoll3: integer);
begin
  fDice2score := iRoll3;
end;

function TRoll.ToString: string;
begin
  Result := 'Your discount code is ' + fDiscountCode;
end;

end.
