package com.practica.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import lombok.Data;

@Data
@Entity
@Table(name = "arbol")
public class Categoria implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_arbol")
    private Long idArbol;
    private String nombreComun;
    private String rutaImagen;
    private String tipoFlor;
    private String durezaMadera;
    private boolean activo;

    public Categoria() {
    }

    public Categoria(String nombreComun, boolean activo) {
        this.nombreComun = nombreComun;
        this.activo = activo;
    }

}
