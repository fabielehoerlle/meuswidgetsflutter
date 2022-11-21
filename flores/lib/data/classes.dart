class ProductData {
  final String image;
  final String name;
  final double price;
  final bool enabled;

  ProductData({
    required this.image,
    required this.name,
    required this.price,
    this.enabled = true,
  }) {}

  String formatPrice() {
    int reais = this.price.toInt();
    int centavos = ((this.price - reais) * 100).toInt();
    String formatado = "R\$ $reais,${centavos.toString().padRight(2, "0")}";
    return formatado;
  }
}
