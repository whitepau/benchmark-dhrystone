# benchmark-dhrystone
"DHRYSTONE" Benchmark Program by  Reinhold P. Weicker


To compile for x86-64:

```
mkdir build_x86-64
cd build_x86-64
cmake ..
make
./dhrystone.elf
```

To compile for ARM:

```
mkdir build_arm
cd build_arm
CC=<path/to/aarchXXXX-gcc> cmake ..
make
```

Interestingly, the same binary works on K26 SOM and Agilex 5 E-series HPS
