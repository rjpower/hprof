public class Test {
  Integer value;
  public Test() {
    value = new Integer(new Random().random:
  }
  public static void main(String[] args) {
    long result = 0;
    for (int i = 0; i < 1000000000; ++i) {
      result += new Integer(i).intValue();
    }
    System.out.println(result);
    return;
  }
}
