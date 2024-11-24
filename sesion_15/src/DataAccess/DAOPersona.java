package DataAccess;

import entidades.Persona;
import java.sql.*;
import java.util.List;

public class DAOPersona {

    private Connection connection;
    private Statement statement;

    public DAOPersona(Connection con) {
        try {
            connection = con;
            statement = con.createStatement();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    public List<Persona> getPersonas() {
        try {
            String sql = "select * from persona";
            ResultSet resultset = statement.executeQuery(sql);
            return PersonaExtras.fromResultSet(resultset);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }

    public boolean actualizarDatos(Persona per) {
        String queryUpd = "UPDATE persona "
                + "SET nombre = '" + per.getNombre() + "' , "
                + "apellido = '" + per.getApellido() + "' , "
                + "dni = '" + per.getDni() + "' , "
                + "edad = '" + per.getEdad() + "' , "
                + "correo = '" + per.getCorreo() + "'"
                + " WHERE idpersona = " + per.getIdPersona();
        try {

            int executeUpdate = statement.executeUpdate(queryUpd);
            if (executeUpdate > 0) {
                System.out.println("Se actualizo la persona");
                return true;
            } else {
                System.out.println("No se pudo actualizar persona");
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return false;
    }

    public boolean insertarPersona(Persona per) {
        String queryIns = "INSERT INTO persona (nombre, apellido, dni, edad, correo) VALUES ("
                + "'" + per.getNombre() + "', "
                + "'" + per.getApellido() + "', "
                + "'" + per.getDni() + "', "
                + per.getEdad() + ", "
                + "'" + per.getCorreo() + "')";
        try {
            int executeIns = statement.executeUpdate(queryIns);
            if (executeIns > 0) {
                System.out.println("Se inserto el nuevo registro.");
                return true;
            } else {
                System.out.println("No se pudo insertar.");
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return false;
    }

    public boolean eliminarPersona(Persona per) {
        String queryDel = "DELETE FROM persona"
                + "  WHERE idpersona = " + per.getIdPersona();
        try {
            int rowsDeleted = statement.executeUpdate(queryDel);
            if (rowsDeleted > 0) {
                System.out.println("Se elimino el nuevo registro");
                return true;
            } else {
                System.out.println("No se pudo eliminar");
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return false;
    }
}
