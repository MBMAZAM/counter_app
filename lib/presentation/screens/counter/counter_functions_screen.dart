import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Functions'),
          centerTitle: true,
          actions: [
            IconButton(
            icon: const Icon(Icons.refresh_rounded), 
            onPressed: () { 
              clickCounter = 0;
              setState(() {
                
              });
             }, 
          ),
          
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter',
                  style: const TextStyle(
                      fontSize: 160, fontWeight: FontWeight.w100)),
              Text(clickCounter == 1 ? 'Click' : 'Clicks',
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w500))
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_rounded, 
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              }, 
            ),
            const SizedBox(height: 8), // Espacio entre los botones
            CustomButton(icon: Icons.exposure_minus_1_outlined, onPressed: () {
              if(clickCounter == 0) return;
              clickCounter--;
              setState(() {});
            }, ),
            const SizedBox(height: 8), // Espacio entre los botones
            CustomButton(icon: Icons.plus_one, onPressed: () {
              clickCounter++;
              setState(() {});
            }, ),
          ],

        ));
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;


  const CustomButton({
    super.key, 
    required this.icon, 
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //enableFeedback: true,
      elevation: 10,
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
