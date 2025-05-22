package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.entity.Donor;

public class DonorDAOImpl implements DonorDAO {

	private Connection conn;

	public DonorDAOImpl(Connection conn) {
		this.conn = conn;
	}

	@Override
	public boolean donordonate(Donor us) {
		boolean f = false;
		String sql = "INSERT INTO donors(name, blood_group, gender, date_of_birth, email, contact_no, city, password) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";

		try (PreparedStatement ps = conn.prepareStatement(sql)) {
			ps.setString(1, us.getName());
			ps.setString(2, us.getBlood_group());
			ps.setString(3, us.getGender());
			ps.setString(4, us.getDate_of_birth());
			ps.setString(5, us.getEmail());
			ps.setString(6, us.getContact_no());
			ps.setString(7, us.getCity());
			ps.setString(8, us.getPassword());

			int i = ps.executeUpdate();
			f = (i == 1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public Donor login(String emailOrPhone, String password) {
		Donor donor = null;
		String sql = "SELECT * FROM donors WHERE (email=? OR contact_no=?) AND password=?";

		try (PreparedStatement ps = conn.prepareStatement(sql)) {
			ps.setString(1, emailOrPhone);
			ps.setString(2, emailOrPhone);
			ps.setString(3, password);

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				donor = new Donor();
				donor.setId(rs.getInt("id"));
				donor.setName(rs.getString("name"));
				donor.setEmail(rs.getString("email"));
				donor.setBlood_group(rs.getString("blood_group"));
				donor.setContactno(rs.getString("contact_no"));
				donor.setCity(rs.getString("city"));
				// Set other fields as necessary
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return donor;
	}

	@Override
	public List<Donor> getAllDonors() {
		List<Donor> donors = new ArrayList<>();
		String sql = "SELECT * FROM donors";

		try (PreparedStatement ps = conn.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {
			while (rs.next()) {
				Donor donor = new Donor();
				donor.setId(rs.getInt("id"));
				donor.setName(rs.getString("name"));
				donor.setEmail(rs.getString("email"));
				donor.setBlood_group(rs.getString("blood_group"));
				donor.setContactno(rs.getString("contact_no"));
				donor.setCity(rs.getString("city"));
				// Set other fields as necessary

				donors.add(donor);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return donors;
	}

	@Override
	public boolean updateDonor(Donor donor) {
		boolean f = false;
		String sql = "UPDATE donors SET name=?, blood_group=?, contact_no=?, city=? WHERE id=?";

		try (PreparedStatement ps = conn.prepareStatement(sql)) {
			ps.setString(1, donor.getName());
			ps.setString(2, donor.getBlood_group());
			ps.setString(3, donor.getContact_no());
			ps.setString(4, donor.getCity());
			ps.setInt(5, donor.getId());

			int i = ps.executeUpdate();
			f = (i == 1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	@Override
	public boolean deleteDonor(int id) {
		boolean f = false;
		String sql = "DELETE FROM donors WHERE id=?";

		try (PreparedStatement ps = conn.prepareStatement(sql)) {
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			f = (i == 1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}
