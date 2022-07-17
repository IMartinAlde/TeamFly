/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Martín
 */
public class Vuelo {
    private String codVuelo;
    private String origen;
    private String destino;
    private int pasajeros;

    public Vuelo(String codVuelo, String origen, String destino, int pasajeros) {
        this.codVuelo = codVuelo;
        this.origen = origen;
        this.destino = destino;
        this.pasajeros = pasajeros;
    }

    public String getCodVuelo() {
        return codVuelo;
    }

    public void setCodVuelo(String codVuelo) {
        this.codVuelo = codVuelo;
    }

    public String getOrigen() {
        return origen;
    }

    public void setOrigen(String origen) {
        this.origen = origen;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public int getPssajeros() {
        return pasajeros;
    }

    public void setPssajeros(int pssajeros) {
        this.pasajeros = pssajeros;
    }

    
}
