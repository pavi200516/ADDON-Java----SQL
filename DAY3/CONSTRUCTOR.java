public class defcons{
    String name;
    int year;
    String language;
    //original constructor
    defcons(String name,int year,String language){
       this.name=name;
       this.year=year;
       this.language=language;
       
    }
    //copy constructor
    defcons(defcons copy){
        this.name=copy.name;
       this.year=copy.year;
       this.language=copy.language;
    }
    void Display(){
        System.out.println("nee pota output correctuuhh!!!"+name+" "+year+" "+language);
    }
    public static void main(String args[]){
        System.out.println("original constructor");
        defcons a=new defcons("pavithra",2025,"java");
        a.Display();
        System.out.println("copy constructor");
        defcons a1=new defcons(a);
        a1.Display();
    }
}
