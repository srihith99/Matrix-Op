################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
F95_SRCS += \
../find_pivot.f95 \
../l_umain.f95 \
../print_matrix.f95 \
../simplify.f95 \
../substitution.f95 

OBJS += \
./find_pivot.o \
./l_umain.o \
./print_matrix.o \
./simplify.o \
./substitution.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.f95
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Fortran Compiler'
	gfortran -funderscoring -O0 -g -Wall -c -fmessage-length=0 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

find_pivot.o: ../find_pivot.f95

l_umain.o: ../l_umain.f95

print_matrix.o: ../print_matrix.f95

simplify.o: ../simplify.f95

substitution.o: ../substitution.f95


