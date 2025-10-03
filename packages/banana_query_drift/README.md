# BananaQuery Drift

A Drift-based database implementation for the BananaQuery SDK. This package provides SQLite database functionality using the Drift ORM for managing food databases and food items.

## Features

- SQLite database storage using Drift ORM
- Full-text search capabilities using FTS5
- Food database management (CRUD operations)
- Food item management (CRUD operations)
- Full compatibility with the BananaQuery core API

## Usage

```dart
import 'package:banana_query_drift/banana_query_drift.dart';

// Initialize the database
final database = await BananaQueryDrift.initialize();

// Create a food database
final foodDbInfo = FoodDatabaseInfo(
  id: 'my-database',
  name: 'My Food Database',
  description: 'A custom food database',
  version: '1.0.0',
  language: 'en',
);

await database.createFoodDatabase(foodDbInfo);

// Get all food databases
final databases = await database.getFoodDatabases();

// Search food databases
final searchResults = await database.searchFoodDatabases('custom');
```

## Dependencies

- `drift`: SQLite ORM for Dart
- `sqlite3_flutter_libs`: SQLite libraries for Flutter
- `path_provider`: File system path utilities
- `banana_query_core`: Core BananaQuery types and interfaces
- `banana_query_database`: Database abstraction layer

## Database Schema

The package creates two main tables:

### FoodDatabases
- `id`: Primary key (text)
- `name`: Database name (text)
- `description`: Database description (text, nullable)
- `version`: Database version (text)
- `language`: Database language (text)
- `createdAt`: Creation timestamp (datetime)
- `updatedAt`: Last update timestamp (datetime)

### FoodItems
- `id`: Primary key (text)
- `name`: Food item name (text)
- `description`: Food item description (text, nullable)
- `category`: Food category (text)
- `subcategory`: Food subcategory (text, nullable)
- `data`: Full food item JSON data (text)
- `createdAt`: Creation timestamp (datetime)
- `updatedAt`: Last update timestamp (datetime)

## Full-Text Search

The package includes FTS5 virtual tables for efficient full-text search on both food databases and food items. This allows for fast searching across names and descriptions.

## License

This package is part of the BananaQuery SDK and follows the same licensing terms.
