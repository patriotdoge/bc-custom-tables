tableextension 70150 SalesLineExt extends "Sales Line"
{
    fields
    {
        field(70150; "Document Status"; Enum "Sales Document Status")
        {
            Caption = 'Document Status';
            FieldClass = FlowField;
            CalcFormula = lookup("Sales Header".Status
                where("Document Type" = field("Document Type"),
                      "No." = field("Document No.")));
            Editable = false;
        }
    }
}