
#include "../hephaestus/hephaestus.cpp"
#include "../hephaestus/Heph_Utils.h"
/**
 * Use
    #include "hephaestus.cpp"
    #include "Heph_Utils.h"
 * if you work in the same folder
*/

USE_HEPHAESTUS_CPP
using namespace std;

int main() {
   mve a = mve("x^2 + e^x+73+pi-(23*7) + 7*x/3");
   string s = mvef::dfdx_string(a, "x");
   LOG s ALSO "\n";
   mve deriv = mve(s);
   LOG mvef::latex(deriv) ALSO "\n";
   LOG mvef::plain(deriv) ALSO "\n";

   LOG mvef::solvefunction(a, {"x", "e", "pi"}, {1, CONSTANT_E, CONSTANT_PI});
   // TODO: use athena to do solution solving
   return 0;
}

   