table 50127 "complete_info_placed_student"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; s_id; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Student ID';
            TableRelation = placed_students.s_id;
        }

        field(2; s_name; Text[30])
        {
            DataClassification = ToBeClassified;
            Caption = 'Student Name';
            TableRelation = placed_students.s_name;
        }

        field(3; c_details; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Contact Number';
        }

        field(4; Cmp_name; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Placed Company Name';
        }

        field(5; isJoined; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Is Student Joined The Company?';
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