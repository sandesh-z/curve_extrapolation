class Utils {
/*To center the child vertically,
the dy value should shift it upwards by half of its own height
and half of the available space in the parent container.
This can be expressed as:
dy = -(childHeight / 2.0) + (parentHeight / 2.0)

And we need to reverse this process we do:
dy = -(-(childHeight / 2.0) + (parentHeight / 2.0)) = (childHeight / 2.0) - (parentHeight / 2.0)*/

  static double centerOffsetToAbsolutePosition(
    double offsetValue,
    double parentHeight,
    double childHeight,
  ) {
    double dy = (childHeight / 2.0) - (parentHeight / 2.0);

    return offsetValue + dy;
  }
}
