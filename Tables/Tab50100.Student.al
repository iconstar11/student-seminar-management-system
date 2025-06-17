table 50100 Student
{
    Caption = 'Student';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "AdnNo."; Integer)
        {
            Caption = 'AdnNo.';
        }
        field(2; Name; Text[30])
        {
            Caption = 'Name';
        }
        field(3; City; Text[30])
        {
            Caption = 'City';

        }
        field(4; "Post Code "; Code[20])
        {
            Caption = 'Post Code ';
            TableRelation = "Post Code";
        }
        field(5; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "Country/Region";
        }
        field(6; "Phone No"; Text[30])
        {
            Caption = 'Phone No';
        }
        field(7; Contact; Text[50])
        {
            Caption = 'Contact';
        }
        field(8; "Seminar Registration Status"; Option)
        {
            Caption = 'Seminar Registration Status';
            OptionMembers = Regitered,NotRegitered;
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
