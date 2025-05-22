package com.DAO;

import com.entity.Donor;
import java.util.List;

public interface DonorDAO {
	boolean donordonate(Donor us);

	Donor login(String emailOrPhone, String password);

	List<Donor> getAllDonors();

	boolean updateDonor(Donor donor); // Add this for updating a donor

	boolean deleteDonor(int id); // Add this for deleting a donor
}
