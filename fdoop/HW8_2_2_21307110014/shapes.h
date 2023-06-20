#ifndef SHAPES_H_
#define SHAPES_H_

#include <iostream>
#include <vector>
#include <stdexcept>

class Shape {
  public:
    virtual ~Shape() {}
    const std::vector<double> get_ls() const { return ls; }
    virtual double area() const = 0;
    virtual double perimeter() const = 0;
    virtual Shape* clone() = 0;
    static bool compare(const Shape& a, const Shape& b) { return a.area() < b.area(); }
  protected:
    friend class Handle;
    std::vector<double> ls;
    virtual bool check() = 0;
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
    }
    double area() const;
    double perimeter() const;
    Triangle* clone() { return new Triangle(*this); }
  private:
    bool check() {
        if (ls.size() != 3 || !(ls[0]+ls[1]>ls[2] && ls[0]+ls[2]>ls[1] && ls[1]+ls[2]>ls[0])) {
            print();
            std::cout << "can't make a triangle.\n";
            return false;
        }
        return true;
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
    }
    double area() const;
    double perimeter() const;
    Rectangle* clone() { return new Rectangle(*this); }
  private:
    bool check() {
        if (ls.size() != 2) {
            print();
            std::cout << "can't make a rectangle.\n";
            return false;
        }
        return true;
    }
};

class Circle: public Shape {
  public:
    Circle(std::istream& is) {
        double l;
        is >> l;
        ls.push_back(l);
    }
    double area() const;
    double perimeter() const;
    Circle* clone() { return new Circle(*this); }
  private:
    static const double pi;
    bool check() {
        if (ls.size() != 1) {
            print();
            std::cout << "can't make a circle.\n";
            return false;
        }
        return true;
    }
};

#endif