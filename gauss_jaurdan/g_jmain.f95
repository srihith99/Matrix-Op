program g_jmain
    implicit none
    real,dimension(:,:),allocatable::a
    integer::n=5
    allocate(a(n,2*n+1))
    a(1,1)=0
    a(1,2)=-1
    a(1,3)=2
    a(1,4)=-3
    a(1,5)=4
    a(1,6)=-38.5
    a(1,7)=1
    a(1,8)=0
    a(1,9)=0
    a(1,10)=0
    a(1,11)=0
    a(2,1)=2
    a(2,2)=3
    a(2,3)=-1
    a(2,4)=5
    a(2,5)=-2
    a(2,6)=32.4
    a(2,7)=0
    a(2,8)=1
    a(2,9)=0
    a(2,10)=0
    a(2,11)=0
    a(3,1)=-1
    a(3,2)=3
    a(3,3)=2
    a(3,4)=-5
    a(3,5)=1
    a(3,6)=-17.9
    a(3,7)=0
    a(3,8)=0
    a(3,9)=1
    a(3,10)=0
    a(3,11)=0
    a(4,1)=1
    a(4,2)=2
    a(4,3)=1
    a(4,4)=2
    a(4,5)=3
    a(4,6)=-13.9
    a(4,7)=0
    a(4,8)=0
    a(4,9)=0
    a(4,10)=1
    a(4,11)=0
    a(5,1)=-4
    a(5,2)=-6
    a(5,3)=-2
    a(5,4)=8
    a(5,5)=-1
    a(5,6)=4.9
    a(5,7)=0
    a(5,8)=0
    a(5,9)=0
    a(5,10)=0
    a(5,11)=1
    call simplify(a,n)
    print*,"Final answer by using gauss_jaurdan  is"    !calling a function to print matrix.
    print*,"_______________________________________________"
    call print_matrix(a,n,n+1)
end program g_jmain
