tableextension 70501 "Purchase Header Ext." extends "Purchase Header"
{
    fields
    {
        field(70501; "Restrict Visibility"; Boolean)
        {
            Caption = 'Restrict Visibility';
            DataClassification = CustomerContent;
        }
    }
}
