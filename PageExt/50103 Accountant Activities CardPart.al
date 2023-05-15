pageextension 50103 "Accountant Activities CardPart" extends "Accountant Activities"
{
    layout
    {
        addlast(Financials)
        {
            //  Caption = 'Financials';
            field("Bank Guarantees to be expired"; Rec."Bank Guarantees to be expired")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Bank Guarantees to be expired';
                DrillDownPageID = "Bank Guarantee";
                Image = Cash;
                ToolTip = 'Specifies a window to reconcile unpaid documents automatically with their related bank transactions by importing a bank statement feed or file. In the payment reconciliation journal, incoming or outgoing payments on your bank are automatically, or semi-automatically, applied to their related open customer or vendor ledger entries. Any open bank account ledger entries related to the applied customer or vendor ledger entries will be closed when you choose the Post Payments and Reconcile Bank Account action. This means that the bank account is automatically reconciled for payments that you post with the journal.';
            }
        }
    }
}
