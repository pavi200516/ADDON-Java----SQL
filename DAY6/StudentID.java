package maintask;
import java.util.*;
import java.io.*;

public class Day6task1 {
    static ArrayList<String> names = new ArrayList<>(List.of("Narmatha", "Shree"));
    static HashMap<Integer, List<String>> courses = new HashMap<>();
    static int id = 1003; // Start from 1003 as two students are pre-added

    public static void main(String[] args) {
        
        courses.put(1001, List.of("Java", "HTML"));
        courses.put(1002, List.of("Python", "CSS"));

        Scanner sc = new Scanner(System.in);
        while (true) {
            System.out.print("\n1.Add  2.Search  3.Delete  4.View  5.Save  0.Exit: ");
            int ch = sc.nextInt(); sc.nextLine();
            if (ch == 0) break;

            switch (ch) {
                case 1 -> {
                    System.out.print("Enter name: ");
                    String name = sc.nextLine();
                    names.add(name);
                    System.out.print("No. of courses: ");
                    int n = sc.nextInt(); sc.nextLine();
                    List<String> c = new ArrayList<>();
                    for (int i = 0; i < n; i++) {
                        System.out.print("Course " + (i + 1) + ": ");
                        c.add(sc.nextLine());
                    }
                    courses.put(id++, c);
                    System.out.println("Student added.");
                }

                case 2 -> {
                    System.out.print("Enter name to search: ");
                    String s = sc.nextLine();
                    boolean found = false;
                    for (var e : courses.entrySet()) {
                        String name = names.get(e.getKey() - 1001);
                        if (name != null && name.equalsIgnoreCase(s)) {
                            System.out.println("ID: " + e.getKey() + ", Courses: " + e.getValue());
                            found = true;
                        }
                    }
                    if (!found) System.out.println("Student not found.");
                }

                case 3 -> {
                    System.out.print("Enter name to delete: ");
                    String d = sc.nextLine();
                    boolean deleted = false;
                    Iterator<Map.Entry<Integer, List<String>>> it = courses.entrySet().iterator();
                    while (it.hasNext()) {
                        var e = it.next();
                        int idx = e.getKey() - 1001;
                        if (names.get(idx) != null && names.get(idx).equalsIgnoreCase(d)) {
                            names.set(idx, null);
                            it.remove();
                            System.out.println("Deleted.");
                            deleted = true;
                            break;
                        }
                    }
                    if (!deleted) System.out.println("Student not found.");
                }

                case 4 -> {
                    System.out.println("\n--- All Students ---");
                    for (var e : courses.entrySet()) {
                        String name = names.get(e.getKey() - 1001);
                        if (name != null)
                            System.out.println("ID: " + e.getKey() + ", Name: " + name + ", Courses: " + e.getValue());
                    }
                }

                case 5 -> {
                    try (PrintWriter pw = new PrintWriter("StudentList.txt")) {
                        for (var e : courses.entrySet()) {
                            String name = names.get(e.getKey() - 1001);
                            if (name != null)
                                pw.println("ID: " + e.getKey() + ", Name: " + name + ", Courses: " + e.getValue());
                        }
                        System.out.println("Saved to StudentList.txt");
                    } catch (IOException e) {
                        System.out.println("Error writing to file.");
                    }
                }

                default -> System.out.println("Invalid choice.");
            }
        }
        sc.close();
    }
}
