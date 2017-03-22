public class LabA7{
	public static void main(String[] args){
		String x =args[0];
		int y = Integer.parseInt(x);
		System.out.println(Integer.toBinaryString(y));
		int mask =  1 <<10;
		int secondMask = 1<< 20;
		int tenth = y << 21;
		tenth = tenth >>> 31;

		int twenty = y << 11;
		twenty = twenty >>> 31;
		if (tenth == 1){
			y = y | secondMask;
		}else {
			y = y & ~secondMask;
		}

		if (twenty ==1){
			y = y | mask;
		}else {
			y = y & ~mask;
		}
		System.out.println(Integer.toBinaryString(y));
	}
}
