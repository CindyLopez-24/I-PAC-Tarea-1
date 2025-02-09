class Libro {
  final String titulo;
  final String autor;
  final int anioPublicacion;

  Libro (this.titulo, this.autor, this.anioPublicacion);

   String toString() {
    return '$titulo por $autor, publicado en $anioPublicacion';
  }
}
