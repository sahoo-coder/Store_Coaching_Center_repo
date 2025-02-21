page 50132 unplacedStudentList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = unplaced_students;
    Caption = 'Unplaced Students';
    Editable = false;
    CardPageId = 60001;

    layout
    {
        area(Content)
        {
            repeater(Group)
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