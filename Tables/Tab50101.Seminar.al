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
            Editable = false;
        }
        field(6; "Created By"; Text[30])
        {
            Caption = 'Created By';
            Editable = false;
        }
        field(7; "Seminar Date"; Date)
        {
            Caption = 'Seminar Date';
        }
        field(8; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = " ",Open,Closed,full;
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
        if Status = Status::" " then
            Status := Status::Open;

        if "Created By" = '' then
            "Created By" := UserId;
    end;

    trigger OnDelete()
    begin
        if "Students Registered" > 0 then
            Error('This seminar cannot be deleted because students are already registered.')
        else
            Message('You are about to delete this seminar. In future, deletion will be blocked if students are registered.');
    end;
}
