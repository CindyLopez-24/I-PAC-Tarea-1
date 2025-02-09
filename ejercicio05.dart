void main() {
  final cuenta = CuentaBancaria('Cindy Lopez', 3500.0);

  print('Bienvenido ${cuenta.titular}');
  print('\n');
  cuenta.consultarSaldo();
  cuenta.depositar(500.0);
  cuenta.retirar(300.0);
  cuenta.consultarSaldo();
}
class CuentaBancaria {
  final String titular;
   double saldo;

  CuentaBancaria(this.titular, this.saldo);

  void depositar(double cantidad) {
    if (cantidad > 0) {
      saldo += cantidad;
      print('Deposito realizado \$${cantidad}');
    } else {
      print('La cantidad ingresada no es correcta.');
    }
  }

   void retirar(double cantidad) {
    if (cantidad > 0 && saldo >= cantidad) {
      saldo -= cantidad;
      print('Retiro exitoso \$${cantidad}');
    } else if (cantidad > 0 && saldo < cantidad) {
      print('Fondos insuficientes.');
    } else {
      print('La cantidad ingresada no es correcta.');
    }
  }

  void consultarSaldo() {
    print('Saldo actual: \$${saldo}');
  }

}