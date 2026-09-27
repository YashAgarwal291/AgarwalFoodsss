import 'package:flutter/material.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top orange information bar
            const TopBar(),

            // Main navigation
            const NavigationBarWidget(),

            // Category section
            const CategorySection(),

            // NEW: Hero banner
            const HeroSection(),

            // NEW: Premium chutneys
            const PremiumChutneySection(),

            // NEW: About Agarwal Foods
            const AboutSection(),

            // NEW: Get in Touch
            const GetInTouchSection(),

            //   // NEW: Footer
            const FooterSection(),

            //const ContactItem(),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// TOP BAR
// ============================================================

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      color: const Color(0xFFFF4B00),
      padding: const EdgeInsets.symmetric(horizontal: 10),

      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1540),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // LEFT SIDE
              Row(
                children: [
                  const Icon(
                    Icons.phone_outlined,
                    color: Colors.white,
                    size: 20,
                  ),

                  const SizedBox(width: 8),

                  const Text(
                    '+91 98765 43210',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),

                  const SizedBox(width: 28),

                  const Icon(
                    Icons.email_outlined,
                    color: Colors.white,
                    size: 20,
                  ),

                  const SizedBox(width: 8),

                  const Text(
                    'info@agarwalfoods.com',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),

              // RIGHT SIDE
              Row(
                children: [
                  const Icon(
                    Icons.local_shipping_outlined,
                    color: Colors.white,
                    size: 21,
                  ),

                  const SizedBox(width: 9),

                  const Text(
                    'Get Premium Chutney at your doorstep',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// NAVIGATION BAR
// ============================================================

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,

      decoration: const BoxDecoration(
        color: Colors.white,

        border: Border(bottom: BorderSide(color: Color(0xFFE5E5E5), width: 1)),
      ),

      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1540),

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),

            child: Row(
              children: [
                // =================================================
                // LOGO
                // =================================================
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 61,
                        height: 61,

                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFFF4B00),
                        ),

                        child: const Center(
                          child: Text(
                            'A',

                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 15),

                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            'Agarwal Foods',

                            style: TextStyle(
                              color: Color(0xFF9F2F0C),
                              fontSize: 29,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          SizedBox(height: 3),

                          Text(
                            'Authentic Indian Chutneys',

                            style: TextStyle(
                              color: Color(0xFF596579),
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // =================================================
                // MENU
                // =================================================
                Row(
                  children: [
                    _navItem('Home'),
                    _navItem('Shop'),
                    _navItem('About'),
                    _navItem('Contact'),
                    _navItem('Reviews'),
                  ],
                ),

                const SizedBox(width: 75),

                // USER ICON
                const Icon(
                  Icons.person_outline,
                  size: 27,
                  color: Color(0xFF344054),
                ),

                const SizedBox(width: 30),

                // =================================================
                // CART
                // =================================================
                Container(
                  height: 51,

                  padding: const EdgeInsets.symmetric(horizontal: 27),

                  decoration: BoxDecoration(
                    color: const Color(0xFFFF4B00),
                    borderRadius: BorderRadius.circular(30),
                  ),

                  child: const Row(
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                        size: 25,
                      ),

                      SizedBox(width: 10),

                      Text(
                        'Cart',

                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Widget _navItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),

      child: Text(
        title,

        style: const TextStyle(
          color: Color(0xFF344054),
          fontSize: 19,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

// ============================================================
// CATEGORY SECTION
// ============================================================

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'title': 'Chutney', 'image': 'assets/images/chutney.jpg'},

      {'title': 'Masale', 'image': 'assets/images/masale.jpg'},

      {'title': 'Sauces', 'image': 'assets/images/sauces.jpg'},

      {'title': 'Spice Mixes', 'image': 'assets/images/spice_mixes.jpg'},

      {'title': 'Organic', 'image': 'assets/images/organic.jpg'},
    ];

    return Container(
      width: double.infinity,

      padding: const EdgeInsets.only(top: 40, bottom: 60),

      child: Column(
        children: [
          // =====================================================
          // HEADING
          // =====================================================
          const Text(
            'Shop by Category',

            style: TextStyle(
              color: Color(0xFF09284B),
              fontSize: 38,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 30),

          // =====================================================
          // CARDS
          // =====================================================
          SizedBox(
            height: 240,

            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Row(
                children: [
                  const SizedBox(width: 10),

                  ...categories.map((category) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),

                      child: CategoryCard(
                        title: category['title']!,
                        image: category['image']!,
                      ),
                    );
                  }),

                  const SizedBox(width: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// CATEGORY CARD
// ============================================================

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;

  const CategoryCard({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 240,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),

        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 5, offset: Offset(0, 3)),
        ],
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),

        child: Stack(
          fit: StackFit.expand,

          children: [
            // IMAGE
            Image.asset(image, fit: BoxFit.cover),

            // DARK OVERLAY
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,

                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.65),
                  ],
                ),
              ),
            ),

            // TITLE
            Positioned(
              left: 20,
              bottom: 21,

              child: Text(
                title,

                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// ============================================================
// HERO SECTION
// ============================================================

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,

      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/chutney.jpg'),
          fit: BoxFit.cover,
        ),
      ),

      child: Container(
        color: const Color(0xD9F0440A),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Text(
              'Traditional Flavors, Modern Quality',

              textAlign: TextAlign.center,

              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 18),

            const Text(
              'Discover our premium range of authentic Indian chutneys, crafted with love\n'
              'and the finest ingredients',

              textAlign: TextAlign.center,

              style: TextStyle(color: Colors.white, fontSize: 20, height: 1.5),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {},

              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFFFF4B00),

                elevation: 0,

                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 16,
                ),

                minimumSize: Size.zero,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),

              child: const Text(
                'Explore Products',

                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// PREMIUM CHUTNEY SECTION
// ============================================================
class PremiumChutneySection extends StatelessWidget {
  const PremiumChutneySection({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        'name': 'Chenga Chutney',
        'image': 'assets/images/chenga.jpg',
        'description':
            'Tangy and flavorful traditional chutney made from fresh ingredients.',
        'price': '₹120',
      },
      {
        'name': 'Lasun Chutney',
        'image': 'assets/images/lasun.jpg',
        'description': 'Spicy garlic chutney perfect for parathas and snacks.',
        'price': '₹130',
      },
      {
        'name': 'Karal Chutney',
        'image': 'assets/images/kara.jpg',
        'description': 'Authentic bitter gourd chutney with a unique taste.',
        'price': '₹140',
      },
      {
        'name': 'Special Jain Chutney',
        'image': 'assets/images/jain.jpg',
        'description': 'Pure vegetarian chutney following Jain principles.',
        'price': '₹150',
      },
      {
        'name': 'Javas Chutney',
        'image': 'assets/images/javas.jpg',
        'description': 'Sweet and tangy chutney that complements every meal.',
        'price': '₹125',
      },
    ];

    return Container(
      width: double.infinity,
      color: const Color(0xFFFCF8EF), // Warm cream background
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
      child: Column(
        children: [
          // TITLE
          const Text(
            'Our Premium Chutneys',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF0F2644),
              fontSize: 32,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
            ),
          ),

          const SizedBox(height: 48),

          // PRODUCTS
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 24, // Horizontal space between cards
            runSpacing: 28, // Vertical space when wrapping
            children: products.map((product) {
              return ProductCard(
                name: product['name']!,
                image: product['image']!,
                description: product['description']!,
                price: product['price']!,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// PRODUCT CARD
// ============================================================

class ProductCard extends StatelessWidget {
  final String name;
  final String image;
  final String description;
  final String price;

  const ProductCard({
    super.key,
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320, // Increased card width from 120
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12), // Smoother rounded corners
        boxShadow: const [
          BoxShadow(
            color: Color(0x0D000000),
            blurRadius: 16,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ==================================================
          // PRODUCT IMAGE
          // ==================================================
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.asset(
              image,
              width: double.infinity,
              height: 200, // Increased image height from 80
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                // Fallback placeholder container in case image asset is missing
                return Container(
                  height: 200,
                  color: Colors.grey.shade300,
                  alignment: Alignment.center,
                  child: const Icon(Icons.image, color: Colors.grey, size: 48),
                );
              },
            ),
          ),

          // ==================================================
          // PRODUCT DETAILS
          // ==================================================
          Padding(
            padding: const EdgeInsets.all(20), // Increased inner padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFF1B2836),
                    fontSize: 20, // Increased from 7
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                SizedBox(
                  height: 48, // Fixed height ensures all cards stay aligned
                  child: Text(
                    description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color(0xFF6B7280),
                      fontSize: 13, // Increased from 5.5
                      height: 1.5,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // PRICE + ADD TO CART
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        color: Color(0xFFFF5200),
                        fontSize: 20, // Increased from 7
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        // Add to cart logic
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF5200),
                          borderRadius: BorderRadius.circular(
                            8,
                          ), // Capsule/pill shape button
                        ),
                        child: const Text(
                          'Add to Cart',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13, // Increased from 5
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// ============================================================
// ABOUT SECTION
// ============================================================

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      color: Colors.white,

      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 48),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          // ==================================================
          // ABOUT TEXT
          // ==================================================
          SizedBox(
            width: 520,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const Text(
                  'About Agarwal Foods',

                  style: TextStyle(
                    color: Color(0xFF09284B),
                    fontSize: 34,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 18),

                const Text(
                  'For generations, Agarwal Foods has been bringing the authentic taste of '
                  'traditional Indian chutneys to homes across the country. Our recipes have '
                  'been passed down through generations, ensuring that every jar carries the '
                  'essence of homemade goodness.',

                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    height: 1.6,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 16),

                const Text(
                  'We use only the finest ingredients, sourced locally and prepared with '
                  'traditional methods to preserve the authentic flavors that make our '
                  'chutneys special.',

                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 48),

          // ==================================================
          // STATISTICS
          // ==================================================
          SizedBox(
            width: 460,

            child: GridView.count(
              crossAxisCount: 2,

              crossAxisSpacing: 16,

              mainAxisSpacing: 16,

              childAspectRatio: 1.45,

              shrinkWrap: true,

              physics: const NeverScrollableScrollPhysics(),

              children: const [
                StatCard(number: '100%', title: 'Natural Ingredients'),

                StatCard(number: '25+', title: 'Years Experience'),

                StatCard(number: '5', title: 'Premium Varieties'),

                StatCard(number: '10K+', title: 'Happy Customers'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// ============================================================
// STAT CARD
// ============================================================

class StatCard extends StatelessWidget {
  final String number;
  final String title;

  const StatCard({super.key, required this.number, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFEDDB),

        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text(
            number,

            style: const TextStyle(
              color: Color(0xFFFF4B00),
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF333333),
              fontSize: 14, // Increased from 5 to readable 14
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
// ============================================================
// // GET IN TOUCH
// // ============================================================

class GetInTouchSection extends StatelessWidget {
  const GetInTouchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFF8FAFC),
      padding: const EdgeInsets.symmetric(
        vertical: 60, // Increased from 22 for standard section height
        horizontal: 24,
      ),
      child: Column(
        children: [
          const Text(
            'Get in Touch',
            style: TextStyle(
              color: Color(0xFF09284B),
              fontSize: 32, // Increased from 15
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 48), // Increased from 18
          // Row of contact items
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 80, // Horizontal gap between items
            runSpacing: 32, // Vertical gap if it wraps on smaller screens
            children: const [
              ContactItem(
                icon: Icons.phone,
                title: 'Call Us',
                value: '+91 98765 43210',
              ),
              ContactItem(
                icon: Icons.email_outlined,
                title: 'Email Us',
                value: 'info@agarwalfoods.com',
              ),
              ContactItem(
                icon: Icons.location_on_outlined,
                title: 'Visit Us',
                value: 'Mumbai, Maharashtra',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ============================================================
// CONTACT ITEM
// ============================================================

class ContactItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const ContactItem({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200, // Fixed width keeps alignment clean
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Orange circle
          Container(
            width: 58, // Increased from 21
            height: 58, // Increased from 21
            decoration: const BoxDecoration(
              color: Color(0xFFFF5200),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 26, // Increased from 12
            ),
          ),

          const SizedBox(height: 16), // Increased from 5
          // Title
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF09284B),
              fontSize: 18, // Increased from 7
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 8), // Increased from 2
          // Detail text
          Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF6B7280),
              fontSize: 14, // Increased from 5.5
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// FOOTER
// ============================================================

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF182538),
      padding: const EdgeInsets.symmetric(
        vertical: 28, // Increased from 12
        horizontal: 24,
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '© 2026 Agarwal Foods. All rights reserved.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14, // Increased from 6
              fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(height: 6), // Increased from 3

          Text(
            'Bringing authentic Indian flavors to your table',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF8E9BAE),
              fontSize: 13, // Increased from 5
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
