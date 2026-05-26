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

        field(70052; "Family"; Enum "Item Family Enum")
        {
            Caption = 'Family';
        }

        field(70053; "Capacity"; Enum "Item Capacity Enum")
        {
            Caption = 'Capacity';
        }

        field(70054; "Application"; Enum "Item Application Enum")
        {
            Caption = 'Application';
        }

        field(70055; "Version"; Enum "Item Version Enum")
        {
            Caption = 'Version';
        }

        field(70056; "Power"; Enum "Item Power Enum")
        {
            Caption = 'Power';
        }

        field(70057; "Option 24V-35A"; Boolean)
        {
            Caption = 'Option 24V - 35A - 0.84kW';
        }

        field(70058; "Option HVDC"; Boolean)
        {
            Caption = 'Option HVDC';
        }
    }
}
