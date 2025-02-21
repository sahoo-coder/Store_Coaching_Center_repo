page 50268 completeStudentDetails
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = unplaced_students;
    Editable = false;

    layout
    {
        area(Content)
        {
            group(StudentInformation)
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
                    Caption = 'Current Location';
                }

                field(is_placed; Rec.is_placed)
                {
                    ApplicationArea = All;
                    Caption = 'Is student Placed?';
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