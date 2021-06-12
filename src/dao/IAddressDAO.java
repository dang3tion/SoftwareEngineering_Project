package dao;

import java.util.List;

import model.AddressDetail;

public interface IAddressDAO {
	public boolean insertAddress(AddressDetail address,String id);
	public List<String> getAllDistrict();
}
