package methods;
class SbiAcc{
	private String Accholder;
	private int balance;
	SbiAcc(String Accholder,int balance){
		this.Accholder=Accholder;
		this.balance=balance;
	}
	public String getAccholder() {
		return Accholder;
	}
	public int getBalance() {
		return balance;
	}
	public void Deposit(int dep) {
		if(balance>0) {
			balance +=dep;
			System.out.println("Deposite Amount:"+dep);
			System.out.println("Now current balance:"+balance);
		}
	}
		public void setAccholder(String Accholder){
			this.Accholder=Accholder;
		}
		public void setwithdraw(int wd) {
				balance -=wd;
				System.out.println("withdrawn amount:"+wd);
		}
}
public class BankDetails {

	public static void main(String[] args) {
		SbiAcc sc=new SbiAcc("John",5000);
		System.out.println("Account holder name:"+sc.getAccholder());
		sc.setAccholder("pavithra");
		System.out.println("update account holder:"+sc.getAccholder());
		System.out.println("Balance:"+sc.getBalance());
		sc.Deposit(1000);
		sc.setwithdraw(2000);
		System.out.println("Available Balance:"+sc.getBalance());
	}
}
