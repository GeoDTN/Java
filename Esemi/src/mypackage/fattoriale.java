package mypackage;

public class fattoriale {
	
	fattoriale() {
		
	}
	int calfatt(int Num) {

        if ( Num > 1 ) {
            return ( Num * calfatt( Num - 1 ) );
        } else {
            return 1;
        }
    }
}
