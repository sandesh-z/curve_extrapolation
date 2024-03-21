# Bloc demo

A project to demonstrate curve extrapolation.

## Getting Started

### Prerequisites

- Flutter SDK version 3.19.1


### Installation

1. Clone the repository.
2. Run `flutter pub get` to install dependencies.
3. Run `flutter run` to start the application.

### Code generation 
1. Make sure you have all the dependecies required for this project, see 'pubspec.yaml'
2. Run `dart run build_runner build` to generate all code related to this project

## Features

- User can draw 5 points at tapped location of screen within frame.
- Curve is automatically generated with those 5 points
- user can drag points and curve dynamically changes
- last point is clipped

## Clipping of last point
I did follow some unconventional way while trying to clip last point.
    Step 1: Added [startpoint] and [endpoint] offset where [endpoint] offset is center of last ball 
            and [startpoint] offset is center of 2nd last ball.
    Step 2: Drew straight line from [startpoint] to [endpoint] say: AB, 
            and made its color transparent (invisible)
    step 3: Drew another line say:CD perpendicular to AB. AB_|_CD
    step 4: Drew semicircle with the base CD, and made its fill color same as background    

## Dependencies

- see pubspec.yaml file for all required dependencies.

### Github Url 
https://github.com/sandesh-z/curve_extrapolation.git