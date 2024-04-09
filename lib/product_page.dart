import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  // Sample data for the products
  final List<Map<String, dynamic>> _products = [
    {
      'image': 'blouse.jpg',
      'title': 'Blouse',
      'price': 70.000,
    },
    {
      'image': 'hoodie.jpeg',
      'title': 'Hoodie',
      'price': 85.000,
    },
    {
      'image': 'skirt.jpeg',
      'title': 'Skirt',
      'price': 65.000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Find T-shirt',
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    child: ListTile(
                      textColor: Colors.white,
                      tileColor: const Color.fromARGB(255, 237, 124, 96),
                      leading: Icon(Icons.wallet),
                      title: Text('My Wallet'),
                      subtitle: Text('300.000'),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Card(
                    child: ListTile(
                      textColor: Colors.white,
                      tileColor: const Color.fromARGB(255, 237, 124, 96),
                      leading: Icon(Icons.money),
                      title: Text('My Coins'),
                      subtitle: Text('50'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
              ),
              itemCount: _products.length,
              itemBuilder: (context, index) {
                final product = _products[index];
                return Card(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Image.asset('assets/images/${product['image']}'),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          product['title'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          '\Rp${product['price'].toStringAsFixed(3)}',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
        ],
      ),
    );
  }
}