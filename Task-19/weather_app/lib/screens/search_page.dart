// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:weather_app/screens/home_page.dart';
import 'package:weather_app/server/api_helper.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var searchController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Weather App",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: Form(
                  key: formKey,
                  child: TextFormField(
                    controller: searchController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                      ),
                      hintText: "Enter City Name",
                      label: Text("Search For City"),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "You must enter City name";
                      }
                      return null;
                    },
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 60,
                width: double.infinity, //
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        await ApiHelper()
                            .getData(searchController.text)
                            .then(
                              (value) => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      HomePage(weatherModel: value),
                                ),
                              ),
                            );
                      }
                    },
                    child: Text(
                      "Search For a City",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
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
