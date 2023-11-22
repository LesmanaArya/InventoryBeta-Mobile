import 'package:flutter/material.dart';
import 'package:inventory_beta_mobile/list_item.dart';
import 'package:inventory_beta_mobile/widgets/left_drawer.dart';
import 'package:inventory_beta_mobile/screens/inventory_list_form.dart';
import 'package:inventory_beta_mobile/screens/menu.dart';

class InventoryCard extends StatelessWidget {
  final Item item;

  const InventoryCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        // Area responsive terhadap sentuhan
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black, fontSize: 30),
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.amount.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black, fontSize: 30),
                ),
                Text(
                  item.desc,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black, fontSize: 30),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DisplayItemPage extends StatefulWidget {
  const DisplayItemPage({super.key});

  @override
  State<DisplayItemPage> createState() => _DisplayItemPageState();
}

class _DisplayItemPageState extends State<DisplayItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Display Item',
          ),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: listItem.map((Item item) {
                  // Iterasi untuk setiap item
                  return InventoryCard(item);
                }).toList(),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.indigo),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                          ));
                    },
                    child: const Text(
                      "Back",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
