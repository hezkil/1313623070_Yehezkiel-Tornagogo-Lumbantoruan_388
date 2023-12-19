import std.stdio;
import std.container;
import std.array;
import std.typecons;
import std.random;
import std.algorithm;
import std.conv;
import std.range;

Array!uint generateFibonac(int limit){
    Array!uint fib = Array!uint(0, 1, 2); 
    while(fib[$-1] < limit)
        fib.insert(fib[$-1] + fib[$-2]);
    return fib;
}

void randomFibonac(Array!uint fibonac){
    for (int i = 1; i < fibonac.length; i++) {
        auto j = uniform(0, (fibonac.length)-1); 
        auto temp = fibonac[j];
        fibonac[j] = fibonac[i];
        fibonac[i] = temp;
    }
}

void main(){
    Array!(Array!uint) ranNum;
    Array!uint fibonac = generateFibonac(55);
    int k = 100; 
    for(int i; i < k; i++){
        auto temp = fibonac.dup;
        randomFibonac(temp);
        ranNum.insert(temp);
    }
    foreach(i; ranNum)
        writeln(i[]);
}
