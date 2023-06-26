package com.practica.service;

import com.practica.domain.Producto;
import java.util.List;

public interface ProductoService {

//El sigueinte método retorna una lista con las productos 
//Que estan en la tabla producto, todas o sólo las activas
    public List<Producto> getProductos(boolean activos);

    //Áca siguen los metodos para hacer un CRUD de la tabla producto
    // Se obtiene un Producto, a partir del id de un producto
    public Producto getProducto(Producto producto);

    // Se inserta un nuevo producto si el id del producto esta vacío
    // Se actualiza un producto si el id del producto NO esta vacío
    public void save(Producto producto);

    // Se elimina el producto que tiene el id pasado por parámetro
    public void delete(Producto producto);
}
