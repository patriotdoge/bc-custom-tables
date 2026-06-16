table 70900 "POD Document"
{
    Caption = 'POD Document';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;
            DataClassification = CustomerContent;
        }
        field(2; "Shipment No."; Code[20])
        {
            Caption = 'Shipment No.';
            DataClassification = CustomerContent;
            TableRelation = "Sales Shipment Header"."No.";
        }
        field(3; "File Name"; Text[250])
        {
            Caption = 'File Name';
            DataClassification = CustomerContent;
        }
        field(4; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(5; "Uploaded By"; Code[50])
        {
            Caption = 'Uploaded By';
            DataClassification = EndUserIdentifiableInformation;
        }
        field(6; "Uploaded At"; DateTime)
        {
            Caption = 'Uploaded At';
            DataClassification = CustomerContent;
        }
        field(7; Content; Blob)
        {
            Caption = 'Content';
            DataClassification = CustomerContent;
        }
        field(8; "Tracking No."; Text[50])
        {
            Caption = 'Tracking No.';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key(ShipmentIdx; "Shipment No.", "Entry No.") { }
    }

    trigger OnInsert()
    begin
        Rec."Uploaded By" := CopyStr(UserId(), 1, MaxStrLen(Rec."Uploaded By"));
        Rec."Uploaded At" := CurrentDateTime();
    end;
}
