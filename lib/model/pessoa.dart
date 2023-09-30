class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  Pessoa(this._nome, this._peso, this._altura);

  String getNome() => _nome;
  setNome(String nome) => _nome = nome;

  getPeso() => _peso;
  setPeso(peso) => _peso = peso;

  getAltura() => _altura;
  setAltura(altura) => _altura = altura;

  @override
  String toString() {
    return "$_nome possui o peso de ${_peso}kg e a altura de ${_altura}m";
  }
}
