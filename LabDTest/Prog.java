import java.util.Scanner;
public class Prog
{
	private int ramp;

	public static void main(String[] args)
	{
		int n = 34;
		int x = (new Scanner(System.in)).nextInt();
		Prog ref = new Prog(x);

		if (x < n)
		{
			int tmp = ref.getScale();
			System.out.println(tmp);
		}
		else
		{
			Prog var = new Prog(n);
			int tmp = ref.toRatio(var);
			System.out.println(tmp);
		}
	}

	public Prog(int size)
	{
		this.ramp = size;
	}
	public int getScale()
	{
		return (this.ramp / 5) << 3;
	}
	public int toRatio(Prog other)
	{
		return (this.ramp * 33) / (other.ramp); 
	}
}
