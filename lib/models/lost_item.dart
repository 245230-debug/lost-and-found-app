enum ItemStatus { lost, found }

class LostItem {
  final int id;
  final String name;
  final String location;
  final ItemStatus status;
  final String description;
  final String date;
  final String contact;

  const LostItem({
    required this.id,
    required this.name,
    required this.location,
    required this.status,
    required this.description,
    required this.date,
    required this.contact,
  });

  String get statusLabel => status == ItemStatus.lost ? 'Lost' : 'Found';
}

// Sample data (at least eight items)
const List<LostItem> sampleItems = [
  LostItem(
    id: 1,
    name: 'Black Backpack',
    location: 'Library, 2nd Floor',
    status: ItemStatus.lost,
    description: 'Black Adidas backpack with a laptop and notebooks inside.',
    date: '24 Oct 2026',
    contact: 'Ali - 0300-1111111',
  ),
  LostItem(
    id: 2,
    name: 'Student ID Card',
    location: 'Cafeteria',
    status: ItemStatus.found,
    description: 'Air University student ID card, name partly visible.',
    date: '25 Oct 2026',
    contact: 'Security Office - Ext. 101',
  ),
  LostItem(
    id: 3,
    name: 'Casio Calculator',
    location: 'Block A, Room 12',
    status: ItemStatus.found,
    description: 'Casio fx-991ES scientific calculator with a blue cover.',
    date: '26 Oct 2026',
    contact: 'Admin Office - Ext. 102',
  ),
  LostItem(
    id: 4,
    name: 'Samsung Phone',
    location: 'Computer Lab 3',
    status: ItemStatus.lost,
    description: 'Samsung Galaxy A52, black, with a cracked back cover.',
    date: '26 Oct 2026',
    contact: 'Sara - 0311-2222222',
  ),
  LostItem(
    id: 5,
    name: 'Car Keys',
    location: 'Parking Area',
    status: ItemStatus.found,
    description: 'Toyota key with a red keychain and two small keys.',
    date: '27 Oct 2026',
    contact: 'Security Office - Ext. 101',
  ),
  LostItem(
    id: 6,
    name: 'Water Bottle',
    location: 'Sports Ground',
    status: ItemStatus.lost,
    description: 'Steel silver water bottle with a university sticker.',
    date: '27 Oct 2026',
    contact: 'Hamza - 0322-3333333',
  ),
  LostItem(
    id: 7,
    name: 'Wired Earphones',
    location: 'Mosque',
    status: ItemStatus.found,
    description: 'White wired earphones in a small black pouch.',
    date: '28 Oct 2026',
    contact: 'Admin Office - Ext. 102',
  ),
  LostItem(
    id: 8,
    name: 'Prescription Glasses',
    location: 'Auditorium',
    status: ItemStatus.lost,
    description: 'Black-framed glasses in a brown hard case.',
    date: '29 Oct 2026',
    contact: 'Ayesha - 0333-4444444',
  ),
];
