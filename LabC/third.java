import java.util.Scanner;

public class Third
{
	public static void main(String[] args)
	{
		int x = (new Scanner(System.in)).nextInt();
		if (x >= 500)
		{
			int tmp = div4(x);
			System.out.println(tmp);
		}
		else
		{
			int tmp = gcd(x, 350);
			System.out.println(tmp);
		}
	}

	public static int div4(int p)
	{
		int result = 0; // v0 = 0
		if ((p & 3) == 0)  // andi t0, a0, 3; beq t0, 0, skip 
		{
			result = 1; // v0 = 1
		}
		return result;  // jr $ra
	}

	public static int gcd(int number1, int number2) 
	{
		int result;
		if (number2 == 0) 
		{
			result = number1;
		}
		else
		{
			result = gcd(number2, number1 % number2);
		}
		return result;
	}
}

