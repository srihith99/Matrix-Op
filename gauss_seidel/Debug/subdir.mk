################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
F95_SRCS += \
../g_smain.f95 \
../print_matrix.f95 \
../simplify.f95 

OBJS += \
./g_smain.o \
./print_matrix.o \
./simplify.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.f95
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Fortran Compiler'
	gfortran -funderscoring -O0 -g -Wall -c -fmessage-length=0 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

g_smain.o: ../g_smain.f95

print_matrix.o: ../print_matrix.f95

simplify.o: ../simplify.f95


