sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'department/test/integration/FirstJourney',
		'department/test/integration/pages/DepartmentsList',
		'department/test/integration/pages/DepartmentsObjectPage',
		'department/test/integration/pages/EmployeesObjectPage'
    ],
    function(JourneyRunner, opaJourney, DepartmentsList, DepartmentsObjectPage, EmployeesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('department') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheDepartmentsList: DepartmentsList,
					onTheDepartmentsObjectPage: DepartmentsObjectPage,
					onTheEmployeesObjectPage: EmployeesObjectPage
                }
            },
            opaJourney.run
        );
    }
);