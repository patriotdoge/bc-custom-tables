tableextension 70500 "Purch. Line Ext." extends "Purchase Line"
{
    fields
    {
        field(50100; "Carrier P/N"; Code[20])
        {
            Caption = 'Carrier P/N';
            FieldClass = FlowField;
            CalcFormula = lookup(Item."Carrier P/N" where("No." = field("No.")));
            Editable = false;
        }
    }
}