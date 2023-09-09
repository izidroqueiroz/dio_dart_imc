class IMC {
  double _imc = 0.0;
  String _classificacao = '';

  void setImc(double imc) {
    _imc = imc;
  }

  double getImc() {
    return _imc;
  }

  String getClassificacao() {
    return _classificacao;
  }

  IMC(double peso, double altura) {
    _imc = peso / (altura * altura);
    _classificacao = '';
    if (_imc < 16) {
      _classificacao = 'Magreza grave';
    } else if (_imc < 17) {
      _classificacao = 'Magreza moderada';
    } else if (_imc < 18.5) {
      _classificacao = 'Magreza leve';
    } else if (_imc < 25) {
      _classificacao = 'Saudável';
    } else if (_imc < 30) {
      _classificacao = 'Sobrepeso';
    } else if (_imc < 35) {
      _classificacao = 'Obesidade Grau I';
    } else if (_imc < 40) {
      _classificacao = 'Obesidade Grau II (severa)';
    } else {
      _classificacao = 'Obesidade Grau III (mórbida)';
    }
  }
}
