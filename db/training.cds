namespace com.training;


using {
    cuid
} from '@sap/cds/common';


entity Course : cuid {
    Student : Association to many StudentCourse
                  on Student.Course = $self;
};

entity Student : cuid {
    Course : Association to many StudentCourse
                 on Course.Student = $self;
};

entity StudentCourse : cuid {
    Student : Association to Student;
    Course  : Association to Course;
};


// Tipo Array
// type EmailsAddresses_01 : array of {
//     kind  : String;
//     email : String;
// };

// // Tipo Estructurado
// type EmailsAddresses_02 {
//     kind  : String;
//     email : String;
// };

// // Entidad
// entity Emails {
//     email_01 : EmailsAddresses_01;
//     email_02 : many EmailsAddresses_02;
//     email_03 : many {
//         kind  : String;
//         email : String;
//     }
// };


//Enumeración
// type Gender             : String enum {
//     male;
//     female;
// };


// Entidad
// entity Order {
//     clientGender : Gender;
//     status       : Integer enum {
//         submitted = 1;
//         fulfiller = 2;
//         shipped = 3;
//         cancel = -1;
//     };
//     Priority     : String @assert.range enum {
//         high;
//         medium;
//         low;
//     };
// };

// entity Car {
//     key     ID         : UUID;
//             name       : String;
//     virtual discount_1 : Decimal;
//     virtual discount_2 : Decimal;
// };


/* Vistas con parámetros */
// entity ParamProducts(pName : String)     as
//     select from Products {
//         Name,
//         Price,
//         Quantity
//     }
//     where
//         Name = :pName;


// entity ProjParamProducts(pName : String) as projection on Products
//                                             where
//                                                 Name = :pName;
