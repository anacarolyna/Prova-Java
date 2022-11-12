package ProvaJava;

public class Multiplos {
	public static void main(String[]args){
		
		for(int i=1; i<=100; i ++){
			if (i % 3 ==0){
				System.out.println("Foo");
			}
			else if (i % 5 ==0){
					System.out.println("Baa");
			}
			else (i % 3 ==0 && i % 5 ==0){
					System.out.println("FooBaa");
			}
				
		}
	}

}
