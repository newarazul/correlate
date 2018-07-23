program high

implicit none

real(8)         :: energies1(1:3)
real(8)         :: energies2(1:3)
real(8)         :: asymmetry1(1:3), asymmetry2(1:3)
real(8)         :: donor1(1:3)
real(8)         :: donor2(1:3)
character(len=3)         :: dummy

open(1,file="fred.dat")
read(1,*) dummy, energies1(1), energies2(1) 
read(1,*) dummy, energies1(2), energies2(2) 
read(1,*) dummy, energies1(3), energies2(3) 
read(1,*)
read(1,*) asymmetry1(1), asymmetry2(1)
read(1,*) asymmetry1(2), asymmetry2(2)
read(1,*) asymmetry1(3), asymmetry2(3)
close(1)
print*, energies1(1:3)

donor1(1:3)=energies1(1:3)/(2-asymmetry1(1:3))
donor2(1:3)=energies1(1:3)-donor1(1:3)

print*, donor1(1:3)
print*, donor2(1:3)

end program
