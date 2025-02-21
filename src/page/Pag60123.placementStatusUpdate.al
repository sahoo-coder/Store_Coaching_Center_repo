page 60123 placementStatusUpdate
{
    PageType = Document;
    Caption = 'Placement Status Update';
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = unplaced_students;
    Editable = true;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(st_id; Rec.st_id)
                {
                    ApplicationArea = All;
                    TableRelation = unplaced_students.st_id;
                }

                field(st_name; Rec.st_name)
                {
                    ApplicationArea = All;
                    TableRelation = unplaced_students.st_name;
                }

                field(offer_accepted; Rec.offer_accepted)
                {
                    ApplicationArea = All;
                    Editable = true;
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Mark as Placed")
            {
                ApplicationArea = All;
                Caption = 'Mark as Placed';
                Promoted = true;
                Image = CheckList;

                trigger OnAction()
                var
                    placedStudents: Record placed_students;
                    unplacedStudents: Record unplaced_students;
                begin
                    if not unplacedStudents.Get(Rec.st_id) then begin
                        Error('Record Not Found!');
                    end;

                    placedStudents.Init();
                    placedStudents.s_id := unplacedStudents.st_id;
                    placedStudents.s_name := unplacedStudents.st_name;
                    placedStudents.s_conta_number := unplacedStudents.st_c_number;
                    placedStudents.accepted_offer := Format(Rec.offer_accepted);
                    placedStudents.Insert();
                    unplacedStudents.Delete();
                    Message('%1 has been placed', unplacedStudents.st_name);
                    Page.Run(60012);
                    ;
                end;
            }
        }
    }

    var
        myInt: Integer;
}