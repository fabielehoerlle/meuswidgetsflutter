int _currentId = 0;

class ProductData {
  late int id;
  final String image;
  final String name;
  final double price;
  final bool enabled;

  ProductData({
    required this.image,
    required this.name,
    required this.price,
    this.enabled = true,
    this.id = 0,
  }) {
    id = _generateId();
  }

  int _generateId() {
    _currentId = _currentId + 1;
    return _currentId;
  }

  String formatPrice() {
    int reais = this.price.toInt();
    int centavos = ((this.price - reais) * 100).toInt();
    String formatado = "R\$ $reais,${centavos.toString().padRight(2, "0")}";
    if (this.enabled == false) {
      return "Produto Esgotado";
    }
    return formatado;
  }
}
