unit ClsReviews;

interface

type
  Treviews = class(TObject)
  private
    fSuggestions,fcomments, fsurname, fFName: string;
    frating: integer;

  public
    constructor Create(pComments,pSuggestions, psurname, pFName: string; pRating: integer);

  end;

implementation

uses sysutils;

{ Treviews }

constructor Treviews.Create(pComments, pSuggestions, psurname, pFName);
begin
fRating:=0;

end;

end.
