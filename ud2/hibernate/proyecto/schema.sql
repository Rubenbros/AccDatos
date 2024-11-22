-- Crear base de datos
CREATE DATABASE IF NOT EXISTS BibliotecaDigital;
USE BibliotecaDigital;

-- Tabla de Usuarios
CREATE TABLE Usuarios (
                          id BIGINT AUTO_INCREMENT PRIMARY KEY,
                          nombreCompleto VARCHAR(150) NOT NULL,
                          email VARCHAR(255) UNIQUE NOT NULL,
                          estado ENUM('ACTIVO', 'SUSPENDIDO', 'INACTIVO') NOT NULL DEFAULT 'ACTIVO',
                          numeroDeMultas INT DEFAULT 0
);

-- Tabla de Libros
CREATE TABLE Libros (
                        id BIGINT AUTO_INCREMENT PRIMARY KEY,
                        titulo VARCHAR(200) NOT NULL,
                        isbn VARCHAR(20) UNIQUE NOT NULL,
                        anioPublicacion INT NOT NULL,
                        categoria VARCHAR(100) NOT NULL,
                        copiasDisponibles INT NOT NULL
);

-- Tabla de Autores
CREATE TABLE Autores (
                         id BIGINT AUTO_INCREMENT PRIMARY KEY,
                         nombreCompleto VARCHAR(150) NOT NULL,
                         nacionalidad VARCHAR(100) NOT NULL
);

-- Tabla intermedia Autores_Libros para relación muchos a muchos
CREATE TABLE Autores_Libros (
                                autor_id BIGINT NOT NULL,
                                libro_id BIGINT NOT NULL,
                                PRIMARY KEY (autor_id, libro_id),
                                FOREIGN KEY (autor_id) REFERENCES Autores(id) ON DELETE CASCADE,
                                FOREIGN KEY (libro_id) REFERENCES Libros(id) ON DELETE CASCADE
);

-- Create Table Prestamos
CREATE TABLE Prestamos (
                           id BIGINT PRIMARY KEY,
                           usuario_id BIGINT,
                           libro_id BIGINT,
                           fechaPrestamo DATE NOT NULL,
                           fechaDevolucion DATE,
                           fechaDevolucionReal DATE,
                           estado ENUM('EN CURSO', 'FINALIZADO', 'PENDIENTE_MULTA'),
                           FOREIGN KEY (usuario_id) REFERENCES Usuarios(id),
                           FOREIGN KEY (libro_id) REFERENCES Libros(id)
);