page 50113 "Seminar Card"
{
    ApplicationArea = All;
    Caption = 'Seminar Card';
    PageType = Card;
    SourceTable = Seminar;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(SeminarID; Rec.SeminarID)
                {
                    ToolTip = 'Specifies the value of the SeminarID field.', Comment = '%';
                }
                field(Title; Rec.Title)
                {
                    ToolTip = 'Specifies the value of the Title field.', Comment = '%';
                }
                field("Max Seats"; Rec."Max Seats")
                {
                    ToolTip = 'Specifies the value of the Max Seats field.', Comment = '%';
                }
                field(Location; Rec.Location)
                {
                    ToolTip = 'Specifies the value of the Location field.', Comment = '%';
                }
                field("Students Registered"; Rec."Students Registered")
                {
                    ToolTip = 'Specifies the value of the Students Registered field.', Comment = '%';
                }
                field("Created By"; Rec."Created By")
                {
                    ToolTip = 'Specifies the value of the Created By field.', Comment = '%';
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
            part(RegistredStudents; "SeminarRegistration ListPart")
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = SeminarID = field(SeminarID);
            }
        }
    }
    actions
    {

        area(Processing)
        {
            action(Openpage)
            {
                Caption = 'Open Seminar List';

                RunObject = page "Seminar List";

            }
            action(CloseSeminar)
            {
                Caption = 'Close This Seminar';
                Image = Close;
                trigger OnAction();

                begin
                    if Rec.Status = Rec.Status::Closed then
                        Message('Seminar "%1" is already closed', Rec.Title)
                    else begin
                        Rec.Status := Rec.Status::Closed;
                        Rec.Modify(true);
                        Message('Seminar "%1" is Closed', Rec.Title);
                    end;
                end;
            }
            action(OpenSeminar)
            {
                Caption = 'Open Seminar';
                Image = Open;

                trigger OnAction()
                begin
                    if Rec.Status = Rec.Status::Open then
                        Message('Seminar "%1" is already Opened')
                    else if Rec.Status = Rec.Status::full then
                        Error('You can open a full seminar')
                    else begin
                        Rec.Status := Rec.Status::Open;
                        Message('You have set the status of Seminar "%1" to Open', Rec.Title);

                    end

                end;
            }

        }
    }
    trigger OnOpenPage()
    begin
        if Rec.Status = Rec.Status::Closed then
            Message('This Seminar is closed');
    end;
}
