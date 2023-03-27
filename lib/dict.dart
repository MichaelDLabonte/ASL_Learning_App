import 'package:flutter/material.dart';

class ASLDictionary extends StatefulWidget {
  @override
  _ASLDictionaryState createState() => _ASLDictionaryState();
}

class _ASLDictionaryState extends State<ASLDictionary> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: const InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(color: Colors.white54),
            border: InputBorder.none,
          ),
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text('Search results will appear here.'),
      ),
    );
  }
}

class Dictionary extends StatelessWidget {
  final Map<String, String> _dictionary = {
    'A': 'assets/images/a.png',
    'B': 'assets/images/b.png',
    'C': 'assets/images/c.png',
    'D': 'assets/images/d.png',
    'E': 'assets/images/e.png',
    'F': 'assets/images/f.png',
    'G': 'assets/images/g.png',
    'H': 'assets/images/h.png',
    'I': 'assets/images/i.png',
    'K': 'assets/images/k.png',
    'L': 'assets/images/l.png',
    'M': 'assets/images/m.png',
    'N': 'assets/images/n.png',
    'O': 'assets/images/o.png',
    'P': 'assets/images/p.png',
    'Q': 'assets/images/q.png',
    'R': 'assets/images/r.png',
    'S': 'assets/images/s.png',
    'T': 'assets/images/t.png',
    'U': 'assets/images/u.png',
    'V': 'assets/images/v.png',
    'W': 'assets/images/w.png',
    'X': 'assets/images/x.png',
    'Y': 'assets/images/y.png',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Dictionary'),
      ),
      body: ListView.builder(
        itemCount: _dictionary.length,
        itemBuilder: (context, index) {
          final key = _dictionary.keys.elementAt(index);
          final value = _dictionary[key];
          return ListTile(
            leading: Image.asset('assets/images/a.png'),
            title: Text(key),
          );
        },
      ),
    );
  }
}
