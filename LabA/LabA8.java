public class LabA8{
	public static void main(String[] args){
		String x =args[0];
		int y = Integer.parseInt(x);
		System.out.println(Integer.toBinaryString(y));
		y = ~y +1;
		System.out.println(Integer.toBinaryString(y));
		System.out.println(y);
	}
}
