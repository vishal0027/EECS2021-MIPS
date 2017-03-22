import java.util.*;

public class YORK
{
	public static void main(String[] args)
	{
		final int LIMIT = 6543210;
		final int DELTA = 12345;
		final int BIT1 = 16;
		final int BIT2 = 23;
		int age = Integer.parseInt(args[0]);
		
		if(age < LIMIT){
			age = age + DELTA;
			int mask = 1 << BIT1;
			age = age | mask; 
			System.out.println(age);		
		}else {
			int secMask = ~0;
			secMask = secMask << 25;;
			secMask = secMask >>> 9;
			age = age  & ~secMask;
			System.out.println(age);
		}

	}
}

