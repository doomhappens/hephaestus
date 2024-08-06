#pragma ONCE

#include <map>
#include <vector>
#include <algorithm>
#include <cstring>

template <class T>
class vproxy {
private:
    std::vector<T>& v1, v2;
public:
    vproxy(std::vector<T>& ref1, std::vector<T>& ref2) : v1(ref1), v2(ref2) {}
    const T& operator[](const size_t& i) const;
    const size_t size() const;
};

template <class T>
const T& vproxy<T>::operator[](const size_t& i) const{
    return (i < v1.size()) ? v1[i] : v2[i - v1.size()];
};

template <class T>
const size_t vproxy<T>::size() const { return v1.size() + v2.size(); };