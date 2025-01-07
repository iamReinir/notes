# CODE CONVENTIONS

First, **When in Rome, do as the Romans**. Follow the conventions of whatever codebase you are working on.

Second, **Be consistent**, whatever convention you choose, adhere to it for the entirety of the project

Third, **Readability and maintainability is prioritized**, these are guidelines, not rules.

If anything is missing, following these:

## Table of content

1. [Naming conventions](#naming-conventions)
2. [Format](#format)
   - [General](#general)
   - [On line breaking](#on-line-breaking)
   - [Ordering](#declaration-ordering-in-a-file)

## Naming conventions

| Element              | Convention          | Examples                 |
| -------------------- | ------------------- | ------------------------ |
| Macros, Gotos labels | ALLCAPS_UNDERSCORED | CLEAN_UP, END_OF_PROGRAM |
| Types/namespaces     | PascalCase          |                          |
| Methods/functions    | Snake_case          |                          |
| objects/variables    | camelCase           |                          |
| Constants            | camelCase           |                          |

## Format

4-spaces K&R

### General

0. Use monospace fonts
1. Each indentation is 4 spaces (not tab)
2. Each nested block of code should be indent **once**.
3. K&R braket style should be used
4. Use spaces to seperate code and symbols
5. Consider breaking a long line after reaching 60 characters, at anywhere logical

   ```C#
     // No
     x=3+4*2+7;
     grossRate[census[groupId].gender][census[groupId].ageGroup]
     ReadEmployeeData(maxEmps,empData,inputFile,empCount,inputError);

     // Yes
     x = 3 + (4 * 2) + 7;
     grossRate[ census[ groupId ].gender ][ census[ groupId ].ageGroup ]
     ReadEmployeeData( maxEmps, empData, inputFile, empCount, inputError );
   ```

   ```C#
   int Calculate( int x , int[] array ) {
     int res = 0;
     for( int i = 0 ; i <= x ; ++i )
       res += array[ i ];
     return res;
   }
   ```

### On line breaking

Keep the operators in the begining of a line.

1. Complex conditional

   ```C#
   while(( pathName[ startPath + position ] != ';' )
     && (( startPath + position ) <= pathName.length() ))

   if( pathName[ startPath + position ] != ';'
     && ( startPath + position ) <= pathName.length() )
   ```

2. Long calculation

   ```C#
   totalBill = totalBill
     + customerPurchases[ customerID ]
     + SalesTax( customerPurchases[ customerID ] );

   customerBill = PreviousBalance( paymentHistory[ customerID ] )
     + LateCharge( paymentHistory[ customerID ] );
   ```

3. Multiples arguments in a function call

   ```C#
   SetFontAttributes(
     faceName[ fontId ],
     size[ fontId ],
     bold[ fontId ],
     italic[ fontId ],
     syntheticAttribute[ fontId ].underline,
     syntheticAttribute[ fontId ].strikeout
   );
   ```

### Declaration ordering in a file

Class implementations are generally laid out in this order:

1. Dependencies, Header Comments, Namespace and Class declaration
2. **Data Members**: Private, Protected, Public
3. **Constructors and Destructors/Finalizers**
4. **Function Members**.
5. (Static) Constants.
6. Static Data Members.
7. Static Function Members.
8. (Static) Datatype defintions.

## Increase code quality

### When Using variables

1. Check inputs/parameters for validity
2. Declare variables close to where they're first used
3. Check for unused variable
4. Initialize the variables as they're declared if possible.
5. Initialize the variables close to where they're first used, if 3 is inapplicable
6. Initialize and reinitialize counters and accumulators.
7. Turn on all possible warning, and address them all.
8. Careful with implicit declarations/conversions.

### Actions, Calculations and Data

1. Minimize state, make objects' scopes small

   > Stateful code increase the mental burden of programmers significantly, which easily lead to bugs

2. Flavor Calculations over Actions

   > Calculations (Pure functions) are stateless and therefore easier to test.

### SOLID

1. **Single Responsibily**
   > Each module should only have one reason for change - one responsibility
2. **Open - Close Principle**
   > A module should be Open to extensions - easily add more, but Close to modifications - cannot change the module itself.
3. **Liskov Substitution Principle**
   > An object of a type can be subtitute by an object of a equivalent (maybe inherited) subtype.
4. **Inteface Segregation**
   > Segregate the interface. A client should never be forced to implement an interface that it doesn’t use
5. **Dependency Inversion**
   > The high-level module must not depend on the low-level module, but they should depend on abstractions (interfaces).
