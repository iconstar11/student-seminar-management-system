page 50111 "Student List"
{
    ApplicationArea = All;
    Caption = 'Student List';
    PageType = List;
    SourceTable = Student;
    Editable = false;
    CardPageId = 50112;


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("AdnNo."; Rec."AdnNo.")
                {
                    ToolTip = 'Specifies the value of the AdnNo. field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
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
}
