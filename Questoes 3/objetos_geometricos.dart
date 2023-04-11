void main(){

}

//Questão 1
class Circulo {
    double raio;
    double pi;
    Circulo(this.raio, {this.pi = 3.1415});
    
    
    double calcularArea() {
        return this.pi*(this.raio*this.raio);
    }
    
    double calcularPerimetro() {
        return 2*this.pi*this.raio;
    }
}

//Questão 2
class Retangulo {
  double base;
  double altura;

  Retangulo(this.base, this.altura);
  double calcularArea() {
        return this.base*this.altura;
    }
    
    double calcularPerimetro() {
        return 2*this.base+2*this.altura;
    }
}
