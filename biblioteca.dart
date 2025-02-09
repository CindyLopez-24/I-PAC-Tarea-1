import 'ejercicio04.dart';

void main () {
  final biblioteca = Biblioteca();
  
  final l1 = Libro(
  'El Cuervo', 
  'Edgar Allan Poe', 
  1845);

  final l2 = Libro(
    'Cronicas de una muerte anunciada',
     'Gabriel Garcia Marquez',
      1981);

  final l3 = Libro(
    'Un bistec', 
    'Jack London', 
     1909);

  biblioteca.agregarLibro(l1);
  biblioteca.agregarLibro(l2);
  biblioteca.agregarLibro(l3);

  print('Libros por Edgar Allan Poe');
    for (final libro in biblioteca.buscarAutor('Gabriel Garcia Marquez')) {
    print(libro);
  }

  print('\nLibros ordenados por año de publicacion:');
  for (final libro in biblioteca.ordenarAnio()) {
    print(libro);
  }

}

class Biblioteca {
  List<Libro> libros = [];

  void agregarLibro(Libro libro) {
    libros.add(libro);
  }

  void eliminarLibro(Libro libro) {
    libros.remove(libro);
  }

  List<Libro> buscarAutor(String autor) {
    return libros.where((libro) => libro.autor == autor).toList();

  }
  List<Libro> ordenarAnio() {
    libros.sort((a,b) => a.anioPublicacion.compareTo(b.anioPublicacion));
    return libros;
  }

}