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

Results (one test):

| Processor                         | Microseconds per Dhrystone | Dhrystones per second
|-----------------------------------|----------------------------|-----------------------
| Intel(R) Core(TM) Ultra 9 285K    | 199.6                      | 5009.7
| Simics (above CPU)                | 9294.7                     | 107.6
| Agilex 5 E-series Premium Devkit  | 3462.8                     | 288.8
| Qemu (AMD)                        | xxxx                       | xxxx
| K26 SOM (KV260)                   | 2349.6                     | 425.6

Interestingly, the same binary works on K26 SOM and Agilex 5 E-series HPS
