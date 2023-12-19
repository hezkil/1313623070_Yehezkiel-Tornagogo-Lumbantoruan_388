module io;
import std.stdio;
import std.container;
import std.typecons;

int[] parse_input(string path){
    File file = File(path, "r");
    int ncase;
    file.readf!"%d\n"(ncase);
    //writefln("%d", ncase);
    int[] data = new int[ncase];
    //Array!int data;
    int v;
    for(int i=0; i< ncase;i++){
        file.readf!"%d "(v);
        data[i]=v;
    }
    return data;
}
