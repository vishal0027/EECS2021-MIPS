public class LabA6{
	public static void main(String[] args){
		String x =args[0];
		int y = Integer.parseInt(x);
		int mask = 1<<10;
		y = y | mask;
		System.out.println(Integer.toBinaryString(y));
		int secondMask = 1 << 11;
		secondMask = ~ secondMask;
		y = y & secondMask;
		System.out.println(Integer.toBinaryString(y));
	}
}
