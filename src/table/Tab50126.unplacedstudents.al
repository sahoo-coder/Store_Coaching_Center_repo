table 50126 "unplaced_students"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; st_id; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Student ID';
        }

        field(2; st_name; Text[45])
        {
            DataClassification = ToBeClassified;
            Caption = 'Student Name';
        }

        field(3; st_c_number; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Contact Number';
        }

        field(4; curr_location; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Current Location';
        }

        field(5; is_placed; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Is student got Placed?';
            InitValue = false;
        }

        field(6; offer_accepted; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Yes,No;
            Caption = 'Offer Accepted?';
            InitValue = No;
        }
    }

    keys
    {
        key(Key1; st_id)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin
        Message('Student with ID %1 Deleted', Rec.st_id);
    end;

    trigger OnRename()
    begin

    end;

}