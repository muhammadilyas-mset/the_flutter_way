import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_flutter_way/profile.dart';
import 'model/favorite.dart';
import 'model/recommend.dart';

class MyNavigationRuote extends StatefulWidget {
  const MyNavigationRuote({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyNavigationRuote> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // When navigating to the "/" route, build the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/': (context) => const MyHome(),
      },
    );
  }

  State<GroceryAppHomePage> createState() => GroceryAppHomePageState();
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFD6D311),
        title: Title(
            color: const Color.fromARGB(255, 0, 0, 0),
            child: const Text(
              'Grocery App',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 150, left: 50, right: 50, bottom: 20),
              child: Column(
                children: [
                  const Text(
                    "Create an Account",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 243, 236, 236),
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide.none),
                      hintText: '',
                      labelText: 'Enter your first name',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 243, 236, 236),
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide.none),
                      hintText: '',
                      labelText: 'Enter your last name',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 243, 236, 236),
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide.none),
                      hintText: '',
                      labelText: 'Enter your email address',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 243, 236, 236),
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide.none),
                      hintText: '',
                      labelText: 'Enter your password',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 200,
              //elevated buttons to add dimension to otherwise mostly flat layouts
              child: ElevatedButton(
                onPressed: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const MyNavigationFirstChild()),
                    ModalRoute.withName('/')),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(214, 211, 17, 1),
                    side: BorderSide.none,
                    shape: const StadiumBorder()),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class MyNavigationFirstChild extends StatelessWidget {
  const MyNavigationFirstChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 270, left: 50, right: 50),
              child: SizedBox(
                height: 150,
                width: 150,
                child: ClipRect(
                  child: Image.asset('lib/assets/ilyas.jpg'),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 50, right: 50),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 243, 236, 236),
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide.none),
                      hintText: '',
                      labelText: 'Enter your email address',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 243, 236, 236),
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide.none),
                      hintText: '',
                      labelText: 'Enter your password',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 200,
              //elevated buttons to add dimension to otherwise mostly flat layouts
              //here is use navigator.push to ruote to another screen whithin class
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyNavigationSecondChild())),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(214, 211, 17, 1),
                    side: BorderSide.none,
                    shape: const StadiumBorder()),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class MyNavigationSecondChild extends StatelessWidget {
  const MyNavigationSecondChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          // POP - Navigate back to the first screen by popping the current route
          onPressed: () => Navigator.pop(context),
          child: const GroceryAppHomePage(),
          //here is show the grocery app
          //when we use navigator.pop it will take to first_navigator
        ),
      ),
    );
  }
}

class GroceryAppHomePage extends StatefulWidget {
  const GroceryAppHomePage({super.key});

  @override
  State<GroceryAppHomePage> createState() => GroceryAppHomePageState();
}

class GroceryAppHomePageState extends State<GroceryAppHomePage> {
  //first we have to put value 0 becuase our index is in zero state
  int _selectedpageindex = 0;
  // Save the current [page] with [PageStorage] and restore it if this controller's scrollable is recreated.
  PageController pageController =
      PageController(); //for Pageview we have to set a controller here
  void onTapped(int index) {
    setState(() {
      _selectedpageindex =
          index; // when we tapped on zero state page which is 0 and the same our index will be 0 state
    });
    pageController.animateToPage(index,
        duration:
            const Duration(milliseconds: 1000), // we have set here a timer
        curve: Curves.easeOutBack); // its animation betweeen two Pgeviews
  }

// create an array for storing images/svg and and box color
  List<FavoriteModel> favorite = [];
  List<RecommendModel> recommended = [];

  void _getFavoriteCategories() {
    favorite = FavoriteModel.getFavoriteCategories();
  }

  void _getRecommendation() {
    recommended = RecommendModel.getRecommendation();
  }

  @override
  // initState() method is called only and only once
  //and is used generally for initializing the previously defined variables of the stateful widget.
  //initState() method is overridden mostly because as mentioned earlier
  // it is called only once in its lifetime
  void initState() {
    _getFavoriteCategories();
    _getRecommendation();
  }

  @override
  Widget build(BuildContext context) {
    _getFavoriteCategories();
    _getRecommendation();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFD6D311),
        title: Title(
            color: const Color.fromARGB(255, 0, 0, 0),
            child: const Text(
              'Grocery App',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )),
      ),
      body: _myHomeScreen(context),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          currentIndex: _selectedpageindex,
          backgroundColor: const Color(0xFFD6D311),
          selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
          unselectedItemColor: const Color.fromARGB(255, 136, 134, 3),
          onTap: onTapped),
    );
  }

  PageView _myHomeScreen(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        //here we implement home page, sale, favorite products
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Image.asset('lib/assets/grocery_sale.jpg'),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Text(
                "Favorite Food",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 120,
              child: ListView.separated(
                itemCount: favorite.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20, right: 20),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 25,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: favorite[index].boxColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              shape: BoxShape.circle),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset(favorite[index].iconPath),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Text(
                "All Food Item",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 220,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    width: 160,
                    decoration: BoxDecoration(
                      color: recommended[index].boxColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(
                          recommended[index].iconPath,
                          width: 40,
                          height: 35,
                        ),
                        Text(
                          recommended[index].name,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16),
                        ),
                        Text(
                          //why flutter recommended me to replace recommneded to interploator

                          /*  recommended[index].level +
                              ' | ' +
                              recommended[index].duration +
                              ' | ' +
                              recommended[index].reco, */

                          '${recommended[index].level} | ${recommended[index].duration}',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 5, 5, 5),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 110,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                recommended[index].viewIsSelected
                                    ? const Color(0xFFD6D311)
                                    : const Color(0xFFD6D311),
                                recommended[index].viewIsSelected
                                    ? const Color(0xFFD6D311)
                                    : const Color(0xFFD6D311),
                                //      Color.fromARGB(255, 34, 185, 223),
                                //     Color.fromARGB(255, 73, 183, 211),
                              ]),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          //here if i set any method to navigate, is it possible ?
                                          const MyNavigationSecondChild())),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(214, 211, 17, 1),
                                  side: BorderSide.none,
                                  shape: const StadiumBorder()),
                              child: const Text(
                                'Add to Cart',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 25,
                ),
                itemCount: recommended.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
              ),
            ),
            /*  SizedBox(
              height: 275,
              child: ListView.separated(
                itemCount: categories.length,
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.only(left: 20, right: 20),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 25,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: categories[index].boxColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ), */
          ],
        ),

        // here are those items that we add for cart
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Column(
                  children: [
                    _addtoCart(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text(
                        "Fresh Mexican Cherry",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        "(1500 rupee/ Kg)",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Text(
                        "PRODUCT BENEFITS:",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Protect your heart'),
                ),
                ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Protect your heart'),
                ),
                ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text('Improve blood sugar levels'),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: ElevatedButton(
                onPressed: () {
                  //Push the given route onto the navigator that most tightly encloses the given context,
                  //and then remove all the previous routes until the predicate returns true.
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const MyProfile(
                                title: 'Add to Cart',
                              )),
                      ModalRoute.withName('/'));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(214, 211, 17, 1),
                    side: BorderSide.none,
                    shape: const StadiumBorder()),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Padding _addtoCart() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
      ),
      child: Image.asset('lib/assets/cherry_carts.jpg'),
    );
  }
}
