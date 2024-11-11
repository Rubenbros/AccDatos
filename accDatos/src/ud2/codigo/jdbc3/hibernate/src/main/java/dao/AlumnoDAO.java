package dao;

import entity.Alumno;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AlumnoDAO {
    private Connection connection;

    public AlumnoDAO(Connection connection) {
        this.connection = connection;
    }

    public int insertarAlumno(Alumno alumno) throws SQLException {
        String sql = "INSERT INTO Alumnos (nombre, apellido, fecha_nacimiento) VALUES (?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            statement.setString(1, alumno.getNombre());
            statement.setString(2, alumno.getApellido());
            statement.setDate(3, Date.valueOf(alumno.getFechaNacimiento()));
            statement.executeUpdate();

            try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    return generatedKeys.getInt(1);
                }
                throw new SQLException("Error al insertar el alumno: No se pudo obtener el ID.");
            }
        }
    }

    public List<Alumno> listarAlumnos() throws SQLException {
        List<Alumno> alumnos = new ArrayList<>();
        String sql = "SELECT * FROM Alumnos";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                Alumno alumno = new Alumno(
                        resultSet.getInt("id"),
                        resultSet.getString("nombre"),
                        resultSet.getString("apellido"),
                        resultSet.getDate("fecha_nacimiento").toLocalDate()
                );
                alumnos.add(alumno);
            }
        }
        return alumnos;
    }

    public void actualizarAlumno(Alumno alumno) throws SQLException {
        String sql = "UPDATE Alumnos SET nombre = ?, apellido = ?, fecha_nacimiento = ? WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, alumno.getNombre());
            statement.setString(2, alumno.getApellido());
            statement.setDate(3, Date.valueOf(alumno.getFechaNacimiento()));
            statement.setInt(4, alumno.getId());
            statement.executeUpdate();
        }
    }

    public void eliminarAlumno(int id) throws SQLException {
        String sql = "DELETE FROM Alumnos WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            statement.executeUpdate();
        }
    }
}
