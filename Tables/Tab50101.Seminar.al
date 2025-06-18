table 50111 Seminar
{
    Caption = 'Seminar';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; SeminarID; Integer)
        {
            Caption = 'SeminarID';
            AutoIncrement = true;
            Editable = false;

        }
        field(2; Title; Text[30])
        {
            Caption = 'Title';
        }
        field(3; "Max Seats"; Integer)
        {
            Caption = 'Max Seats';

            trigger OnValidate()
            begin
                if "Max Seats" < 1 then
                    Error('Max Seats Must more than 0');
            end;
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
            OptionMembers = ,Open,Closed;
            Editable = false;
        }
    }
    keys
    {
        key(PK; SeminarID)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()

    begin
        Status := Status::Open;
    end;
}
