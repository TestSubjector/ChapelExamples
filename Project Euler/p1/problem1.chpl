var count: int = 0;
for i in 3..999 {
    //Chapel doesn't have pre/post-increment/decrement operators [ ++,--]
    //Notice that that even single statements in 'if/else' block require braces
    if( i % 3 == 0) {
        count += i;
    } else if ( i % 5 == 0) {
        count += i;
    } else {
      ;
    }
}

writeln(count);
