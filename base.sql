 //Stephany Grueso Molina
 //Walther Hernando Estacio Ordoñez

CREATE TABLE ProgramaAcademico (
    idPrograma INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    sigla VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Asignatura (
    idAsignatura INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    numeroCreditos INT NOT NULL,
    horasPresenciales INT NOT NULL,
    codigoAsignatura VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE ProgramaAsignatura (
    idPrograma INT,
    idAsignatura INT,
    PRIMARY KEY (idPrograma, idAsignatura),
    FOREIGN KEY (idPrograma) REFERENCES ProgramaAcademico(idPrograma),
    FOREIGN KEY (idAsignatura) REFERENCES Asignatura(idAsignatura)
);

CREATE TABLE Alumno (
    idAlumno INT AUTO_INCREMENT PRIMARY KEY,
    nombre1 VARCHAR(255) NOT NULL,
    nombre2 VARCHAR(255) NOT NULL,
    apellido1 VARCHAR(255) NOT NULL,
    apellido2 VARCHAR(255) NOT NULL
);

CREATE TABLE RegistroAlumnoPrograma (
    idAlumno INT,
    idPrograma INT,
    fechaRegistro DATE NOT NULL,
    PRIMARY KEY (idAlumno, idPrograma),
    FOREIGN KEY (idAlumno) REFERENCES Alumno(idAlumno),
    FOREIGN KEY (idPrograma) REFERENCES ProgramaAcademico(idPrograma)
);