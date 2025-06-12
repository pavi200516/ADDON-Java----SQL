package method;
import java.io.*;
import java.util.*;

public class demo1 {
    static final String FILE = "employees.txt";

    public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        while (true) {
            System.out.println("\n1.Create 2.Read 3.Update 4.Delete 5.Exit");
            switch (sc.nextInt()) {
                case 1 -> {
                    sc.nextLine();
                    System.out.print("ID Name Dept: ");
                    String data = sc.nextLine();
                    new FileWriter(FILE, true).append(data + "\n").close();
                }
                case 2 -> new BufferedReader(new FileReader(FILE)).lines().forEach(System.out::println);
                case 3 -> {
                    sc.nextLine();
                    System.out.print("Enter ID to update: ");
                    String id = sc.nextLine();
                    List<String> lines = new ArrayList<>();
                    BufferedReader br = new BufferedReader(new FileReader(FILE));
                    String line;
                    while ((line = br.readLine()) != null)
                        lines.add(line.startsWith(id + " ") ? id + " " + sc.nextLine() : line);
                    br.close();
                    new FileWriter(FILE).write(String.join("\n", lines) + "\n");
                }
                case 4 -> {
                    sc.nextLine();
                    System.out.print("Enter ID to delete: ");
                    String id = sc.nextLine();
                    List<String> updated = new ArrayList<>();
                    BufferedReader br = new BufferedReader(new FileReader(FILE));
                    String line;
                    while ((line = br.readLine()) != null)
                        if (!line.startsWith(id + " ")) updated.add(line);
                    br.close();
                    new FileWriter(FILE).write(String.join("\n", updated) + "\n");
                }
                case 5 -> System.exit(0);
            }
        }
    }
}
