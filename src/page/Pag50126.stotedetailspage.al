page 50126 "stote_details_page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = My_Store;
    Caption = 'Store Details Page';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Item_Number; Rec.Item_Number)
                {
                    ApplicationArea = All;
                }

                field(Item_Name; Rec.Item_Name)
                {
                    ApplicationArea = All;
                }

                field(Item_Cost_Price; Rec.Item_Cost_Price)
                {
                    ApplicationArea = All;
                }

                field(Item_Selling_Price; Rec.Item_Selling_Price)
                {
                    ApplicationArea = All;
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