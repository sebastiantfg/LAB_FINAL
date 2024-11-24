package DataAccess;

import java.sql.*;
import entidades.Persona;
import java.util.ArrayList;
import java.util.List;

public class PersonaExtras extends Persona {

    public String getTextoLista() {
        return "ID:" + getIdPersona() + " | " + getNombre();
    }

    public PersonaExtras(ResultSet rs) {
        try {
            setIdPersona(rs.getInt(1));
            setNombre(rs.getString(2));
            setApellido(rs.getString(3));
            setDni(rs.getString(4));
            setEdad(rs.getInt(5));
            setCorreo(rs.getString(6));
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    public static List<Persona> fromResultSet(ResultSet rs) {
        List<Persona> personas = new ArrayList<>();
        try {
            while (rs.next()) {
                personas.add(new PersonaExtras(rs));
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return personas;
    }
}
