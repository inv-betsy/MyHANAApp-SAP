using { my.company as my } from '../db/schema';

service OrganizationService {
  @odata.draft.enabled
  entity Departments as projection on my.Department {
    ID,
    name,
    manager,
    employees,
    virtual null as managerFullName : String(100)
  }

  entity Employees as projection on my.Employee;
}
