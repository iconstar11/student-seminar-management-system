page 50112 "Student Card"
{
    ApplicationArea = All;
    Caption = 'Student Card';
    PageType = Card;
    SourceTable = Student;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("AdnNo."; Rec."AdnNo.")
                {
                    ToolTip = 'Specifies the value of the AdnNo. field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.', Comment = '%';
                }
                field("Post Code "; Rec."Post Code")
                {
                    ToolTip = 'Specifies the value of the Post Code field.', Comment = '%';
                    LookupPageId = "Post Codes";
                }
                field("Country Code"; Rec."Country Code")
                {
                    ToolTip = 'Specifies the value of the Country Code field.', Comment = '%';
                }
                field("Phone No"; Rec."Phone No")
                {
                    ToolTip = 'Specifies the value of the Phone No field.', Comment = '%';
                }
                field(Contact; Rec.Contact)
                {
                    ToolTip = 'Specifies the value of the Contact field.', Comment = '%';
                }
                field("Seminar Registration Status"; Rec."Seminar Registration Status")
                {
                    ToolTip = 'Is the Student Registered for the Seminar';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(RegisterForSeminar)
            {
                Caption = 'Register for a Seminar';
                Image = Action;
                trigger OnAction()

                begin
                    if Rec."Seminar Registration Status" <> Rec."Seminar Registration Status"::Registered then begin
                        Rec."Seminar Registration Status" := Rec."Seminar Registration Status"::Registered;
                        Rec.Modify(true);
                        Message('Student 1% s Registered for the seminar', Rec.Name);
                    end else
                        Message('Student 1% is already Registered for the seminar', Rec.Name);

                end;

            }
        }
    }

}
