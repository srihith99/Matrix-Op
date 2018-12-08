################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
F95_SRCS += \
../back_substitution.f95 \
../elimination.f95 \
../find_pivot.f95 \
../g_emain.f95 \
../print_matrix.f95 

OBJS += \
./back_substitution.o \
./elimination.o \
./find_pivot.o \
./g_emain.o \
./print_matrix.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.f95
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Fortran Compiler'
	gfortran -funderscoring -O0 -g -Wall -c -fmessage-length=0 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

back_substitution.o: ../back_substitution.f95

elimination.o: ../elimination.f95

find_pivot.o: ../find_pivot.f95

g_emain.o: ../g_emain.f95

print_matrix.o: ../print_matrix.f95


