import java.util.Scanner;
public class Prog1
{
	public static void main(String[] args)
	{
		int n = (new Scanner(System.in)).nextInt();
		n = (n << 2) | 3;
		int count = 0;
		for (int i = 0; i < n; i++)
		{
			count = count + i * i;
		}
		System.out.println(count);
	}
}
