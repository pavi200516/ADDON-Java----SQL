package programs;
public class multidimensionalarray{
public static void main(String[] args) {
int[][] numbers={{15,35,65},{60,80,95}};
for(int i=0;i<2;i++) {
for(int j=0;j<2;j++) {
System.out.print(numbers[i][j]+"     ");
}
System.out.println();
}
}
}
