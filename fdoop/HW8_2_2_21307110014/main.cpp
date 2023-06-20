#include "handle.h"
#include <fstream>
#include <algorithm>


void readinfo(std::ifstream& fin, std::vector<Handle> shapes) {
    Handle shape;
    while (shape.read(fin)) {
        if (shape.check()) {
            // std::cout << "a\n";
            shapes.push_back(shape);
        }
    }
    fin.close();
}

void cal_output(const std::vector<Handle>& shapes) {
    std::cout << '\n';

    int prec = std::cout.precision();
    std::cout << "Area" << '\t' << "Perimeter\n" << std::setprecision(3);
    for (int i = 0; i < shapes.size(); i++)
        std::cout << shapes[i].area() << '\t' << shapes[i].perimeter() << '\n';
    std::cout << std::setprecision(prec);

    std::ofstream fout("result.csv");
    prec = fout.precision();
    fout << "Area" << ',' << "Perimeter\n" << std::setprecision(3);
    for (int i = 0; i < shapes.size(); i++)
        std::cout << shapes[i].area() << ',' << shapes[i].perimeter() << '\n';
    fout << std::setprecision(prec);
    fout.close();
}

int main() {
    std::vector<Handle> shapes;
    std::ifstream infile("shapes");
    readinfo(infile, shapes);
    std::sort(shapes.begin(), shapes.end(), compare);
    // std::cout << shapes.size() << '\n';
    cal_output(shapes);
    
    return 0;
}