using {my.company as my} from '../db/schema';

service OrganizationService {
    @odata.draft.enabled
    entity Departments as projection on my.Department;
    entity Employees   as projection on my.Employee;
}
