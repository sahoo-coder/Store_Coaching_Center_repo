page 60012 placedStudentList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = placed_students;
    Caption = 'Placed Students';
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(s_id; Rec.s_id)
                {
                    ApplicationArea = All;
                    Caption = 'Student ID';
                }

                field(s_name; Rec.s_name)
                {
                    ApplicationArea = All;
                    Caption = 'Student Name';
                }

                field(is_placed; Rec.is_placed)
                {
                    ApplicationArea = All;
                    Caption = 'Is Student Placed?';
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