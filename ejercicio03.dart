class Empleado {
  final String nombre;
  final String puesto;
  final double salario;

  Empleado(this.nombre, this.puesto, this.salario);
  
}

void main () {

  List<Empleado> empleados = [
  Empleado ('Cindy', 'Auxiliar administrativo', 16500.00),
  Empleado ('Erika', 'Secretaria', 18000.00),
  Empleado ('Manuel', 'Contador', 17600.00),
];

double salarios = calcularSalarios(empleados);
double promedio = calcularPromedio(empleados);

imprimir(empleados);
print('\nTotal de salarios: ${salarios}');
print('Promedio de salarios: ${promedio}');
}

void imprimir(List<Empleado> empleados) {
  print('Lista de empleados:');
  for (Empleado empleado in empleados) {
    print('Nombre: ${empleado.nombre}, Puesto: ${empleado.puesto}, Salario: \L${empleado.salario}');
  }
}

  double calcularSalarios(List<Empleado> empleados) {
  double suma= 0;
  for (Empleado empleado in empleados) {
    suma += empleado.salario;
  }
    return suma;
}

  double calcularPromedio(List<Empleado> empleados) {
    double suma = calcularSalarios(empleados);
      return suma / empleados.length;
  }