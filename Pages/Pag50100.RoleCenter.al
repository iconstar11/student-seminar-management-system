page 50100 RoleCenter
{
    ApplicationArea = All;
    Caption = 'RoleCenter';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            group(Group1)
            {
                part(Part1; "Approvals Activities")
                {
                    ApplicationArea = All;
                }
            }
        }

    }

    actions
    {
        area(sections)
        {
            group(action1)
            {
                Caption = 'Student Admin';

                action(Students)
                {
                    Caption = 'Show the Student List';
                    RunObject = page "Student List";
                }
            }

        }
    }

}

profile SeminarCordinator
{
    ProfileDescription = 'Cordinator Profile';
    RoleCenter = RoleCenter;
    Caption = 'Seminar Cordinator Profile';
}
