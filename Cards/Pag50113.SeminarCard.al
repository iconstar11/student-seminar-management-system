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
                field("Approval Status"; Rec."Approval Status")
                {
                    ToolTip = 'Seminar status';
                    StyleExpr = ApprovalStyle;

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
            group(SeminarActions)
            {
                action(Openpage)
                {
                    Caption = 'Open Seminar List';
                    Promoted = true;
                    PromotedCategory = Process;

                    RunObject = page "Seminar List";

                }
                action(CloseSeminar)
                {
                    Caption = 'Close This Seminar';
                    Image = Close;
                    Promoted = true;
                    PromotedCategory = Process;
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
                    Promoted = true;
                    PromotedCategory = Process;
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
                action(ApproveSeminar)
                {
                    Caption = 'Approve';
                    Image = Approve;
                    Promoted = true;
                    PromotedCategory = Process;
                    Enabled = Rec."Approval Status" = Rec."Approval Status"::Pending;
                    trigger OnAction();
                    begin
                        if Rec."Approval Status" <> Rec."Approval Status"::Pending then
                            Error('You can only Approve a pending Seminar')
                        else
                            Rec."Approval Status" := Rec."Approval Status"::Approved;
                    end;

                }

                action(RejectSeminar)
                {
                    Caption = 'reject';
                    Image = Reject;
                    Enabled = Rec."Approval Status" = Rec."Approval Status"::Pending;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction();
                    begin
                        if Rec."Approval Status" <> Rec."Approval Status"::Pending then
                            Error('You Can Only Reject a Pending class')
                        else
                            Rec."Approval Status" := Rec."Approval Status"::Rejected;
                    end;
                }
            }

        }
    }

    trigger OnOpenPage()
    begin
        if Rec.Status = Rec.Status::Closed then
            Message('This Seminar is closed');
    end;

    var
        ApprovalStyle: Text;


    trigger OnAfterGetRecord()
    begin
        case Rec."Approval Status" of
            Rec."Approval Status"::Approved:
                ApprovalStyle := 'Positive';
            Rec."Approval Status"::Pending:
                ApprovalStyle := 'Ambiguous';
            Rec."Approval Status"::Rejected:
                ApprovalStyle := 'Attention';
            else
                ApprovalStyle := '';
        end;
    end;



}
