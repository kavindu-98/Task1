tableextension 50100 "Finance Cue" extends "Finance Cue"
{
    fields
    {
        field(50100; "Bank Guarantees to be expired"; Integer)
        {
            Caption = 'Bank Guarantees to be expired';
            // CalcFormula = count("Bank Guarantee" where("End Date" =filter()));
            FieldClass = FlowField;
            // DataClassification = ToBeClassified;
        }
    }
}
