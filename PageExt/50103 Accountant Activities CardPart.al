pageextension 50103 "Accountant Activities CardPart" extends "Accountant Activities"
{
    layout
    {
        addlast(Financials)
        {
            field("Bank Guarantees To Be Expired"; Rec."Bank Guarantees To Be Expired")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Bank Guarantees To Be Expired';
                Image = Cash;

                trigger OnDrillDown()
                var
                    BankGuarantee: Record "Bank Guarantee";
                    SalesReceviableSetup: Record "Sales & Receivables Setup";
                    WorkDate: Date;
                    DateSR: DateFormula;
                begin
                    Clear(BankGuarantee);
                    Clear(SalesReceviableSetup);
                    WorkDate := Today;
                    SalesReceviableSetup.Get();
                    DateSR := SalesReceviableSetup."Bank Guarantee Formular";
                    BankGuarantee.SetRange(Status, BankGuarantee.Status::Active);
                    BankGuarantee.SetFilter("End Date", '..%1&<>%2', CalcDate(format(DateSR), Today), 0D);
                    if (BankGuarantee.FindFirst()) then begin
                        Page.Run(Page::"Bank Guarantee List", BankGuarantee);
                        CurrPage.Editable := false;
                    end;
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    var
        BankGuarantee: Record "Bank Guarantee";
        SalesReceviableSetup: Record "Sales & Receivables Setup";
        WorkDate: Date;
        DateSR: DateFormula;
    begin
        Clear(BankGuarantee);
        Clear(SalesReceviableSetup);
        WorkDate := Today;
        SalesReceviableSetup.Get();
        DateSR := SalesReceviableSetup."Bank Guarantee Formular";
        BankGuarantee.SetRange(Status, BankGuarantee.Status::Active);
        BankGuarantee.SetFilter("End Date", '..%1&<>%2', CalcDate(format(DateSR), Today), 0D);
        if (BankGuarantee.FindFirst()) then begin
            Rec."Bank Guarantees to be expired" := BankGuarantee.Count();
        end;
    end;




}
