
public class BankAccount {
	
	String phone;
	String BankAcctNo;
	String BankAcctName;
	String BankAcctTypeId;
	String BankIFSCCode;
	String BankPin;
	double CurrBankBal;
	
	
	
	public BankAccount(String phone, String bankAcctNo, String bankAcctName, String bankAcctTypeId, String bankIFSCCode,
			String bankPin, double currBankBal) {
		super();
		this.phone = phone;
		BankAcctNo = bankAcctNo;
		BankAcctName = bankAcctName;
		BankAcctTypeId = bankAcctTypeId;
		BankIFSCCode = bankIFSCCode;
		BankPin = bankPin;
		CurrBankBal = currBankBal;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBankAcctNo() {
		return BankAcctNo;
	}
	public void setBankAcctNo(String bankAcctNo) {
		BankAcctNo = bankAcctNo;
	}
	public String getBankAcctName() {
		return BankAcctName;
	}
	public void setBankAcctName(String bankAcctName) {
		BankAcctName = bankAcctName;
	}
	public String getBankAcctTypeId() {
		return BankAcctTypeId;
	}
	public void setBankAcctTypeId(String bankAcctTypeId) {
		BankAcctTypeId = bankAcctTypeId;
	}
	public String getBankIFSCCode() {
		return BankIFSCCode;
	}
	public void setBankIFSCCode(String bankIFSCCode) {
		BankIFSCCode = bankIFSCCode;
	}
	public String getBankPin() {
		return BankPin;
	}
	public void setBankPin(String bankPin) {
		BankPin = bankPin;
	}
	public double getCurrBankBal() {
		return CurrBankBal;
	}
	public void setCurrBankBal(double currBankBal) {
		CurrBankBal = currBankBal;
	}
	
	
}