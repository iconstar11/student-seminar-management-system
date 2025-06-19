page 50116 "Seminar Registration List"
{
    ApplicationArea = All;
    Caption = 'Seminar Registration List';
    PageType = List;
    SourceTable = "Seminar Registration";
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.', Comment = '%';
                }
                field(SeminarID; Rec.SeminarID)
                {
                    ToolTip = 'Specifies the value of the SeminarID field.', Comment = '%';
                }
                field("Seminar Title"; Rec."Seminar Title")
                {
                    ToolTip = 'Specifies the value of the Seminar Title field.', Comment = '%';
                }
                field("AdnNo."; Rec."AdnNo.")
                {
                    ToolTip = 'Specifies the value of the AdnNo. field.', Comment = '%';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.', Comment = '%';
                }
                field("Registration Date"; Rec."Registration Date")
                {
                    ToolTip = 'Specifies the value of the Registration Date field.', Comment = '%';
                }
            }
        }
    }
}
