void main() {

  final List<String> colores = ['verde','rojo','azul','amarillo','rosado'];
  final List<String> listaUnica = getElementos(colores);
  print("Lista original: $colores");
  print("Lista con elementos únicos: $listaUnica");
}

List<String> getElementos(List<String> colores) {
  
  Set<String> conjunto = Set<String>.from(colores);
  return conjunto.toList();
} 