# ConfigurableCoreDataStacks

[![CI Status](http://img.shields.io/travis/MartinJNash/ConfigurableCoreDataStacks.svg?style=flat)](https://travis-ci.org/MartinJNash/ConfigurableCoreDataStacks)
[![Version](https://img.shields.io/cocoapods/v/ConfigurableCoreDataStacks.svg?style=flat)](http://cocoadocs.org/docsets/ConfigurableCoreDataStacks)
[![License](https://img.shields.io/cocoapods/l/ConfigurableCoreDataStacks.svg?style=flat)](http://cocoadocs.org/docsets/ConfigurableCoreDataStacks)
[![Platform](https://img.shields.io/cocoapods/p/ConfigurableCoreDataStacks.svg?style=flat)](http://cocoadocs.org/docsets/ConfigurableCoreDataStacks)

## Usage

### Configurable Stack

[ConfigurableCoreDataStack.m](ConfigurableCoreDataStack.m) is a flexible class that allows you to create a core data stack based on a `CoreDataStackConfiguration` object. This allows you to easily create core data stacks to suit your needs.

```objc
// create configuration object
CoreDataStackConfiguration *config = [CoreDataStackConfiguration new];
config.dataFileNameWithExtension = @"MyDataFile.sqlite";
config.storeType = NSInMemoryStoreType;
config.modelName = @"JustANote";
config.appIdentifier = @"com.martinjnash.example.CoreDataNotes";
config.searchPathDirectory = NSApplicationSupportDirectory;

// init stack with configuration object
ConfigurableCoreDataStack *stack = [[ConfigurableCoreDataStack alloc] initWithConfiguration:config];
NSManagedObjectContext *context = stack.managedObjectContext;
```


## Requirements

## Installation

ConfigurableCoreDataStacks is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "ConfigurableCoreDataStacks"

## Author

Martin Nash

## License

ConfigurableCoreDataStacks is available under the MIT license. See the LICENSE file for more info.

