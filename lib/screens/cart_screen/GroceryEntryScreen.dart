import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:shopping_app/models/data%20models/Grocery_model.dart';
import 'package:uuid/uuid.dart';

class GroceryEntryScreen extends StatefulWidget {
  const GroceryEntryScreen({
    Key? key,
    this.item,
    required this.onSave,
  }) : super(key: key);

  final GroceryItem? item;
  final Function onSave;

  @override
  State<GroceryEntryScreen> createState() => _GroceryEntryScreenState();
}

class _GroceryEntryScreenState extends State<GroceryEntryScreen> {
  final _titleController = TextEditingController();

  final _categoryController = TextEditingController();

  DateTime _date = DateTime.now();

  int _amount = 0;

  @override
  void initState() {
    super.initState();
    if (widget.item != null) {
      _titleController.text = widget.item!.groceryName;
      _categoryController.text = widget.item!.groceryCategory;
      _date = widget.item!.date;
      _amount = widget.item!.amount;
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _titleController.dispose();
    _categoryController.dispose();
    super.dispose();
  }

  void saveEntry() {
    final entry = GroceryItem(
        id: widget.item?.id ?? Uuid().v4(),
        groceryName: _titleController.text,
        groceryCategory: _categoryController.text,
        date: _date,
        amount: _amount);
    widget.onSave(entry);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Enter your new Grocery Item",
          style:
              GoogleFonts.openSans(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: saveEntry,
            icon: Icon(Icons.check),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Title",
              style: GoogleFonts.openSans(fontSize: 20),
            ),
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                  fillColor: Color.fromARGB(255, 221, 219, 219),
                  hintText: "Enter your grocery name"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Category",
              style: GoogleFonts.openSans(fontSize: 20),
            ),
            TextField(
              controller: _categoryController,
              decoration: InputDecoration(
                  hintText: "Enter the category",
                  fillColor: Color.fromARGB(255, 221, 219, 219)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Date",
                  style: GoogleFonts.openSans(fontSize: 20),
                ),
                TextButton(
                    onPressed: () async {
                      final currentDate = DateTime.now();
                      final selectedDate = await showDatePicker(
                        context: context,
                        initialDate: currentDate,
                        firstDate: currentDate,
                        lastDate: DateTime(currentDate.year + 5),
                      );
                      if (selectedDate != null) {
                        setState(() {
                          _date = selectedDate;
                        });
                      }
                    },
                    child: Text(
                      "Select",
                      style: GoogleFonts.openSans(fontSize: 14),
                    ))
              ],
            ),
            Text(DateFormat.MMMEd().format(_date)),
            SizedBox(
              height: 20,
            ),
            Text("Quantity: $_amount"),
            Slider(
              value: _amount.toDouble(),
              min: 0,
              max: 50,
              divisions: 50,
              label: _amount.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _amount = value.toInt();
                });
              },
            )
          ]),
        ),
      ),
    );
  }
}
