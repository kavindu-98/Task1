page 50100 "Bank Guarantee"
{
    ApplicationArea = All;
    Caption = 'Bank Guarantee';
    PageType = Card;
    SourceTable = "Bank Guarantee";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type field.';
                }
                field("No."; Rec."no.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer no. field.';
                }
                field("Name"; Rec."Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Name field.';
                }
                field("Guarantee Code"; Rec."Guarantee Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Guarantee Code field.';
                }
                field("Security Type"; Rec."Security Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Type field.';
                }
                field("Bank Code"; Rec."Bank Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Code field.';
                }
                field("Bank Branch Name"; Rec."Bank Branch Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Branch Name field.';
                }
                field("Encash Branch"; Rec."Encash Branch")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Encash Branch field.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Currency Code field.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount field.';
                }
                field(Comments; Rec.Comments)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Comments field.';
                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Start Date field.';
                }
                field("End Date"; Rec."End Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the End Date field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.';
                }
            }
        }
    }
}
