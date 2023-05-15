page 50101 "Bank Guarantee List"
{
    ApplicationArea = All;
    Caption = 'Bank Guarantee List';
    PageType = List;
    CardPageId = "Bank Guarantee";
    SourceTable = "Bank Guarantee";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Guarantee Code"; Rec."Guarantee Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Guarantee Code field.';
                }
                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type field.';
                }
                field("no."; Rec."no.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer no. field.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Name field.';
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
