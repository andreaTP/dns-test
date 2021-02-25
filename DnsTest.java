import java.net.InetSocketAddress;

public class DnsTest {
  public static void main(String[] args) throws InterruptedException {
    System.out.println("Starting");
    while (true) {
      String hostname = args[0];
      int port = Integer.parseInt(args[1]);

      InetSocketAddress address = new InetSocketAddress(hostname, port);

      if (address.isUnresolved()) {
        System.err.println("Address unresolved!");
      } else {
        System.out.println(address.getAddress());
      }

      Thread.sleep(200);
    }
  }
}
