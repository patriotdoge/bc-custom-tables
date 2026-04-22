tableextension 70050 "Item Ext Custom Tables" extends Item
{
    fields
    {
        field(70050; "Carrier P/N"; Code[20])
        {
            Caption = 'Carrier P/N';
        }

        field(70051; "Spare Part"; Boolean)
        {
            Caption = 'Spare Part';
        }
    }
}
