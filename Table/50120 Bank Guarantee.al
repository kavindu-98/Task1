table 50120 "Bank Guarantee"
{
    Caption = 'Bank Guarantee';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Type"; Option)
        {
            Caption = 'Type';
            DataClassification = ToBeClassified;
            OptionMembers = Customer,Vendor;
            OptionCaption = 'Customer,Vendor';
        }
        field(2; "no."; Code[100])
        {
            Caption = 'no.';
            DataClassification = ToBeClassified;
            TableRelation = if (Type = const(Customer)) Customer."No."
            else
            if (Type = const(Vendor)) Vendor."No.";

            trigger OnValidate()
            var
                Customer: Record Customer;
                vendor: Record Vendor;
            begin
                case Rec.Type of
                    Type::Customer:
                        begin
                            if Customer.Get("no.") then begin
                                Rec.Name := Customer.Name;
                            end
                        end;

                    Type::Vendor:
                        begin
                            if vendor.Get("no.") then begin
                                Rec.Name := vendor.Name;
                            end;
                        end;
                end;
            end;
        }
        field(3; "Name"; Text[100])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(4; "Guarantee Code"; Code[100])
        {
            Caption = 'Guarantee Code';
            DataClassification = ToBeClassified;
        }
        field(5; "Security Type"; Option)
        {
            Caption = 'Security Type';
            DataClassification = ToBeClassified;
            OptionMembers = "Bank Guarantee","Cash Deposit","Promissory Note","Other";
            OptionCaption = 'Bank Guarantee ,Cash Deposit,Promissory Note,Other ';
        }
        field(6; "Bank Code"; Code[50])
        {
            Caption = 'Bank Code';
            TableRelation = "Customer Bank Account".Code;
            DataClassification = CustomerContent;
            trigger OnValidate()
            var
                CustomerBankAcc: Record "Customer Bank Account";
            begin
                Clear(CustomerBankAcc);
                if ("Bank Code" <> '') then begin
                    CustomerBankAcc.SetRange(Code, Rec."Bank Code");
                    if (CustomerBankAcc.FindFirst()) then begin
                        Rec."Bank Branch Name" := CustomerBankAcc.Name;
                    end;
                end;
            end;
        }
        field(7; "Bank Branch Name"; Text[100])
        {
            Caption = 'Bank Branch Name';
            DataClassification = ToBeClassified;
        }
        field(8; "Encash Branch"; Text[100])
        {
            Caption = 'Encash Branch';
            DataClassification = ToBeClassified;
        }
        field(9; "Currency Code"; Code[100])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
            DataClassification = ToBeClassified;
        }
        field(10; Amount; Decimal)
        {
            Caption = 'Amount';
            DataClassification = ToBeClassified;
        }
        field(11; Comments; Text[100])
        {
            Caption = 'Comments';
            DataClassification = ToBeClassified;
        }
        field(12; "Start Date"; Date)
        {
            Caption = 'Start Date';
            DataClassification = ToBeClassified;
        }
        field(13; "End Date"; Date)
        {
            Caption = 'End Date';
            DataClassification = ToBeClassified;
        }
        field(14; Status; Option)
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;
            OptionMembers = Active,Inactive;
            OptionCaption = 'Active,Inactive';
        }
        field(15; "No. of Bank Guarantee"; Integer)
        {
            CalcFormula = count("Bank Guarantee" where(Status = filter(Active), Type = filter(Customer), "Security Type" = filter("Bank Guarantee")));
            Caption = 'No. of Bank Guarantee';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "No. of Cash Deposit"; Integer)
        {
            CalcFormula = count("Bank Guarantee" where(Status = filter(Active), Type = filter(Customer), "Security Type" = filter("Cash Deposit")));
            Caption = 'No. of Cash Deposit';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "No. of Promissory Note"; Integer)
        {
            CalcFormula = count("Bank Guarantee" where(Status = filter(Active), Type = filter(Customer), "Security Type" = filter("Promissory Note")));
            Caption = 'No. of Promissory Note';
            Editable = false;
            FieldClass = FlowField;
        }
        field(18; "No. of Other"; Integer)
        {
            CalcFormula = count("Bank Guarantee" where(Status = filter(Active), Type = filter(Customer), "Security Type" = filter(Other)));
            Caption = 'No. of Other';
            Editable = false;
            FieldClass = FlowField;
        }
    }
    keys
    {
        key(PK; "Guarantee Code")
        {
            Clustered = true;
        }
    }
}
