public class LabA4{

	public static void main(String[] args){
		String x = args[0];
		int y = Integer.parseInt(x);
		System.out.println(Integer.toBinaryString(y));
		int z = y << 1;
		System.out.println("Case One: when x<<1 \n");
		System.out.println(Integer.toBinaryString(z));
		System.out.println("Case Two: when x>>>1 \n");
		z = y >>> 1;
		System.out.println(Integer.toBinaryString(z));
		System.out.println("Case Three: When x>>1 \n");
		z = y >> 1;
		System.out.println(Integer.toBinaryString(z));
		System.out.println("=======================================");
		int k = y << 2;
                System.out.println("Case One: when x<<2 \n");
                System.out.println(Integer.toBinaryString(k));
                System.out.println("Case Two: when x>>>2 \n");
                k = y >>> 2;
                System.out.println(Integer.toBinaryString(k));
                System.out.println("Case Three: When x>>2 \n");
                k = y >> 2;
                System.out.println(Integer.toBinaryString(k));
                System.out.println("=======================================");
	}
}
