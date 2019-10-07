import "dart:math";
// Challenge 1

// A number is a perfect number if is equal to sum of its proper divisors, that is, sum of its positive divisors excluding the number itself.
// Write a function to check if a given number is perfect or not.
// For example, if 15 is given as input it should print 'false' because Divisors of 15 are 1, 3 and 5. Sum of
// divisors is 9 which is not equal to 15
// if 6 is given as input it should print 'true' because Divisors of 6 are 1, 2 and 3. Sum of
// divisors is 6.



class Point {
  int x;
  int y;

  Point(int x, int y) {
    this.x = x;
    this.y = y;
  }
}

// Challenge 2
// Consider the class Point defined above
// Write a function that takes a list of Points and logs to the console the bounds of the smallest upright rectangle which encloses all the points.
// For example, given the points (-1, 0), (2, 2), (1,3) the function should print:
// Bottom-left: (-1, 0)
// Top-right: (2,3)



void main() {
  // Test the function defined above with given List of points
  List<Point> points = [Point(-1, 0), Point(2, 2), Point(1, 3)];
  rectangle(points);

  print("------------------");

  // Test the perfect number function here
  perfectNumber(15);

}

void rectangle(List<Point> p){
  List<int> x = p.map((Point pt)=>pt.x).toList();
  List<int> y = p.map((Point pt)=>pt.y).toList();

  int xmin = x.reduce(min);
  int ymin = y.reduce(min);
  int xmax = x.reduce(max);
  int ymax = y.reduce(max);

  print('Bottom - left: ($xmin , $ymin )');
  print('Top - right: ($xmax , $ymax )');
}

void perfectNumber(int number){
  int sum = 0;
  for (int i = 1; i <= number ~/2 ; i++){
    if(number % i == 0){
      sum = sum + i;
    }
  }
  if (sum == number){
    print("$number is a perfect number");
  }
  else{
    print("$number is not a perfect number");
  }
}
