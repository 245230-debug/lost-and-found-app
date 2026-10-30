import 'package:flutter/material.dart';
import '../models/lost_item.dart';
import 'item_details_screen.dart';

class ItemListScreen extends StatelessWidget {
  const ItemListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Campus Lost & Found'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: sampleItems.length,
        itemBuilder: (context, index) {
          final item = sampleItems[index];
          final isLost = item.status == ItemStatus.lost;

          return Card(
            elevation: 3,
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              contentPadding: const EdgeInsets.all(12),
              leading: CircleAvatar(
                backgroundColor: isLost ? Colors.red.shade100 : Colors.green.shade100,
                child: Icon(
                  isLost ? Icons.search : Icons.check_circle,
                  color: isLost ? Colors.red : Colors.green,
                ),
              ),
              title: Text(
                item.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.location_on, size: 16),
                        const SizedBox(width: 4),
                        Expanded(child: Text(item.location)),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Status: ${item.statusLabel}',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: isLost ? Colors.red : Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemDetailsScreen(item: item),
                    ),
                  );
                },
                child: const Text('Details'),
              ),
            ),
          );
        },
      ),
    );
  }
}
