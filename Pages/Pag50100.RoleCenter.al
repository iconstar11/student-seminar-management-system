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
}

profile SeminarCordinator
{
    ProfileDescription = 'Cordinator Profile';
    RoleCenter = RoleCenter;
    Caption = 'Seminar Cordinator Profile';
}
