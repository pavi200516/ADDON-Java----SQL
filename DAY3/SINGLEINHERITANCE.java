class singlelevel{
   void message(){
       System.out.println("Myself..");
   } 
}
class subclass extends singlelevel{
    void view(){
        System.out.println("Yorself..");
    }
}
class Main {
    public static void main(String[] args) {
        subclass s=new subclass();
        s.message();
        s.view();
    }
}
