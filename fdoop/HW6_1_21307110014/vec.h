#ifndef MY_VEC_HEADER
#define MY_VEC_HEADER

/*
#include <memory>
#include <stddef.h>
#include <utility>

template <typename T>
class Vec {
public:
    typedef size_t size_type;
    typedef T* iterator;
    typedef const T* const_iterator;
    typedef T value_type;
    typedef std::ptrdiff_t difference_type;
    typedef T& reference;
    typedef const T& const_reference;
    Vec() { create(); }
    explicit Vec(size_type n, const T& val = T()) { create(n, val); }
    Vec(const Vec& v) { create(v.begin(), v.end()); }
    Vec& operator=(const Vec&);
    ~Vec() { uncreate(); }
    void clear() { avail = data; }
    size_type size() const { return avail - data; }
    bool empty() const { return data == avail; }
    T& operator[](size_type i) { return data[i]; }
    const T& operator[](size_type i) const { return data[i]; }
    iterator begin() { return data; }
    const_iterator begin() const { return data; }
    iterator end() { return avail; }
    const_iterator end() const { return avail; }
    void push_back(const T& t) {
        if (avail == limit) grow();
        unchecked_append(t);
    }

private:
    std::allocator<T> alloc;
    iterator data;
    iterator avail;
    iterator limit;
    void create();
    void create(size_type, const T&);
    void create(const_iterator, const_iterator);
    void uncreate();
    void grow();
    void unchecked_append(const T&);
};

template <typename T>
Vec<T>& Vec<T>::operator=(const Vec& rhs) {
    if (&rhs != this) {
        uncreate();
        create(rhs.begin(), rhs.end());
    }
    return *this;
}

template <typename T>
void Vec<T>::create() {
    limit = avail = data = nullptr;
}

template <typename T>
void Vec<T>::create(size_type n, const T& t) {
    avail = data = alloc.allocate(n);
    limit = data + n;
    while (avail != limit) *avail++ = t;
}

template <typename T>
void Vec<T>::create(const_iterator i, const_iterator j) {
    avail = data = alloc.allocate(j - i);
    limit = data + (j - i);
    for (difference_type k = 0; k < i-j; k++) *avail++ = *(i+k);
}

template <typename T>
void Vec<T>::uncreate() {
    if (data) {
        // iterator it = avail;
        // while (it-- != data) it->~T();
        alloc.deallocate(data, limit - data);
    }
    data = avail = limit = nullptr;
}

template <typename T>
void Vec<T>::grow() {
    size_type new_size = std::max(limit - data, difference_type(1))<<1;
    iterator new_data = alloc.allocate(new_size);
    iterator new_avail = new_data;
    while (data != avail) *new_avail++ = *data++;
    uncreate();
    data = new_data;
    avail = new_avail;
    limit = data + new_size;
}

template <typename T>
void Vec<T>::unchecked_append(const T& t) {
    *avail++ = t;
}
*/

template <typename T>
class Vec {
public:
    Vec();
    Vec(int n);
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
    const int init_capacity = 8;
    void resize(int n);
};

#include <iostream>

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