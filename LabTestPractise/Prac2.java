import java.util.Scanner;
public class Prac2{
		public static void main(String[] args){
				int n = 55;
				int x = (new Scanner(System.in)).nextInt();
				if (x < 0){
					int tmp = compute(x, n);
					System.out.println(tmp);
				}else{
					int tmp = rom(x);
					System.out.println(tmp);
				}
		}

		public static int compute(int a, int b){
			int result = (-b) -( a % b);
			return result;
		}

		public static int rom(int a){
			int result;
			if (a <= 1){
				result = a;
			}else{
				result = a * rom(a - 1);
			}
			return result;
		}
}
