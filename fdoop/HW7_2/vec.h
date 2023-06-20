#ifndef HW_VEC_H_
#define HW_VEC_H_

template <typename T>
class Vec {
  public:
    typedef T value_type;
    Vec();
    Vec(int n);
    Vec(int n, T v);
    Vec(const Vec<T>& v);
    ~Vec();
    Vec<T>& operator=(const Vec<T>& v);
    T& operator[](int i);
    const T& operator[](int i) const;
    int size() const { return sz; }
    int get_capacity() const { return capacity; }
    bool empty() const { return sz == 0; }
    void push_back(const T& v);
    void pop_back();
    void clear();
    void print() const;
    T* begin() const { return data; }
    T* end() const { return data+sz; }

  private:
    T* data;
    int sz;
    int capacity;
    static const int init_capacity;
    void resize(int n);
};

#include <iostream>

template <typename T>
const int Vec<T>::init_capacity = 8;

template <typename T>
Vec<T>::Vec() {
    capacity = init_capacity;
    sz = 0;
    data = new T[capacity];
}

template <typename T>
Vec<T>::Vec(int n) {
    capacity = 1; while (capacity < n) capacity <<= 1;
    sz = n;
    data = new T[capacity];
}

template <typename T>
Vec<T>::Vec(int n, T v) {
    capacity = 1; while (capacity < n) capacity <<= 1;
    sz = n;
    data = new T[capacity];
    for (int i = 0; i < n; i++) data[i] = v;
}

template <typename T>
Vec<T>::Vec(const Vec<T>& v) {
    capacity = v.capacity;
    sz = v.sz;
    data = new T[capacity];
    for (int i = 0; i < sz; i++) data[i] = v.data[i];
}

template <typename T>
Vec<T>::~Vec() {
    delete[] data;
}

template <typename T>
Vec<T>& Vec<T>::operator=(const Vec<T>& v) {
    if (this == &v) return *this;
    delete[] data;
    capacity = v.capacity;
    sz = v.sz;
    data = new T[capacity];
    for (int i = 0; i < sz; i++) data[i] = v.data[i];
    return *this;
}

template <typename T>
T& Vec<T>::operator[](int i) {
    return data[i];
}

template <typename T>
const T& Vec<T>::operator[](int i) const {
    return data[i];
}

template <typename T>
void Vec<T>::push_back(const T& v) {
    if (sz == capacity) resize(capacity<<1);
    data[sz++] = v;
}

template <typename T>
void Vec<T>::pop_back() {
    if (sz == 0) return;
    if (--sz < (capacity>>2)) resize(capacity>>1);
}

template <typename T>
void Vec<T>::clear() {
    sz = 0;
}

template <typename T>
void Vec<T>::print() const {
    for (int i = 0; i < sz; i++) std::cout << data[i] << ' ';
    std::cout << std::endl;
}

template <typename T>
void Vec<T>::resize(int n) {
    if (n < sz) return;
    capacity = n;
    T* new_data = new T[capacity];
    for (int i = 0; i < sz; i++) new_data[i] = data[i];
    delete[] data;
    data = new_data;
}

#endif