public class LabA5{
	public static void main(String[] args){
		String x =args[0];
		int y = Integer.parseInt(x);
		int a = y;
		int k = y;
		int z = y<<21; // MSB
		System.out.println(Integer.toBinaryString(z));
		k = y>>>31; //LSB
		System.out.println(Integer.toBinaryString(k));
		int mask = 1024;
		int b = a & mask;
		b = b >> 10;
		System.out.println(Integer.toBinaryString(y));
	}
}
