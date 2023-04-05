package com.ikasgela;

import java.util.List;

public class Main {

    public static void main(String[] args) {

        System.out.println("Película con ID 2:");
        System.out.println(PeliculaBD.pelicula(2));
        System.out.println();

        System.out.println("Añadiendo una película nueva...");
        Pelicula nueva = new Pelicula("Muy mala", 1.0, 2020);
        System.out.println(PeliculaBD.guardar(nueva) ? "OK" : "ERROR");
        System.out.println();

        System.out.println("Todas las películas de la BD:");
        List<Pelicula> videoclub = PeliculaBD.peliculas();
        for (Pelicula pelicula : videoclub) {
            System.out.println(pelicula);
        }
        System.out.println("Total: " + videoclub.size());
    }
}
