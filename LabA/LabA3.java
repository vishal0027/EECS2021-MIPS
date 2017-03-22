public class LabA3{
	public static void main(String[] args){	
		String cx =args[0];
		String cy =args[1];
		int x = Integer.parseInt(cx);
		int y = Integer.parseInt(cy);
		int z = x & y; // and
		System.out.println("And Operation \n");
		System.out.println("x : "+Integer.toBinaryString(x));
		System.out.println("y : "+Integer.toBinaryString(y));
		System.out.println("z : "+Integer.toBinaryString(z));
		System.out.println();
		z = x | y;
		System.out.println("Or Operation \n");
                System.out.println("x : "+Integer.toBinaryString(x));
                System.out.println("y : "+Integer.toBinaryString(y));
                System.out.println("z : "+Integer.toBinaryString(z));
		System.out.println();

		z = x ^ y;
		System.out.println("Xor Operation \n");
                System.out.println("x : "+Integer.toBinaryString(x));
                System.out.println("y : "+Integer.toBinaryString(y));
                System.out.println("z : "+Integer.toBinaryString(z));
		System.out.println();
		z = ~x;
                System.out.println("Not Operation \n");
                System.out.println("x : "+Integer.toBinaryString(x));
                System.out.println("y : "+Integer.toBinaryString(y));
                System.out.println("z : "+Integer.toBinaryString(z));

	}
}
