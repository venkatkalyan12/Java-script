package Entity;
import java.sql.Date;

public class user_details {
	int UserId;
	String FirstName;
	String LastName;
	String Phno;
	String EmailId;
	Date DateOfBirth;
	String Address;
	String PassWord;
	double CurrWalletBalance;
	
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getPhno() {
		return Phno;
	}
	public void setPhno(String phno) {
		Phno = phno;
	}
	public String getEmailId() {
		return EmailId;
	}
	public void setEmailId(String emailId) {
		EmailId = emailId;
	}
	public Date getDateOfBirth() {
		return DateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		DateOfBirth = dateOfBirth;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getPassWord() {
		return PassWord;
	}
	public void setPassWord(String passWord) {
		PassWord = passWord;
	}
	public double getCurrWalletBalance() {
		return CurrWalletBalance;
	}
	public void setCurrWalletBalance(double currWalletBalance) {
		CurrWalletBalance = currWalletBalance;
	}
	
	
}