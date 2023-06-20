#include "shapes.h"
#include <fstream>
#include <algorithm>

void cal_output(std::ostream& os, const std::vector<Shape*>& shapes, char d) {
    int prec = os.precision();
    os << "Area" << d << "Perimeter\n" << std::setprecision(3);
    for (int i = 0; i < shapes.size(); i++)
        os << shapes[i]->area() << d << shapes[i]->perimeter() << '\n';
    os << std::setprecision(prec);
}

int main() {
    std::ifstream fin("./shapes");
    std::vector<Shape*> shapes;
    char type;
    Shape* shape;

    while (fin >> type) {
        try {
            if (type == 'T') shape = new Triangle(fin);
            else if (type == 'R') shape = new Rectangle(fin);
            else if (type == 'C') shape = new Circle(fin);
            shapes.push_back(shape);
        } catch (std::invalid_argument& e) {
            std::cout << e.what() << std::endl;
        }
    }
    std::sort(shapes.begin(), shapes.end(), compare_shape_ptrs);

    std::cout << '\n';
    cal_output(std::cout, shapes, '\t');
    std::ofstream fout("./result.csv");
    cal_output(fout, shapes, ',');
    
    fin.close();
    fout.close();
    return 0;
}