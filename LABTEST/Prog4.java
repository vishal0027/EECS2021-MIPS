import java.util.Scanner;
public class Prog4
{
	public static void main(String[] args)
	{
		int n = (new Scanner(System.in)).nextInt();
		System.out.println(sign(n));
	}
	public static String sign(int n)
	{
		String result = "-";
		if (n >= 0)
		{
			result = "+";
		}
		return result;
	}
}
