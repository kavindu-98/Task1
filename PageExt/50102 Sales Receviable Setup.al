pageextension 50102 "Sales & Receviable Setup" extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Document Default Line Type")
        {
            field("Bank Guarantee Formular"; Rec."Bank Guarantee Formular")
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }
}
