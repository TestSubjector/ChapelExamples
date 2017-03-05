var count = 0: int;
var current = 1: int(32) ;
var next = 2: int(32) ;
var step = 0: int ;
//var compare: int(32)  = 4000000;

do {
    if(step % 3 == 0) {
      count += next;
    }
    step += 1;
    current += next;
    next <=> current;  //Swap(<=>) operator makes (a,b) into (b,a)
}while (next <= 4000000);

writeln(count);
