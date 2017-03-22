import java.util.Scanner;
public class Prog2
{
	public static void main(String[] args)
	{
		int n = (new Scanner(System.in)).nextInt();
		int k = calc(n);
		System.out.println(k);
	}	
	public static int calc(int n)
	{
		int result;
		if (n < 10)
		{
			result = n;
		}
		else
		{
			result = n + calc(n / 2);
		}
		return result;
	}
}
