#ifndef SHAPES_H_
#define SHAPES_H_

#include <iostream>
#include <vector>
#include <stdexcept>

class Shape {
  public:
    virtual ~Shape() {}
    virtual double area() const = 0;
    virtual double perimeter() const = 0;
    static bool compare(const Shape& a, const Shape& b) { return a.area() < b.area(); }
  protected:
    std::vector<double> ls;
    virtual void check() = 0;
    const void print() const {
        for (int i = 0; i < ls.size(); i++) std::cout << ls[i] << ", "[i == ls.size()-1];
    }
};

class Triangle: public Shape {
  public:
    Triangle(std::istream& is) {
        for (int i = 0; i < 3; i++) {
            double l;
            is >> l;
            ls.push_back(l);
        }
        check();
    }
    double area() const;
    double perimeter() const;
  private:
    void check() {
        if (ls.size() != 3 || !(ls[0]+ls[1]>ls[2] && ls[0]+ls[2]>ls[1] && ls[1]+ls[2]>ls[0])) {
            print();
            throw std::invalid_argument("can't make a triangle.");
        }
    }
};

class Rectangle: public Shape {
  public:
    Rectangle(std::istream& is) {
        for (int i = 0; i < 2; i++) {
            double l;
            is >> l;
            ls.push_back(l);
        }
        check();
    }
    double area() const;
    double perimeter() const;
  private:
    void check() {
        if (ls.size() != 2) {
            print();
            throw std::invalid_argument("can't make a rectangle.");
        }
    }
};

class Circle: public Shape {
  public:
    Circle(std::istream& is) {
        double l;
        is >> l;
        ls.push_back(l);
        check();
    }
    double area() const;
    double perimeter() const;
  private:
    static const double pi;
    void check() {
        if (ls.size() != 1) {
            print();
            throw std::invalid_argument("can't make a circle.");
        }
    }
};

bool compare_shape_ptrs(const Shape*, const Shape*);

#endif