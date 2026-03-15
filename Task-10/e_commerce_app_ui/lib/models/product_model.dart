class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final double rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  static Map<int, String> categoriesMap = {
    0: "All",
    1: "Shoes",
    2: "Electronics",
    3: "Watches",
    4: "Fashion",
  };
  static List<String> categories = [
    "All",
    "Shoes",
    "Electronics",
    "Watches",
    "Fashion",
  ];

  static List<ProductModel> productList = [
    ProductModel(
      id: 1,
      title: "Red Nike Sneaker",
      price: 120.0,
      description:
          "Experience ultimate comfort and peak performance with these Premium Red Nike running shoes. Featuring high-tech breathable mesh for maximum airflow and superior React cushioning that protects your joints during long runs. Whether you are hitting the gym or the pavement, these sneakers offer the perfect blend of athletic durability and modern street style.",
      category: "Shoes",
      image:
          "https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1000&auto=format&fit=crop",
      rating: 4.5,
    ),
    ProductModel(
      id: 2,
      title: "Premium Headphones",
      price: 350.0,
      description:
          "Immerse yourself in pure sound with our Wireless Noise-Canceling Headphones. Engineered with 40mm drivers for deep bass and crystal-clear highs, these headphones are perfect for audiophiles and travelers alike. Enjoy up to 30 hours of continuous battery life on a single charge, plus a fast-charge feature that gives you 3 hours of playback in just 10 minutes of charging.",
      category: "Electronics",
      image:
          "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=1000&auto=format&fit=crop",
      rating: 4.8,
    ),
    ProductModel(
      id: 3,
      title: "Smart Watch Series",
      price: 299.0,
      description:
          "Stay connected and track your health in real-time with the latest Smart Watch Series. This sleek wearable features advanced heart rate monitoring, blood oxygen sensors, and built-in GPS for precise workout tracking. With its vibrant AMOLED display and water-resistant design, it’s the ultimate companion for your daily fitness goals and receiving smart notifications right on your wrist.",
      category: "Watches",
      image:
          "https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=1000&auto=format&fit=crop",
      rating: 4.7,
    ),
    ProductModel(
      id: 4,
      title: "Classic White Sneakers",
      price: 85.0,
      description:
          "The definition of versatility: these Minimalist White Leather Sneakers are a must-have for every wardrobe. Crafted from high-quality full-grain leather that's easy to clean and built to last. The sleek, clean design pairs perfectly with everything from casual denim to smart-casual office wear, providing a sophisticated touch to your everyday look without compromising on all-day comfort.",
      category: "Shoes",
      image:
          "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?q=80&w=1000&auto=format&fit=crop",
      rating: 4.3,
    ),
    ProductModel(
      id: 5,
      title: "Minimalist Camera",
      price: 599.0,
      description:
          "Capture your life's best moments with this compact Mirrorless Camera. Designed specifically for street photography and vlogging, it features a 24.2MP sensor that delivers stunningly sharp images even in low light conditions. Its lightweight body makes it easy to carry all day, while the intuitive touchscreen and fast autofocus ensure you never miss a perfect shot when inspiration strikes.",
      category: "Electronics",
      image:
          "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&q=80&w=1000",
      rating: 4.6,
    ),
    ProductModel(
      id: 6,
      title: "Minimalist Watch",
      price: 150.0,
      description:
          "Elegance meets simplicity in this timeless Analog Watch. Featuring a Japanese quartz movement for precise timekeeping and a genuine top-grain leather strap that softens and gets better with age. The scratch-resistant sapphire crystal glass protects the minimalist face, making it the ideal accessory for formal events, business meetings, or adding a touch of class to your weekend attire.",
      category: "Watches",
      image:
          "https://images.unsplash.com/photo-1524592094714-0f0654e20314?q=80&w=1000&auto=format&fit=crop",
      rating: 4.4,
    ),
    ProductModel(
      id: 7,
      title: "Modern Backpack",
      price: 75.0,
      description:
          "Designed for the modern commuter, this Waterproof Backpack combines style with practical utility. It includes a dedicated padded compartment that safely fits up to a 15.6-inch laptop, plus an external USB charging port to keep your devices powered on the go. Multiple hidden pockets and ergonomic shoulder straps make it comfortable for daily travel, school, or weekend adventures in any weather.",
      category: "Fashion",
      image:
          "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?q=80&w=1000&auto=format&fit=crop",
      rating: 4.5,
    ),
    ProductModel(
      id: 8,
      title: "Gaming Monitor",
      price: 349.0,
      description:
          "Transform your visual experience with this stunning Ultra-Wide Gaming Monitor. Featuring a 144Hz refresh rate and 1ms response time for buttery-smooth gameplay and zero lag. The high-resolution panel delivers vibrant colors and deep blacks, while the sleek, near-frameless design provides an immersive viewing experience whether you are gaming, editing professional videos, or multitasking between work projects.",
      category: "Electronics",
      image:
          "https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?q=80&w=1000&auto=format&fit=crop",
      rating: 4.8,
    ),
    ProductModel(
      id: 9,
      title: "Blue Sport Shoe",
      price: 110.0,
      description:
          "Achieve your personal best with these high-performance Blue Athletic Shoes. Engineered with a lightweight, flexible sole that mimics the natural movement of your foot, providing explosive energy return with every step. The reinforced heel provides extra stability for lateral movements, making them ideal for cross-training, indoor sports, or long-distance jogging sessions.",
      category: "Shoes",
      image:
          "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?q=80&w=1000&auto=format&fit=crop",
      rating: 4.7,
    ),
    ProductModel(
      id: 10,
      title: "Wireless Speaker",
      price: 130.0,
      description:
          "Bring the party anywhere with this rugged Portable Bluetooth Speaker. Delivering massive 360-degree sound and deep, booming bass that fills any room or outdoor space. It is fully IPX7 waterproof, so it’s perfect for pool parties or beach trips. With a massive battery that lasts up to 24 hours and the ability to pair multiple speakers for a true surround sound experience.",
      category: "Electronics",
      image:
          "https://images.pexels.com/photos/1279107/pexels-photo-1279107.jpeg?auto=compress&cs=tinysrgb&w=1000",
      rating: 4.9,
    ),
    ProductModel(
      id: 1,
      title: "Red Nike Sneaker",
      price: 120.0,
      description:
          "Experience ultimate comfort and peak performance with these Premium Red Nike running shoes. Featuring high-tech breathable mesh for maximum airflow and superior React cushioning that protects your joints during long runs. Whether you are hitting the gym or the pavement, these sneakers offer the perfect blend of athletic durability and modern street style.",
      category: "Shoes",
      image:
          "https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1000&auto=format&fit=crop",
      rating: 4.5,
    ),
    ProductModel(
      id: 2,
      title: "Premium Headphones",
      price: 350.0,
      description:
          "Immerse yourself in pure sound with our Wireless Noise-Canceling Headphones. Engineered with 40mm drivers for deep bass and crystal-clear highs, these headphones are perfect for audiophiles and travelers alike. Enjoy up to 30 hours of continuous battery life on a single charge, plus a fast-charge feature that gives you 3 hours of playback in just 10 minutes of charging.",
      category: "Electronics",
      image:
          "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=1000&auto=format&fit=crop",
      rating: 4.8,
    ),
    ProductModel(
      id: 3,
      title: "Smart Watch Series",
      price: 299.0,
      description:
          "Stay connected and track your health in real-time with the latest Smart Watch Series. This sleek wearable features advanced heart rate monitoring, blood oxygen sensors, and built-in GPS for precise workout tracking. With its vibrant AMOLED display and water-resistant design, it’s the ultimate companion for your daily fitness goals and receiving smart notifications right on your wrist.",
      category: "Watches",
      image:
          "https://images.unsplash.com/photo-1523275335684-37898b6baf30?q=80&w=1000&auto=format&fit=crop",
      rating: 4.7,
    ),
    ProductModel(
      id: 4,
      title: "Classic White Sneakers",
      price: 85.0,
      description:
          "The definition of versatility: these Minimalist White Leather Sneakers are a must-have for every wardrobe. Crafted from high-quality full-grain leather that's easy to clean and built to last. The sleek, clean design pairs perfectly with everything from casual denim to smart-casual office wear, providing a sophisticated touch to your everyday look without compromising on all-day comfort.",
      category: "Shoes",
      image:
          "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?q=80&w=1000&auto=format&fit=crop",
      rating: 4.3,
    ),
    ProductModel(
      id: 5,
      title: "Minimalist Camera",
      price: 599.0,
      description:
          "Capture your life's best moments with this compact Mirrorless Camera. Designed specifically for street photography and vlogging, it features a 24.2MP sensor that delivers stunningly sharp images even in low light conditions. Its lightweight body makes it easy to carry all day, while the intuitive touchscreen and fast autofocus ensure you never miss a perfect shot when inspiration strikes.",
      category: "Electronics",
      image:
          "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&q=80&w=1000",
      rating: 4.6,
    ),
    ProductModel(
      id: 6,
      title: "Minimalist Watch",
      price: 150.0,
      description:
          "Elegance meets simplicity in this timeless Analog Watch. Featuring a Japanese quartz movement for precise timekeeping and a genuine top-grain leather strap that softens and gets better with age. The scratch-resistant sapphire crystal glass protects the minimalist face, making it the ideal accessory for formal events, business meetings, or adding a touch of class to your weekend attire.",
      category: "Watches",
      image:
          "https://images.unsplash.com/photo-1524592094714-0f0654e20314?q=80&w=1000&auto=format&fit=crop",
      rating: 4.4,
    ),
    ProductModel(
      id: 7,
      title: "Modern Backpack",
      price: 75.0,
      description:
          "Designed for the modern commuter, this Waterproof Backpack combines style with practical utility. It includes a dedicated padded compartment that safely fits up to a 15.6-inch laptop, plus an external USB charging port to keep your devices powered on the go. Multiple hidden pockets and ergonomic shoulder straps make it comfortable for daily travel, school, or weekend adventures in any weather.",
      category: "Fashion",
      image:
          "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?q=80&w=1000&auto=format&fit=crop",
      rating: 4.5,
    ),
    ProductModel(
      id: 8,
      title: "Gaming Monitor",
      price: 349.0,
      description:
          "Transform your visual experience with this stunning Ultra-Wide Gaming Monitor. Featuring a 144Hz refresh rate and 1ms response time for buttery-smooth gameplay and zero lag. The high-resolution panel delivers vibrant colors and deep blacks, while the sleek, near-frameless design provides an immersive viewing experience whether you are gaming, editing professional videos, or multitasking between work projects.",
      category: "Electronics",
      image:
          "https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?q=80&w=1000&auto=format&fit=crop",
      rating: 4.8,
    ),
    ProductModel(
      id: 9,
      title: "Blue Sport Shoe",
      price: 110.0,
      description:
          "Achieve your personal best with these high-performance Blue Athletic Shoes. Engineered with a lightweight, flexible sole that mimics the natural movement of your foot, providing explosive energy return with every step. The reinforced heel provides extra stability for lateral movements, making them ideal for cross-training, indoor sports, or long-distance jogging sessions.",
      category: "Shoes",
      image:
          "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?q=80&w=1000&auto=format&fit=crop",
      rating: 4.7,
    ),
    ProductModel(
      id: 10,
      title: "Wireless Speaker",
      price: 130.0,
      description:
          "Bring the party anywhere with this rugged Portable Bluetooth Speaker. Delivering massive 360-degree sound and deep, booming bass that fills any room or outdoor space. It is fully IPX7 waterproof, so it’s perfect for pool parties or beach trips. With a massive battery that lasts up to 24 hours and the ability to pair multiple speakers for a true surround sound experience.",
      category: "Electronics",
      image:
          "https://images.pexels.com/photos/1279107/pexels-photo-1279107.jpeg?auto=compress&cs=tinysrgb&w=1000",
      rating: 4.9,
    ),
  ];
}
