tableextension 70001 "Internal Movement Header Ext." extends "Internal Movement Header"
{
    fields
    {
        field(70001; "From Bin Code"; Code[20])
        {
            Caption = 'From Bin Code';
            DataClassification = CustomerContent;
            TableRelation = Bin.Code where("Location Code" = field("Location Code"));
        }
    }
}
