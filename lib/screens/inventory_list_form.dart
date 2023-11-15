import 'package:flutter/material.dart';
import 'package:inventory_beta_mobile/widgets/left_drawer.dart';
import 'package:inventory_beta_mobile/screens/menu.dart';
import 'package:inventory_beta_mobile/list_item.dart';

class Item {
  final String name;
  final int price;
  final String desc;
  final String effect;

  Item(this.name, this.price, this.desc, this.effect);
}

class InventoryFormPage extends StatefulWidget {
  const InventoryFormPage({super.key});

  @override
  State<InventoryFormPage> createState() => _InventoryFormPageState();
}

class _InventoryFormPageState extends State<InventoryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _price = 0;
  String _description = "";
  String _effect = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Add Item',
            ),
          ),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        drawer: const LeftDrawer(),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    labelText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _name = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Please fill in all the fields!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Price",
                    labelText: "Price",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _price = int.parse(value!);
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Please fill in all the fields!";
                    }
                    if (int.tryParse(value) == null) {
                      return "Your price must be an integer";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Description",
                    labelText: "Description",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _description = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Please fill in all the fields!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Effect",
                    labelText: "Effect",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _effect = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Please fill in all the fields!";
                    }
                    return null;
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.indigo),
                      ),
                      onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>MyHomePage(),));
                      },
                      child: const Text(
                        "Back",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.indigo),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title:
                                      const Text('Produk berhasil tersimpan'),
                                  content: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Nama: $_name'),
                                        Text('Harga: $_price'),
                                        Text('Deskripsi: $_description'),
                                        Text('Efek: $_effect')
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      child: const Text('OK'),
                                      onPressed: () {
                                        listItem.add(Item(_name, _price,
                                            _description, _effect));
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>MyHomePage(),));
                                      },
                                    ),
                                  ],
                                );
                              });
                        }
                      },
                      child: const Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}
