table 50125 "My_Store"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Item_Number; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Item Number';
        }

        field(2; Item_Name; Code[60])
        {
            DataClassification = ToBeClassified;
            Caption = 'Item name';
        }

        field(3; Item_Cost_Price; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Item Cost Price';
            trigger OnValidate()
            begin
                Message('Cost Price of the item %1 updated to %2', Rec.Item_Name, Rec.Item_Cost_Price);
            end;
        }

        field(4; Item_Selling_Price; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Item Selling Price';
            trigger OnValidate()
            begin
                Message('Item Selling Price of the item %1 updated to %2', Rec.Item_Name, Rec.Item_Selling_Price);
            end;
        }
    }

    keys
    {
        key(Key1; Item_Number)
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