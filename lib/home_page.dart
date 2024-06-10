import 'package:flutter/material.dart';
import 'detail_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> _products = [
    {
      'image': 'blouse.jpg',
      'title': 'Blouse',
      'price': 70000,
    },
    {
      'image': 'skirt.jpeg',
      'title': 'Skirt',
      'price': 65000,
    },
    {
      'image': 'hoodie.jpeg',
      'title': 'Hoodie',
      'price': 85000,
    },
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextField(
          decoration: InputDecoration(
            hintText: 'Find T-shirt',
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DetailProfile()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildWalletAndCoinsSection(),
            _buildCategoriesSection(),
            _buildRecommendedSection(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildWalletAndCoinsSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                // Navigate to the wallet page
              },
              child: _buildCard(
                color: const Color.fromARGB(255, 237, 124, 96),
                leading: const Icon(
                  Icons.wallet,
                  color: Colors.white,
                ),
                title: 'My Wallet',
                subtitle: '300.000',
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: GestureDetector(
              onTap: () {
                // Navigate to the coins page
              },
              child: _buildCard(
                color: const Color.fromARGB(255, 237, 124, 96),
                leading: const Icon(
                  Icons.money,
                  color: Colors.white,
                ),
                title: 'My Coins',
                subtitle: '50',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Categories',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the shop page
                  },
                  child: _buildCategoryItem(
                    icon: Icons.shopping_bag,
                    label: 'Shop',
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the sell page
                  },
                  child: _buildCategoryItem(
                    icon: Icons.sell,
                    label: 'Sell',
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the order details page
                  },
                  child: _buildCategoryItem(
                    icon: Icons.assignment,
                    label: 'Order Details',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRecommendedSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Recommended',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        SizedBox(
          height: 300,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
            ),
            itemCount: _products.length,
            itemBuilder: (context, index) {
              final product = _products[index];
              return _buildProductCard(product);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCard({
    required Color color,
    required Widget leading,
    required String title,
    required String subtitle,
  }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      color: color,
      child: ListTile(
        leading: leading,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryItem({
    required IconData icon,
    required String label,
  }) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 237, 124, 96),
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(12.0),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildProductCard(Map<String, dynamic> product) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
              child: Image.asset('assets/images/${product['image']}'),
            ),
            const SizedBox(height: 8.0),
            Text(
              product['title'],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              'Rp${product['price'].toStringAsFixed(0)}',
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

	Widget _buildBottomNavigationBar() {
	  return BottomNavigationBar(
		currentIndex: _currentIndex,
		onTap: (index) {
		  setState(() {
			_currentIndex = index;
		  });
		},
		items: [
		  BottomNavigationBarItem(
			icon: Icon(_currentIndex == 0 ? Icons.home_filled : Icons.home_outlined),
			backgroundColor: const Color.fromARGB(255, 237, 124, 96),
			label: 'Home',
		  ),
		  BottomNavigationBarItem(
			backgroundColor: const Color.fromARGB(255, 237, 124, 96),
			icon: Icon(_currentIndex == 1 ? Icons.rss_feed_rounded : Icons.rss_feed_outlined),
			label: 'Feed',
		  ),
		  BottomNavigationBarItem(
			backgroundColor: const Color.fromARGB(255, 237, 124, 96),
			icon: Icon(_currentIndex == 2 ? Icons.shopping_cart_rounded : Icons.shopping_cart_outlined),
			label: 'Cart',
		  ),
		  BottomNavigationBarItem(
			backgroundColor: const Color.fromARGB(255, 237, 124, 96),
			icon: Icon(_currentIndex == 3 ? Icons.inbox_rounded : Icons.inbox_outlined),
			label: 'Inbox',
		  ),
		],
	  );
	}
}