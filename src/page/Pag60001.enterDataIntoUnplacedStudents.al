page 60001 enterDataIntoUnplacedStudents
{
    PageType = Card;
    ApplicationArea = All;
    Caption = 'Enter Data INto Unplaced Student';
    UsageCategory = Administration;
    SourceTable = unplaced_students;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(st_id; Rec.st_id)
                {
                    ApplicationArea = All;
                    Caption = 'Student ID';
                }

                field(st_name; Rec.st_name)
                {
                    ApplicationArea = All;
                    Caption = 'Student Name';
                }

                field(st_c_number; Rec.st_c_number)
                {
                    ApplicationArea = All;
                    Caption = 'Student Contact Number';
                }

                field(curr_location; Rec.curr_location)
                {
                    ApplicationArea = All;
                    Caption = 'Students Current Location';
                }

                field(is_placed; Rec.is_placed)
                {
                    ApplicationArea = All;
                    Caption = 'Is student placed?';
                    Editable = false;
                }
                field(offer_accepted; Rec.offer_accepted)
                {
                    ApplicationArea = All;
                    Caption = 'Offer Accepted?';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}