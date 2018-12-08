program l_umain
    implicit none
    real,dimension(:,:),allocatable::a,L
    real,dimension(:),allocatable::b,k
    integer::n=5
    allocate(a(n,n))
    allocate(b(n))
    allocate(L(n,n))
    allocate(k(n))
    a(1,1)=0
    a(1,2)=-1
    a(1,3)=2
    a(1,4)=-3
    a(1,5)=4
    b(1)=-38.5
    a(2,1)=2
    a(2,2)=3
    a(2,3)=-1
    a(2,4)=5
    a(2,5)=-2
    b(2)=32.4
    a(3,1)=-1
    a(3,2)=3
    a(3,3)=2
    a(3,4)=-5
    a(3,5)=1
    b(3)=-17.9
    a(4,1)=1
    a(4,2)=2
    a(4,3)=1
    a(4,4)=2
    a(4,5)=3
    b(4)=-13.9
    a(5,1)=-4
    a(5,2)=-6
    a(5,3)=-2
    a(5,4)=8
    a(5,5)=-1
    b(5)=4.9
    call simplify(a,b,n,L,k)
    print*,"Final answer in l_u decomposition is"
    print*,"_____________________________________"
    call print_matrix(k,n,1)    !calling a function to print matrix.
end program l_umain
