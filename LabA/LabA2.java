
public class LabA2{

	public static void main(String[] args){

		String x =args[0];
		int y = Integer.parseInt(x);
		System.out.println("0x"+Integer.toHexString(y));
		System.out.println("0x"+Integer.toHexString(Integer.reverse(y)));
		System.out.println("0x"+ Integer.toHexString(Integer.reverseBytes(y)));
	}
}
