tableextension 70250 "Sales Header Ext" extends "Sales Header"
{
    fields
    {
        field(70251; "Vehicle Type"; Option)
        {
            Caption = 'Vehicle Type';
            DataClassification = CustomerContent;
            OptionMembers = " ","Rigid Truck","Drawback Trailer","Semi-Trailer","Other";
        }

        field(70252; "Engine Type"; Option)
        {
            Caption = 'Engine Type';
            DataClassification = CustomerContent;
            OptionMembers = " ","Diesel","Electric","Hybrid","Hydrogen","Gas";
        }

        field(70253; "Vehicle Brand"; Text[30])
        {
            Caption = 'Vehicle Brand';
            DataClassification = CustomerContent;
        }

        field(70254; "Vehicle Model"; Text[30])
        {
            Caption = 'Vehicle Model';
            DataClassification = CustomerContent;
        }

        field(70255; "Reefer Model"; Text[80])
        {
            Caption = 'Reefer Model';
            DataClassification = CustomerContent;
        }

        field(70256; "Thermograph 1"; Text[40])
        {
            Caption = 'Thermograph 1';
            DataClassification = CustomerContent;
        }

        field(70257; "Thermograph 2"; Text[40])
        {
            Caption = 'Thermograph 2';
            DataClassification = CustomerContent;
        }

        field(70258; "Battery Voltage"; Option)
        {
            Caption = 'Battery Voltage';
            DataClassification = CustomerContent;
            OptionMembers = " ","12V","24V";
        }

        field(70259; "Main Input/Output"; Option)
        {
            Caption = 'Main Input/Output';
            DataClassification = CustomerContent;
            OptionMembers = " ","400V/3ph/50HZ","400V/3ph/60Hz","480V/3ph/60Hz","230V/1ph/50Hz","230V/3ph/50Hz";
        }

        field(70260; "HMI Mode"; Option)
        {
            Caption = 'HMI Mode';
            DataClassification = CustomerContent;
            OptionMembers = " ","CMD w/SOC Lights OFF","CMD w/SOC Lights ON","Display";
        }

        field(70261; "HMI Start Settings"; Option)
        {
            Caption = 'HMI Start Settings';
            DataClassification = CustomerContent;
            OptionMembers = " ","Standard ON/OFF","Frigoblock AutoStart","BAX";
        }

        field(70262; "CAN 2 Protocol"; Option)
        {
            Caption = 'CAN 2 Protocol';
            DataClassification = CustomerContent;
            OptionMembers = " ","Not Applicable","Frigoblock","EBS";
        }

        field(70263; "HVDC Output"; Option)
        {
            Caption = 'HVDC Output';
            DataClassification = CustomerContent;
            OptionMembers = " ","Not Applicable","250V to 400VDC","400V","700V";
        }

        field(70264; "Engine Generator"; Option)
        {
            Caption = 'Engine Generator';
            DataClassification = CustomerContent;
            OptionMembers = " ","Not Applicable","Carrier / Eco-drive","Frigoblock / AW22.5";
        }

        field(70265; "Engine Generator Config."; Option)
        {
            Caption = 'Engine Generator Config.';
            DataClassification = CustomerContent;
            OptionMembers = " ","Not Applicable","1 Charging with low current","2 Never charging","3 Charging only when reefer is off","4 Charging up to 16A per phase";
        }

        field(70266; "Ecodrive on Hybrid Vehicles"; Option)
        {
            Caption = 'Ecodrive on Hybrid Vehicles';
            DataClassification = CustomerContent;
            OptionMembers = " ","Yes","No";
        }

        field(70267; "Kinetic Generator"; Option)
        {
            Caption = 'Kinetic Generator';
            DataClassification = CustomerContent;
            OptionMembers = " ","Not Applicable","SAF / TRAKe","SAF / TRAKr","Valx / Valx Energy Axle","ADD Kinetic";
        }

        field(70268; "Installation Address"; Text[160])
        {
            Caption = 'Installation Address';
            DataClassification = CustomerContent;
        }

        field(70269; "Support"; Text[80])
        {
            Caption = 'Support (remote/on site)';
            DataClassification = CustomerContent;
        }

        field(70270; "Expected Date"; Date)
        {
            Caption = 'Expected Installation Date';
            DataClassification = CustomerContent;
        }

        field(70271; "Seller"; Text[60])
        {
            Caption = 'Seller';
            DataClassification = CustomerContent;
        }

        field(70272; "Final Client"; Text[60])
        {
            Caption = 'Final Client';
            DataClassification = CustomerContent;
        }

        field(70273; "Contact Person"; Text[50])
        {
            Caption = 'Contact Person';
            DataClassification = CustomerContent;
        }

        field(70274; "Installation Required"; Option)
        {
            Caption = 'Installation Support Needed?';
            DataClassification = CustomerContent;
            OptionMembers = " ","Yes","No";
        }

        field(70275; "LVDC Output"; Option)
        {
            Caption = 'LVDC Output';
            DataClassification = CustomerContent;
            OptionMembers = " ","Not Applicable","24V OUT(35A)@980W","12V OUT(40A)@560W","24V OUT(75A)@2kW","12V OUT[75A)@1kW";
        }

        field(70276; "Tail Lift Brand"; Text[20])
        {
            Caption = 'Tail Lift Brand/Model';
            DataClassification = CustomerContent;
        }

        field(70277; "Observations Text"; Text[500])
        {
            Caption = 'Observations';
            DataClassification = CustomerContent;
        }

        field(70278; "Reefer YN"; Option)
        {
            Caption = 'Reefer?';
            DataClassification = CustomerContent;
            OptionMembers = " ","Yes","No";
        }

        field(70279; "Application"; Text[80])
        {
            Caption = 'Application';
            DataClassification = CustomerContent;
        }

        field(70280; "Branding Kit"; Option)
        {
            Caption = 'Branding Kit';
            DataClassification = CustomerContent;
            OptionMembers = " ","Not Applicable","Orange - Addvolt","Blue - Carrier";
        }

        field(70281; "Reefer Model Option"; Enum "Reefer Model Enum")
        {
            Caption = 'Reefer Model';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                "Reefer Model" := Format("Reefer Model Option");
                if "Reefer Model Option" = "Reefer Model Option"::" " then
                    "Reefer Model" := '';
            end;
        }

        field(70282; "Thermograph 1 Option"; Enum "Thermograph Enum")
        {
            Caption = 'Thermograph 1';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                "Thermograph 1" := Format("Thermograph 1 Option");
                if "Thermograph 1 Option" = "Thermograph 1 Option"::" " then
                    "Thermograph 1" := '';
            end;
        }

        field(70283; "Thermograph 2 Option"; Enum "Thermograph Enum")
        {
            Caption = 'Thermograph 2';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                "Thermograph 2" := Format("Thermograph 2 Option");
                if "Thermograph 2 Option" = "Thermograph 2 Option"::" " then
                    "Thermograph 2" := '';
            end;
        }

        field(70284; "Blueprint"; Text[30])
        {
            Caption = 'Blueprint';
            DataClassification = CustomerContent;
        }
    }
}
