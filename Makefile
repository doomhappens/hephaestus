build:
	g++-11 -std=c++17  -fopenmp main.cpp --include athena/*.cpp hephaestus/*.cpp -o para4 -fpermissive
examples:
	cd examples
	g++-11 -std=c++17  -fopenmp example_mve.cpp --include ../athena/*.cpp ../hephaestus/*.cpp -o mve.out -fpermissive
	g++-11 -std=c++17  -fopenmp example_bigcomplexs.cpp --include ../athena/*.cpp ../hephaestus/*.cpp -o bigcomplex.out  -fpermissive
	g++-11 -std=c++17  -fopenmp example_bign_simultaneity.cpp --include ../athena/*.cpp ../hephaestus/*.cpp -o bign_simultaneity.out  -fpermissive
	g++-11 -std=c++17  -fopenmp example_bignumbers.cpp --include ../athena/*.cpp ../hephaestus/*.cpp -o bignumbers.out  -fpermissive
	g++-11 -std=c++17  -fopenmp example_einsteinnotation.cpp --include ../athena/*.cpp ../hephaestus/*.cpp -o einsteinnotation.out  -fpermissive
	g++-11 -std=c++17  -fopenmp example_athena.cpp --include ../athena/*.cpp ../hephaestus/*.cpp -o athena.out  -fpermissive
	g++-11 -std=c++17  -fopenmp example_symintegration.cpp --include ../athena/*.cpp ../hephaestus/*.cpp -o symintegration.out  -fpermissive
	g++-11 -std=c++17  -fopenmp example_tensors.cpp --include ../athena/*.cpp ../hephaestus/*.cpp -o tensors.out  -fpermissive
clean:
	rm a.out