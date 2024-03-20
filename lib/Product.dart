class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

// Dummy function to fetch product data based on productId
Product getProductData(int productId) {
  // Replace this with your actual implementation to fetch product data from somewhere (e.g., database)
  return Product(
    id: productId,
    name: 'Product Name',
    description: 'Product Description',
    price: 10.99,
    imageUrl: 'https://th.bing.com/th/id/OIP.Q65_bDLVh5JfAzDXp81SmgHaE8?w=234&h=180&c=7&r=0&o=5&dpr=2&pid=1.7',
  );
}
