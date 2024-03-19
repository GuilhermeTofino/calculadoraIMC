// ignore_for_file: unnecessary_brace_in_string_interps
class Pessoa {
  final String nome;
  final double altura; // em metros
  final double peso; // em quilogramas

  Pessoa(this.nome, this.altura, this.peso);
}

class IMC {
  static double calcularIMC(double altura, double peso) {
    return peso / (altura * altura);
  }

  static String classificarIMC(double imc) {
    if (imc < 18.5) {
      return 'Abaixo do peso';
    } else if (imc < 24.9) {
      return 'Peso normal';
    } else if (imc < 29.9) {
      return 'Sobrepeso';
    } else {
      return 'Obesidade';
    }
  }
}

class Utils {
  static double parseDouble(String value) {
    try {
      return double.parse(value);
    } catch (e) {
      throw Exception('Valor inválido. Insira um número válido.');
    }
  }

  static void main(List<String> args) {
    try {
      final nome = args[0];
      final altura = parseDouble(args[1]);
      final peso = parseDouble(args[2]);

      final imc = IMC.calcularIMC(altura, peso);
      final classificacao = IMC.classificarIMC(imc);

      print('$nome, seu IMC é ${imc.toStringAsFixed(2)} (${classificacao}).');
    } catch (e) {
      print('Erro: $e');
    }
  }
}

void main() {
  Utils.main(['Guilherme', '1.74', '60']); // Exemplo de uso
}
