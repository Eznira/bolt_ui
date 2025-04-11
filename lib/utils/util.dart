double mapRange(
  double value,
  double oldMin,
  double oldMax,
  double newMin,
  double newMax,
) {
  if (oldMin == oldMax) {
    // Handle the case where the old range has zero width to avoid division by zero
    return newMin +
        (newMax - newMin) / 2; // Return the midpoint of the new range
  }
  return (value - oldMin) * (newMax - newMin) / (oldMax - oldMin) + newMin;
}
