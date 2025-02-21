table 50144 "placed_students"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; s_id; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Placed Student ID';
            TableRelation = unplaced_students.st_id;
        }

        field(2; s_name; Text[40])
        {
            DataClassification = ToBeClassified;
            Caption = 'Placed Student Name';
            TableRelation = unplaced_students.st_name;
        }

        field(3; s_conta_number; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Student Contact Number';
            TableRelation = unplaced_students.st_c_number;
        }

        field(4; is_placed; Text[5])
        {
            DataClassification = CustomerContent;
            Caption = 'Is Student Placed';
            InitValue = "YES";
            Editable = false;
        }

        field(5; accepted_offer; Text[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Accepted Offer?';
        }
    }

    keys
    {
        key(Key1; s_id)
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

    end;

    trigger OnRename()
    begin

    end;

}