import 'dart:math';
import 'package:image/image.dart' as img;

double getX_normalize(double x)
{
  return -1.0 + (x / 360.0).toDouble();
}

double getY_normalize(double y)
{
  return -1.0 + (y / 240.0).toDouble();
}

double getX_circlize(double x, double y)
{
  return x * sqrt(1 - ((y * y) / 2.0));
}

double getY_circlize(double x, double y)
{
  return y * sqrt(1 - ((x * x) / 2.0));
}

int getX_expanded(double x)
{
  return (240 * (x + 1)).round();
}

int getY_expanded(double y)
{
  return (240 * (y + 1)).round();
}

int mapX(int x, int y)
{
  double xx, yy;
  yy = getY_normalize(y + .0);
  xx = getX_normalize(x + .0);

  xx = getX_circlize(xx, yy);

  return getX_expanded(xx);
  //return xx;
}

int mapY(int x, int y)
{
  double xx, yy;
  yy = getY_normalize(y + .0);
  xx = getX_normalize(x + .0);

  yy = getY_circlize(xx, yy);

  return getY_expanded(yy);

  //return yy;
}

