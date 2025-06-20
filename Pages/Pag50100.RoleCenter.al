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
                // part(Part2; "Student List") 
                // {
                //     ApplicationArea = All;
                // }
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
        area(Embedding)
        {
            action(Student)
            {
                Caption = 'Student List';
                RunObject = page "Student List";
            }
            action(Seminar)
            {
                Caption = 'Seminar List';
                RunObject = page "Seminar List";
            }
            action(RegisteredList)
            {
                Caption = 'Students Registered';
                RunObject = page "Seminar Registration List";
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
