
import java.util.Scanner;
public class Prog3
{
	private int factor;
	private byte code;
	
	public Prog3(int f, byte b)
	{
		this.factor = f;
		this.code = b;
	}
	public int compute()
	{
		int result = this.factor * this.code;
		return result;
	}
	public static void main(String[] args)
	{
		int f = (new Scanner(System.in)).nextInt();
		int t = (new Scanner(System.in)).nextInt();
		byte b = (byte) t;
		Prog3 ref = new Prog3(f, b);
		System.out.println(ref.compute());
	}
}
