/* This program uses Chapel's data parallel features to solve Project Euler
   Problem 1 utilizing multiple cores on a single `locale` (compute node).
 */


var count: int = 0;

// Outer variables are constant in forall loop, hence we have to use reduce intent
forall i in 3..999 with ( + reduce count){

    //Chapel doesn't have pre/post-increment/decrement operators [ ++,--]
    //Also notice that even single statements in 'if/else' block require braces in Chapel
    if( i % 3 == 0) {
        count += i;
    } else if ( i % 5 == 0) {
        count += i;
    } else {
      ;
    }
}

writeln(count);
