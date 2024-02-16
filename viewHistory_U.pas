unit viewHistory_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,login_U,dmWildlifeSafari_U, Buttons,GuestMenu_U;

type
  TfrmHistory = class(TForm)
    redoutput: TMemo;
    Label11: TLabel;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    Procedure PopulatesafariTransactions;
    Procedure PopulateactivitiesTransactions;
    Procedure PopulateAccomTransactions;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHistory: TfrmHistory;

implementation

{$R *.dfm}

procedure TfrmHistory.FormActivate(Sender: TObject);
begin
PopulatesafariTransactions;
PopulateAccomTransactions;
PopulateActivitiesTransactions;
end;

procedure TfrmHistory.PopulateAccomTransactions;
begin
 with dmwildlifesafari do
  begin
    // Pulling From 2 Tables
    tblAccom.Open;
    tblAccom.First;
    tblGuests.Open;
    tblGuests.First;
    // Basically Showing the user of Their previous Trnasactions
    Redoutput.Lines.Add('Accomodation Transactions' + #10);


    while not tblGuests.Eof do // Linking 2 tables at the same time
    begin
      if (tblGuests['Username'] = frmGuestmenu.Label2.Caption)
        then
      begin
        while not tblAccom.Eof do
        begin // Show the User all their previous transactions with our company
          if (tblAccom['GuestID'] = tblGuests['GuestID']) then
          begin
            Redoutput.Lines.Add(DateToStr(tblAccom['Date Of Sale'])
                + '  '+ FloatToStrF(tblAccom['Sales Amount'], ffcurrency, 6, 2));

          end;
          tblAccom.Next;

        end; // end of safari loop
      end; // end of If
      tblGuests.Next;
    end; // end of while

    tblGuests.close;
    tblactivitytickets.close;
  end;
  Redoutput.Lines.Add('====================');

end;

procedure TfrmHistory.PopulateactivitiesTransactions;
begin
 with dmwildlifesafari do
  begin
    // Pulling From 2 Tables
    tblactivitytickets.Open;
    tblactivitytickets.First;
    tblGuests.Open;
    tblGuests.First;
    // Basically Showing the user of Their previous Trnasactions
    Redoutput.Lines.Add('Activities Transactions' + #10);


    while not tblGuests.Eof do
    begin
      if  (tblGuests['Username'] = frmGuestmenu.Label2.Caption)
        then
      begin
        while not tblactivitytickets.Eof do
        begin
          if (tblactivitytickets['GuestID'] = tblGuests['GuestID']) then
          begin
            Redoutput.Lines.Add(DateToStr(tblactivitytickets['Date Of Sale'])
                + '  ' + FloatToStrF(tblactivitytickets['Sales Amount'],
                ffcurrency, 6, 2)); // showing all previous transactions

          end;
          tblactivitytickets.Next;

        end; // end of safari loop
      end; // end of If
      tblGuests.Next;
    end; // end of while

    tblGuests.close;
    tblactivitytickets.close;
  end;
  Redoutput.Lines.Add('=======================');
end;

procedure TfrmHistory.PopulatesafariTransactions;
begin
  with dmwildlifesafari do
  begin
    // Pulling From 2 Tables
    tblsafaritickets.Open;
    tblsafaritickets.First;
    tblGuests.Open;
    tblGuests.First;
    // Basically Showing the user of Their previous Trnasactions
    Redoutput.Lines.Add('Safari Transactions' + #10);

    Redoutput.Lines.Add('Date' + '  ' + 'Amount');

    while not tblGuests.Eof do
    begin // using 2 tables at the same time
      if  (tblGuests['Username'] = frmGuestmenu.Label2.Caption)
        then
      begin
        while not tblsafaritickets.Eof do
        begin
          if (tblsafaritickets['GuestID'] = tblGuests['GuestID']) then
          begin
            Redoutput.Lines.Add(DateToStr(tblsafaritickets['Date Of Sale'])
                + '  ' + FloatToStrF(tblsafaritickets['Total Sales Amount'],
                ffcurrency, 6, 2)); // showing all previous transactions

          end;
          tblsafaritickets.Next;

        end; // end of safari loop
      end; // end of If
      tblGuests.Next;
    end; // end of while

    tblGuests.close;
    tblsafaritickets.close;
  end;
  Redoutput.Lines.Add('=======================');
end;

end.
