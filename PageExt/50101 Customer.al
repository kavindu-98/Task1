pageextension 50101 Customer extends "Customer Card"
{
    layout
    {
        addafter(SalesHistBilltoFactBox)
        {
            part(BankGuaranteeFactBox; "Bank Guarantee FactBox")
            {
                ApplicationArea = all;
                SubPageLink = "no." = field("No.");
            }
        }
    }
    actions
    {
        addafter("&Customer")
        {
            action("Bank Guarantee")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Bank Guarantee';
                Image = Bank;
                Promoted = true;
                PromotedCategory = Category4;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    BankGuarantee: Record "Bank Guarantee";
                begin
                    Clear(BankGuarantee);
                    BankGuarantee.SetRange(Type, BankGuarantee.Type::Customer);
                    BankGuarantee.SetRange("no.", Rec."No.");
                    if (BankGuarantee.FindFirst()) then begin
                        PAGE.Run(PAGE::"Bank Guarantee", BankGuarantee);
                    end;
                end;
            }
        }
    }
}
