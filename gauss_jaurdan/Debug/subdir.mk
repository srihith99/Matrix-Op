################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
F95_SRCS += \
../find_pivot.f95 \
../g_jmain.f95 \
../print_matrix.f95 \
../simplify.f95 

OBJS += \
./find_pivot.o \
./g_jmain.o \
./print_matrix.o \
./simplify.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.f95
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Fortran Compiler'
	gfortran -funderscoring -O0 -g -Wall -c -fmessage-length=0 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

find_pivot.o: ../find_pivot.f95

g_jmain.o: ../g_jmain.f95

print_matrix.o: ../print_matrix.f95

simplify.o: ../simplify.f95


