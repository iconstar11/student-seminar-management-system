table 50112 "Seminar Registration"
{
    Caption = 'Seminar Registration';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Integer)
        {
            Caption = 'No';
            Editable = false;
            AutoIncrement = true;
        }
        field(2; SeminarID; Integer)
        {
            Caption = 'SeminarID';

            trigger OnValidate()

            var
                SeminarRec: Record Seminar;

            begin
                if SeminarRec.Get(SeminarID) then begin
                    "Seminar Title" := SeminarRec.Title
                end;
            end;
        }
        field(3; "Seminar Title"; Text[30])
        {
            Caption = 'Seminar Title';


        }
        field(4; "AdnNo."; Integer)
        {
            Caption = 'AdnNo.';
            TableRelation = Student;

            trigger OnValidate()
            var
                StudentRec: Record Student;
            begin
                StudentRec.Reset();

                if StudentRec.Get("AdnNo.") then begin
                    Name := StudentRec.Name;
                end;

            end;
        }
        field(5; Name; Text[30])
        {
            Caption = 'Name';
            TableRelation = Student;
        }
        field(6; "Registration Date"; Date)
        {

        }
    }
    keys
    {
        key(PK; No, SeminarID)
        {
            Clustered = true;
        }
        key(SK; "AdnNo.")
        {

        }
    }
    trigger OnInsert()
    var
        SeminarRec: Record Seminar;
    begin
        if "Registration Date" = 0D then
            "Registration Date" := Today;

        if SeminarRec.Get(SeminarID) then begin
            if SeminarRec.Status = SeminarRec.Status::Closed then
                Error('Seminar "%1" closed', SeminarRec.Title)
            else if SeminarRec.Status = SeminarRec.Status::full then
                Error('Seminar is full')
            else if SeminarRec."Approval Status" = SeminarRec."Approval Status"::Rejected then
                Error('This Seminar was disaprroved');
        end;
        SeminarRec."Students Registered" += 1;
        SeminarRec.Modify(true);
    end;

    trigger OnDelete()
    var
        SeminarRec: Record Seminar;
    begin
        if SeminarRec.Get(SeminarID) then begin
            SeminarRec."Students Registered" -= 1;
            SeminarRec.Modify(true);
        end;
    end;
}
