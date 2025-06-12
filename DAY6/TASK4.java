package method;

public class main extends Thread{

	public void run() {
		System.out.println("Haii thread");
		}

}

class Execute {
	public static void main(String[]args) {
	  main m =new main();
	m.run();
}
}
