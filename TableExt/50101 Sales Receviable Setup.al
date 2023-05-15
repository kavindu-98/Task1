tableextension 50101 "Sales & Receviable Setup" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50100; "Bank Guarantee Formular"; DateFormula)
        {
            Caption = 'Bank Guarantee Formular';
            DataClassification = ToBeClassified;
        }
    }
}
