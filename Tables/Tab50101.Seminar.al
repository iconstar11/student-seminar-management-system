table 50101 Seminar
{
    Caption = 'Seminar';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; SeminarID; Code[10])
        {
            Caption = 'SeminarID';
        }
        field(2; Title; Text[30])
        {
            Caption = 'Title';
        }
        field(3; "Max Seats"; Integer)
        {
            Caption = 'Max Seats';
        }
        field(4; Location; Text[30])
        {
            Caption = 'Location';
        }
        field(5; "Students Registered"; Integer)
        {
            Caption = 'Students Registered';
        }
        field(6; "Created By"; Text[30])
        {
            Caption = 'Created By';
        }
        field(7; "Seminar Date"; Date)
        {
            Caption = 'Seminar Date';
        }
        field(8; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = Open,Closed;
        }
    }
    keys
    {
        key(PK; SeminarID)
        {
            Clustered = true;
        }
    }
}
