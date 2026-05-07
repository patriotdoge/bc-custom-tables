tableextension 70010 "Internal Movement Line Ext." extends "Internal Movement Line"
{
    fields
    {
        field(70010; "Item Search"; Code[20])
        {
            Caption = 'Item Search';
            DataClassification = CustomerContent;
            TableRelation = "Bin Content"."Item No."
                where("Location Code" = field("Location Code"),
                "Bin Code" = field("From Bin Code"),
                Quantity = filter(> 0));
        }
    }
}
