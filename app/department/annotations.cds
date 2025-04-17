using OrganizationService as service from '../../srv/service';
annotate service.Departments with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>DepartmentName}',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : managerFullName,
                Label : '{i18n>ManagerName}',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '{i18n>GeneralInformation}',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>Employee}',
            ID : 'employee',
            Target : 'employees/@UI.LineItem#employee',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Department1}',
            Value : name,
        },
    ],
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : name,
    },
    UI.HeaderInfo : {
        TypeName : '{i18n>EmployeeList}',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : name,
        },
    },
);

annotate service.Employees with @(
    UI.LineItem #employee : [
        {
            $Type : 'UI.DataField',
            Value : firstName,
            Label : '{i18n>FirstName}',
        },
        {
            $Type : 'UI.DataField',
            Value : lastName,
            Label : '{i18n>LastName}',
        },
        {
            $Type : 'UI.DataField',
            Value : email,
            Label : '{i18n>Email}',
        },
        {
            $Type : 'UI.DataField',
            Value : phone,
            Label : '{i18n>Phone}',
        },
        {
            $Type : 'UI.DataField',
            Value : department.name,
            Label : '{i18n>DepartmentName}',
        },
        {
            $Type : 'UI.DataField',
            Value : dateOfJoining,
            Label : '{i18n>DateOfJoining}',
        },
        {
            $Type : 'UI.DataField',
            Value : isActive,
            Label : '{i18n>Active}',
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>EmployeeDetails}',
            ID : 'EMPLOYEEDETAILS',
            Target : '@UI.FieldGroup#EMPLOYEEDETAILS',
        },
    ],
    UI.FieldGroup #EMPLOYEEDETAILS : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : firstName,
                Label : '{i18n>FirstName}',
            },
            {
                $Type : 'UI.DataField',
                Value : lastName,
                Label : '{i18n>LastName}',
            },
            {
                $Type : 'UI.DataField',
                Value : email,
                Label : '{i18n>Email}',
            },
            {
                $Type : 'UI.DataField',
                Value : phone,
                Label : '{i18n>Phone}',
            },
            {
                $Type : 'UI.DataField',
                Value : dateOfJoining,
                Label : '{i18n>DateOfJoining}',
            },
            {
                $Type : 'UI.DataField',
                Value : department.name,
                Label : '{i18n>DepartmentName}',
            },
            {
                $Type : 'UI.DataField',
                Value : isActive,
                Label : '{i18n>Active}',
            },
        ],
    },
    UI.HeaderInfo : {
        TypeName : '{i18n>EmployeeDetails1}',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : firstName,
        },
    },
);

annotate service.Departments with {
    name @Common.FieldControl : #ReadOnly
};

