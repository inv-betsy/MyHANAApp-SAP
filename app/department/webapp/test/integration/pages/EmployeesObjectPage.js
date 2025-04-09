sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'department',
            componentId: 'EmployeesObjectPage',
            contextPath: '/Departments/employees'
        },
        CustomPageDefinitions
    );
});