void main(){
  
 final List<int> fibonacci= serieFibonacci(15);
print("Estos son los primeros 15 numeros de la sucesion de Fibonacci:");
print(fibonacci);
}

  List<int> serieFibonacci(int n){
  List<int> fibonacci = [];
  int  a = 0, b = 1;

  for (int i=0; i < n; i++) {
    fibonacci.add(a);
    int siguienteSerie = a + b;
    a = b;
    b = siguienteSerie;
  }
  return fibonacci;
}