page 50114 "Seminar List"
{
    ApplicationArea = All;
    Caption = 'Seminar List';
    PageType = List;
    SourceTable = Seminar;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(SeminarID; Rec.SeminarID)
                {
                    ToolTip = 'Specifies the value of the SeminarID field.', Comment = '%';
                }
                field(Title; Rec.Title)
                {
                    ToolTip = 'Specifies the value of the Title field.', Comment = '%';
                }
                field(Location; Rec.Location)
                {
                    ToolTip = 'Specifies the value of the Location field.', Comment = '%';
                }
                field("Students Registered"; Rec."Students Registered")
                {
                    ToolTip = 'Specifies the value of the Students Registered field.', Comment = '%';
                }
                field("Seminar Date"; Rec."Seminar Date")
                {
                    ToolTip = 'Specifies the value of the Seminar Date field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
            }
        }
    }
}
