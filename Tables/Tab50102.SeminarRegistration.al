table 50102 "Seminar Registration"
{
    Caption = 'Seminar Registration';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; No; Integer)
        {
            Caption = 'No';
        }
        field(2; SeminarID; Integer)
        {
            Caption = 'SeminarID';
        }
        field(3; "Seminar Title"; Text[30])
        {
            Caption = 'Seminar Title';
        }
        field(4; "AdnNo."; Integer)
        {
            Caption = 'AdnNo.';
        }
        field(5; Name; Text[30])
        {
            Caption = 'Name';
        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
}
