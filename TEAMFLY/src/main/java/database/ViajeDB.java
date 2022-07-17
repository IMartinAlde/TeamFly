/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;

import config.DBConn;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Pasajero;

/**
 *
 * @author Martín
 */
public class ViajeDB {
    private Connection connection;
    
    public ViajeDB(){
        DBConn conn = new DBConn();
        connection = conn.getConnection("viajes", "root", "1234");
    }
    
    public boolean verificarVuelo(String codVueloInput, int cantPasajesInput) throws SQLException {
        PreparedStatement ps;
        ResultSet rs;

        ps = connection.prepareStatement("SELECT cantPasajeros FROM vuelos WHERE codVuelo = ?;");

        ps.setString(1, codVueloInput);
        rs = ps.executeQuery();
        
        boolean retorno = false;
        
        while (rs.next()){
            int pasajesDisponibles = rs.getInt("cantPasajeros");
            if (cantPasajesInput <= pasajesDisponibles){
                retorno = true;
            }  
        }
        
        return retorno;
    }
    
    public float obtenerPrecio(String codVueloInput) throws SQLException {
        PreparedStatement ps;
        ResultSet rs;

        ps = connection.prepareStatement("SELECT precio FROM vuelos WHERE codVuelo = ?;");

        ps.setString(1, codVueloInput);
        rs = ps.executeQuery(); 
        
        float p = 0;
        while (rs.next()){
            p = rs.getFloat("precio");
        }
        
        return p;
    }
    
    public String obtenerOrigen(String codVueloInput) throws SQLException {
        PreparedStatement ps;
        ResultSet rs;

        ps = connection.prepareStatement("SELECT origen FROM vuelos WHERE codVuelo = ?;");

        ps.setString(1, codVueloInput);
        rs = ps.executeQuery(); 
        
        String o = "";
        while (rs.next()){
            o = rs.getString("origen");
        }
        
        return o;
    }
    
    public String obtenerDestino(String codVueloInput) throws SQLException {
        PreparedStatement ps;
        ResultSet rs;

        ps = connection.prepareStatement("SELECT destino FROM vuelos WHERE codVuelo = ?;");

        ps.setString(1, codVueloInput);
        rs = ps.executeQuery(); 
        
        String d = "";
        while (rs.next()){
            d = rs.getString("destino");
        }
        return d;
    }
    
    public int cargarCompra(String nombreInput, String apellidoInput, String dniInput, String emailInput, String celInput) throws SQLException {
        PreparedStatement ps;
        int rs;
        
        String pQuery = "INSERT INTO pasajeros (nombre, apellido, dni, email, nroCelular)"
                + "VALUES(?, ?, ?, ?, ?);";
        
        ps = connection.prepareStatement(pQuery);
        
        ps.setString(1, nombreInput);
        ps.setString(2, apellidoInput);
        ps.setString(3, dniInput);
        ps.setString(4, emailInput);
        ps.setString(5, celInput);
         
        rs = ps.executeUpdate();
        return rs;
    }
    
    
    public Pasajero mostrarCompra(String dniInput) throws SQLException {
        PreparedStatement ps;
        ResultSet rs;
        Pasajero p = null;
        
        ps = connection.prepareStatement("SELECT * FROM pasajeros WHERE dni = ?;");
        ps.setString(1, dniInput);
        
        rs = ps.executeQuery();
        if (rs.next()){
            String nombre = rs.getString("nombre");
            String apellido = rs.getString("apellido"); 
            String dni = rs.getString("dni");
            String email = rs.getString("email");
            String cel = rs.getString("nroCelular");
            
            p = new Pasajero(nombre, apellido, dni, email, cel);
        }        
        
        return p;
    }
}
