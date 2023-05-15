page 50102 "Bank Guarantee FactBox"
{
    Caption = 'Bank Guarantee FactBox';
    PageType = CardPart;
    SourceTable = "Bank Guarantee";

    layout
    {
        area(content)
        {
            cuegroup(General)
            {
                ShowCaption = false;
                field("No. of Bank Guarantee"; Rec."No. of Bank Guarantee")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'No of Bank Guarantee';
                    DrillDownPageId = "Bank Guarantee List";
                }
                field("No. of Cash Deposit"; Rec."No. of Cash Deposit")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'No of Cash Deposit';
                    DrillDownPageId = "Bank Guarantee List";
                }
                field("No. of Promissory Note"; Rec."No. of Promissory Note")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'No of Promissory Note';
                    DrillDownPageId = "Bank Guarantee List";
                }
                field("No. of Other"; Rec."No. of Other")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'No of Other Bank Guarantee';
                    DrillDownPageId = "Bank Guarantee List";

                }
            }
        }
    }
}
