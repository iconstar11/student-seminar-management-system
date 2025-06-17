table 50100 Student
{
    Caption = 'Student';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "AdnNo."; Integer)
        {
            Caption = 'AdnNo.';
            Editable = false;
            AutoIncrement = true;


        }
        field(2; Name; Text[30])
        {
            Caption = 'Name';
        }
        field(3; City; Text[30])
        {
            Caption = 'City';

        }
        field(4; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = "Post Code".Code;


            trigger OnValidate()

            var
                PostRec: Record "Post Code";

            begin
                PostRec.Reset();
                if PostRec.Get("Post Code") then begin
                    "Country Code" := PostRec."Country/Region Code";
                    City := PostRec.City;
                end else
                    Error('Post Code %1 not found in the system.', "Post Code");
            end;

        }
        field(5; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            Editable = false;
        }
        field(6; "Phone No"; Text[30])
        {
            Caption = 'Phone No';
        }
        field(7; Contact; Text[50])
        {
            Caption = 'Contact';
            TableRelation = Contact;
        }

        field(8; "Seminar Registration Status"; Option)
        {
            Caption = 'Seminar Registration Status';
            OptionMembers = "Not Registered",Registered;


        }
    }
    keys
    {
        key(PK; "AdnNo.")
        {
            Clustered = true;
        }
    }
}
