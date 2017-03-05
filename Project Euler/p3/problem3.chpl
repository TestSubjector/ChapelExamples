var target: int(64) = 600851475143;
var lprime: int(64) = 0;
var I = 1;

while(I <= target) {
    I += 2;
    if( target % I == 0){
        target = target / I;
        lprime = I;
    }
}
writeln(I);
