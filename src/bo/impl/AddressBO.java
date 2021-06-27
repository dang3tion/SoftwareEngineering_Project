package bo.impl;

import java.util.List;

import bo.IAddressBO;
import dao.IAddressDAO;
import dao.impl.AddressDAO;
import model.AddressDetail;

public class AddressBO implements IAddressBO{
	private static AddressBO instance = new AddressBO();
	public static AddressBO getInstance() {
		return instance;
	}
	private AddressBO() {}
	
}
