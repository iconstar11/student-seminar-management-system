page 50115 "SeminarRegistration ListPart"
{
    ApplicationArea = All;
    Caption = 'Registered Students ListPart';
    PageType = ListPart;
    SourceTable = "Seminar Registration";

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
