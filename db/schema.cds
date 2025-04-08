namespace my.company;

entity Department {
    key ID        : UUID;
        name      : String(100);
        employees : Composition of many Employee
                        on employees.department = $self;
}

entity Employee {
    key ID            : UUID;
        firstName     : String(50);
        lastName      : String(50);
        email         : String(100);
        phone         : String(20);
        dateOfJoining : Date;
        department    : Association to Department;
}
