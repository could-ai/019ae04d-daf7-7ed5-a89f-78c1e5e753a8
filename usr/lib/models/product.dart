import 'package:flutter/material.dart';

class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;

  const Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

final List<Product> dummyProducts = [
  const Product(
    id: 'p1',
    title: 'هاتف ذكي حديث',
    description: 'هاتف ذكي بمواصفات عالية وكاميرا بدقة 108 ميجابكسل وبطارية تدوم طويلاً.',
    price: 999.99,
    imageUrl: 'https://placehold.co/600x400/png?text=Smart+Phone',
  ),
  const Product(
    id: 'p2',
    title: 'لابتوب للأعمال',
    description: 'لابتوب خفيف الوزن وسريع الأداء مناسب لرجال الأعمال والطلاب.',
    price: 1299.99,
    imageUrl: 'https://placehold.co/600x400/png?text=Laptop',
  ),
  const Product(
    id: 'p3',
    title: 'سماعات لاسلكية',
    description: 'سماعات عازلة للضوضاء مع جودة صوت نقية ومريحة للأذن.',
    price: 199.99,
    imageUrl: 'https://placehold.co/600x400/png?text=Headphones',
  ),
  const Product(
    id: 'p4',
    title: 'ساعة ذكية',
    description: 'ساعة رياضية تتبع نبضات القلب والخطوات وتدعم الإشعارات.',
    price: 149.99,
    imageUrl: 'https://placehold.co/600x400/png?text=Smart+Watch',
  ),
  const Product(
    id: 'p5',
    title: 'كاميرا احترافية',
    description: 'كاميرا للتصوير الفوتوغرافي والفيديو بدقة 4K.',
    price: 850.00,
    imageUrl: 'https://placehold.co/600x400/png?text=Camera',
  ),
  const Product(
    id: 'p6',
    title: 'حذاء رياضي',
    description: 'حذاء مريح للجري والمشي لمسافات طويلة بتصميم عصري.',
    price: 79.99,
    imageUrl: 'https://placehold.co/600x400/png?text=Shoes',
  ),
];
