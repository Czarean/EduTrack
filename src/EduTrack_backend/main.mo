//100% Functional Code

import HashMap "mo:base/HashMap";
import Text "mo:base/Text";
import Mytypes "edutracktypes";
import Result "mo:base/Result";

actor EduTrack{

//Creacion de Hashmaps:-------------------------------------------------------------------------------------------------------------------------

    let Estudiantes = HashMap.HashMap<Text, Mytypes.Student>(10, Text.equal, Text.hash);
    let Professors = HashMap.HashMap<Text, Mytypes.Professor>(10, Text.equal, Text.hash);

//Funciones para Agregar Nuevos Profesores y Estudiantes :----------------------------------------------------------------------------------------

    //Estudiantes:
    public func addStudent(id: Text, name: Text, dob: Text, parentsName: Text, tutorName: Text, contactNumber: Text, email: Text): async Text {
        let student: Mytypes.Student = {
            name = name;
            dob = dob;
            parentsName = parentsName;
            tutorName = tutorName;
            contactNumber = contactNumber;
            email = email;
            progressTracker = Mytypes.initYears();
        };         
        Estudiantes.put(id, student);
        return "El Estudiante "  # name # " ha sido Ingresado a la base escolar de datos exitosamente" 

    };

    //Professors:
    public func addProfessor(id: Text, name: Text, email: Text, contactNumber: Text, principalId: Text, startingDate: Text, registrationDate: Text): async Result.Result<Text, Text> {
      if (not Text.equal(id, "") and not Text.equal(name, "") and not Text.equal(email, "") and not Text.equal(contactNumber, "") and not Text.equal(principalId, "") and not Text.equal(startingDate, "") and not Text.equal(registrationDate, "")) {
        
        let professor: Mytypes.Professor = {
          name = name;
          email = email;
          contactNumber = contactNumber ;
          principalId = principalId;
          startingDate = startingDate;
          registrationDate = registrationDate;

        };
          Professors.put(id, professor);
          return #ok("El Professor "  # name # " ha sido Ingresado a la base de datos Escolar exitosamente!");       
      } else {
          return #err("Please, fill in all the blanks before clicking submit! Thanks.");
        };
    };

//Funciones para regresar la info de los Profesores y Estudiantes:---------------------------------------------------------------------------------

    public func getStudent(id: Text): async ?Mytypes.Student {
        return Estudiantes.get(id);
    };

    public func getProfessor(id: Text): async ?Mytypes.Professor {
        return Professors.get(id);
    };

//Funciones para eliminar Profesores y Estudiantes:------------------------------------------------------------------------------------------------

    public shared func deleteStudent(delete: Text) : async Text {
        let result = await getStudent(delete); // getProfessor(delete) is an async message, so "await" is used to pause the execution of deleteProfessor until the promise returned by getProfessor(delete) is resolved.
        switch (result) {
            case (null) {
                return "Estudiante no encontrado"
            };
            case (?estudiante) {
                Estudiantes.delete(delete);
                return ("El Estudiante "  # estudiante.name # " ha sido Eliminado de la base de datos escolar exitosamente")
            }
        }
  };


    public func deleteProfessor(delete: Text) : async Text {
        let result = await getProfessor(delete); // getProfessor(delete) is an async message, so "await" is used to pause the execution of deleteProfessor until the promise returned by getProfessor(delete) is resolved.
        switch (result) {
            case (null) {
                return "Professor not Found " 
            };
            case (?professor) {
                Professors.delete(delete);
                return ("El Professor "  # professor.name # " ha sido Eliminado de la base de datos escolar exitosamente")
                }
            }
    };

//Functions to Update (V) Values on already created (K) Students inside a hashmap--------------------------------------------------------------
    public func updateStudentEmail(studentId: Text, newEmail: Text) : async Text {
        switch (Estudiantes.get(studentId)) {
            case (?student) {
                let updatedStudent = { student with email = newEmail };
                Estudiantes.put(studentId, updatedStudent);
                return    studentId # " Email, has been successfully updated."
            };
            case (null) {
              return "The Student "  # studentId # " does not exist on the school database"
            };
        }
    };

    public func updateStudentDob(studentId: Text, newDob: Text) : async Text {
        switch (Estudiantes.get(studentId)) {
            case (?student) {
                let updatedStudent = { student with dob = newDob };
                Estudiantes.put(studentId, updatedStudent);
                return    studentId # " Date of Birth, has been successfully updated."
            };
            case (null) {
              return "The Student "  # studentId # " does not exist on the school database"
            };
        }
    };

    public func updateStudentParent(studentId: Text, newParent: Text) : async Text {
        switch (Estudiantes.get(studentId)) {
            case (?student) {
                let updatedStudent = { student with parentsName = newParent };
                Estudiantes.put(studentId, updatedStudent);
                return    studentId # " Parent name, has been successfully updated."
            };
            case (null) {
              return "The Student "  # studentId # " does not exist on the school database"
            };
        }
    };

    public func updateStudentTutor(studentId: Text, newTutor: Text) : async Text {
        switch (Estudiantes.get(studentId)) {
            case (?student) {
                let updatedStudent = { student with tutorName = newTutor };
                Estudiantes.put(studentId, updatedStudent);
                return    studentId # " Tutor name, has been successfully updated."
            };
            case (null) {
              return "The Student "  # studentId # " does not exist on the school database"
            };
        }
    };

    public func updateStudentContactN(studentId: Text, newContactN: Text) : async Text {
        switch (Estudiantes.get(studentId)) {
            case (?student) {
                let updatedStudent = { student with contactNumber = newContactN };
                Estudiantes.put(studentId, updatedStudent);
                return    studentId # " contact number, has been successfully updated."
            };
            case (null) {
              return "The Student "  # studentId # " does not exist on the school database"
            };
        }
    };

//Functions to Update (V) Values on already created (K) Professors inside a hashmap--------------------------------------------------------------
    public func updateProfessorEmail(professorId: Text, newEmail: Text) : async Text {
        switch (Professors.get(professorId)) {
            case (?professors) { //IDK why but has to be all lower caps for it to work
                let updatedProfessor = { professors with email = newEmail }; //We use the same case progessors lowecase here as well.
                Professors.put(professorId, updatedProfessor);
                return    professorId # " Email, has been successfully updated."
            };
            case (null) {
              return "The Professor "  # professorId # " does not exist on the school database"
            };
        }
    };

    public func updateProfessorContactN(professorId: Text, newContactN: Text) : async Text {
        switch (Professors.get(professorId)) {
            case (?professors) { //IDK why but has to be all lower caps for it to work
                let updatedProfessor = { professors with contactNumber = newContactN }; //We use the same case progessors lowecase here as well.
                Professors.put(professorId, updatedProfessor);
                return    professorId # " contact number, has been successfully updated."
            };
            case (null) {
              return "The Professor "  # professorId # " does not exist on the school database"
            };
        }
    };

    public func updateProfessorPid(professorId: Text, newPid: Text) : async Text {
        switch (Professors.get(professorId)) {
            case (?professors) { //IDK why but has to be all lower caps for it to work
                let updatedProfessor = { professors with principalId = newPid }; //We use the same case progessors lowecase here as well.
                Professors.put(professorId, updatedProfessor);
                return    professorId # " Principal Id, has been successfully updated."
            };
            case (null) {
              return "The Professor "  # professorId # " does not exist on the school database"
            };
        }
    };

    public func updateProfessorStartingDate(professorId: Text, newStartingDate: Text) : async Text {
        switch (Professors.get(professorId)) {
            case (?professors) { //IDK why but has to be all lower caps for it to work
                let updatedProfessor = { professors with startingDate = newStartingDate }; //We use the same case progessors lowecase here as well.
                Professors.put(professorId, updatedProfessor);
                return    professorId # " Starting Date, has been successfully updated."
            };
            case (null) {
              return "The Professor "  # professorId # " does not exist on the school database"
            };
        }
    };

    public func updateProfessorRegistrationDate(professorId: Text, newRegistrationDate: Text) : async Text {
        switch (Professors.get(professorId)) {
            case (?professors) { //IDK why but has to be all lower caps for it to work
                let updatedProfessor = { professors with registrationDate = newRegistrationDate }; //We use the same case progessors lowecase here as well.
                Professors.put(professorId, updatedProfessor);
                return    professorId # " Email, has been successfully updated."
            };
            case (null) {
              return "The Professor "  # professorId # " does not exist on the school database"
            };
        }
    };
}
