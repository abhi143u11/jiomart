import 'package:flutter/material.dart';

class SubcategoryModel {
  final String name;
  final Icon icon;

  SubcategoryModel({
    this.name,
    this.icon,
  });
}

List<SubcategoryModel> subData = [
  new SubcategoryModel(
    name: "Favorites",
    icon: Icon(Icons.line_style),
  ),
  new SubcategoryModel(
    name: "Hospital",
    icon: Icon(Icons.view_module),
  ),
  new SubcategoryModel(
    name: "Utilities",
    icon: Icon(Icons.view_module),
  ),
  new SubcategoryModel(
    name: "Education",
    icon: Icon(Icons.view_module),
  ),
  new SubcategoryModel(
    name: "Graments|Fabric shop  ",
    icon: Icon(Icons.view_module),
  ),
  new SubcategoryModel(
    name: "Lifestyle",
    icon: Icon(Icons.view_module),
  ),
  new SubcategoryModel(
    name: "Skin & hair| Beauty | Tattoo",
    icon: Icon(Icons.view_module),
  ),
  new SubcategoryModel(
    name: "Jewelers",
    icon: Icon(Icons.view_module),
  ),
  new SubcategoryModel(
    name: "Backery | Fast Food",
    icon: Icon(Icons.view_module),
  ),
  new SubcategoryModel(
    name: "Furniture",
    icon: Icon(Icons.view_module),
  ),
  new SubcategoryModel(
    name: "Wealth Management ",
    icon: Icon(Icons.view_module),
  ),
  new SubcategoryModel(
    name: "Event Management",
    icon: Icon(Icons.view_module),
  ),
  new SubcategoryModel(
    name: "Tours & Travels",
    icon: Icon(Icons.view_module),
  ),
];
