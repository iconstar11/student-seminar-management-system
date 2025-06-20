report 50101 "Seminar Report"
{
    Caption = 'Seminar Report';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = "Seminar layout";
    dataset
    {
        dataitem(Seminar; Seminar)
        {
            column(SeminarID; SeminarID)
            {
            }
            column(Title; Title)
            {
            }
            column(MaxSeats; "Max Seats")
            {
            }
            column(Location; Location)
            {
            }
            column(StudentsRegistered; "Students Registered")
            {
            }
            column(SeminarDate; "Seminar Date")
            {
            }
            column(Status; Status)
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(FilterGroup)
                {
                    field(Status; Seminar.Status)
                    {
                        ApplicationArea = All;
                    }
                    field("Date filter"; Seminar.SystemCreatedAt)
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
    rendering
    {
        layout("Seminar Layout")
        {
            Type = RDLC;
            LayoutFile = './Layouts/SeminarReport.rdlc';
        }
        layout("Seminar Layoutexcel")
        {
            Type = Excel;
            LayoutFile = './Layouts/SeminarReport.xlsx';
        }
        layout("Seminar LayoutWord")
        {
            Type = Word;
            LayoutFile = './Layouts/SeminarReport.docx';
        }

    }
    labels
    {
        ReportTitle = 'Seminar Registration summary';
    }

}
