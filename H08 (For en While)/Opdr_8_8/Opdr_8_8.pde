int n1 = 0;
int n2 = 1;
int n3 = 0;


println("Fibonacci:");
println(n1);
println(n2);

n3 = n1 + n2;

while (n3 <= 30) {

  println(n3);

  n1 = n2;
  n2 = n3;
  n3 = n1 + n2;
}
