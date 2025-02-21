pageextension 50130 "added_showMessage_action" extends "Posted Sales Invoice"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addafter("IncomingDocAttachFile")
        {
            action("Show_Message_By_Kirti")
            {
                ApplicationArea = All;
                Caption = 'Show Message(Kirti)';
                Image = Action;
                Promoted = true;
                trigger OnAction()
                begin
                    Message('Hello, this is a test message from Kirti.');
                end;
            }
        }
    }

    var
        myInt: Integer;
}