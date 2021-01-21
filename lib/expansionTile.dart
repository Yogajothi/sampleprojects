import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
        home:expansionTile()
    )
    );

class expansionTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context,int index) => entryItem(data[index]),
    itemCount: data.length);
  }
}

class Entry{
  const Entry(this.title,[this.children = const <Entry>[]]);
  final String title;
  final List<Entry>children;
}

const List<Entry>data = <Entry> [
  Entry(
    'Chapter A',
    <Entry>[
      Entry(
        'Section A0',
        <Entry>[
          Entry('Section A0.1'),
          Entry('Section A0.2'),
        ]
      ),
      Entry('Section A1'),
      Entry('Section A2'),
    ]
  ),
  Entry(
    'Chapter B',
      <Entry>[
      Entry('Section B1'),
      Entry('Section B2'),
      ]
  )
];

class entryItem extends StatelessWidget {
  const entryItem(this.entry);
  final Entry entry;

  @override
  Widget _buildTiles(Entry root){
    if(root.children.isEmpty) return ListTile(title: Text(root.title),);
    return ExpansionTile(
      key : PageStorageKey<Entry>(root),
      title : Text(root.title),
      children: root.children.map(_buildTiles).toList(),

    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}

