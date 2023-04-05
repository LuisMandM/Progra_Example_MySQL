package com.ikasgela;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class GestorBD {

    private static Connection conexion;

    public static Connection conectar() {

        try {

            if (conexion == null || conexion.isClosed()) {

                // Cadena de conexión
                String servidor = Configuracion.leer("DB_HOST");
                String puerto = Configuracion.leer("DB_PORT");
                String bd = Configuracion.leer("DB_DATABASE");
                String login = Configuracion.leer("DB_USERNAME");
                String password = Configuracion.leer("DB_PASSWORD");
                String opciones = "?verifyServerCertificate=false&useSSL=true&requireSSL=false";
                String url = "jdbc:mysql://" + servidor + ":" + puerto + "/" + bd + opciones;

                // Establecimiento de conexión
                conexion = DriverManager.getConnection(url, login, password);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conexion;
    }

    public static void desconectar() {

        if (conexion != null) {
            try {
                conexion.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}
