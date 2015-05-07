package com.musigma.ird.bigdata;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class RImpala {


	private static String CONNECTION_URL;

	private static final String JDBC_DRIVER_NAME = "org.apache.hive.jdbc.HiveDriver";

	private static Connection con = null;

	public static void main(String[] args) {


	}


	public static boolean connect(String IP, String port, String principal) {

		CONNECTION_URL = "jdbc:hive2://" + IP + ':' + port + "/;" + principal;

		try {
			Class.forName(JDBC_DRIVER_NAME);
			con = DriverManager.getConnection(CONNECTION_URL);
			con.setAutoCommit(false);
			return true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error: " + e.getMessage());
			return false;

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("Error: " + e.getMessage());
			return false;
		}

	}

	public static boolean close() {
		try {
			con.close();
			return true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error: " + e.getMessage());
			return false;
		}
	}

	public static boolean refresh(String table) throws ClassNotFoundException {

		try {
			Statement stmt;
			stmt = con.createStatement();
			String Q = "refresh " + table;
			//stmt.execute("connect "+ IP+":21000;");
			stmt.execute(Q);
			return true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error: " + e.getMessage());
			return false;

		}
	}

	public static boolean invalidate(String table) throws ClassNotFoundException {

		try {
			Statement stmt;
			stmt = con.createStatement();
			String Q = "invalidate metadata " + table;
			//stmt.execute("connect "+ IP+":21000;");
			stmt.execute(Q);
			return true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error: " + e.getMessage());
			return false;

		}
	}

	public static List < String[] > showtables() throws SQLException {
		Statement stmt;
		String Q = "show tables";
		ResultSet rs = null;

		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(Q);
			List < String[] > dynamicResult = new ArrayList < String[] > ();

			ResultSetMetaData metaData = rs.getMetaData();

			int columnCount = metaData.getColumnCount();

			String[] columnNames = new String[columnCount];

			for (int j = 1; j <= columnCount; j++) {
				columnNames[j - 1] = metaData.getColumnName(j);

			}
			dynamicResult.add(columnNames);

			while (rs.next()) {

				String[] dynamicRow = new String[columnCount];

				for (int i = 1; i <= columnCount; i++) {

					dynamicRow[i - 1] = rs.getObject(i).toString();
				}
				dynamicResult.add(dynamicRow);


			}
			return dynamicResult;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error: " + e.getMessage());
		} catch (Exception e) {
			//e.printStackTrace();

			if (!con.isValid(2)) {
				System.out.println("Connection has probably not been established");
				System.out.println("Please use rimpala.connect(IP= ,port= )");
			}

			System.out.println("Error: " + e.getMessage());

		} finally {

		}
		return null;

	}

	public static List < String[] > showdatabases() throws SQLException {
		Statement stmt;
		String Q = "show databases";
		ResultSet rs = null;

		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(Q);
			List < String[] > dynamicResult = new ArrayList < String[] > ();

			ResultSetMetaData metaData = rs.getMetaData();

			int columnCount = metaData.getColumnCount();

			String[] columnNames = new String[columnCount];

			for (int j = 1; j <= columnCount; j++) {
				columnNames[j - 1] = metaData.getColumnName(j);

			}
			dynamicResult.add(columnNames);

			while (rs.next()) {

				String[] dynamicRow = new String[columnCount];

				for (int i = 1; i <= columnCount; i++) {

					dynamicRow[i - 1] = rs.getObject(i).toString();
				}
				dynamicResult.add(dynamicRow);


			}
			return dynamicResult;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error: " + e.getMessage());
		} catch (Exception e) {
			//e.printStackTrace();

			if (!con.isValid(2)) {
				System.out.println("Connection has probably not been established");
				System.out.println("Please use rimpala.connect(IP= ,port= )");
			}

			System.out.println("Error: " + e.getMessage());

		} finally {

		}
		return null;

	}



	public static boolean usedatabase(String db) {
		Statement stmt;
		String Q = "use" + " " + db;
		try {
			stmt = con.createStatement();
			stmt.execute(Q);
			System.out.println("Database changed to " + db);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error: " + e.getMessage());
			return false;
		}
	}

	public static List < String[] > describe(String table) throws SQLException {
		Statement stmt;
		String Q = "describe" + " " + table;
		ResultSet rs = null;
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(Q);

			List < String[] > dynamicResult = new ArrayList < String[] > ();

			ResultSetMetaData metaData = rs.getMetaData();

			int columnCount = metaData.getColumnCount();

			String[] columnNames = new String[columnCount];

			for (int j = 1; j <= columnCount; j++) {
				columnNames[j - 1] = metaData.getColumnName(j);

			}
			dynamicResult.add(columnNames);

			while (rs.next()) {

				String[] dynamicRow = new String[columnCount];

				for (int i = 1; i <= columnCount; i++) {

					dynamicRow[i - 1] = rs.getObject(i).toString();
				}
				dynamicResult.add(dynamicRow);


			}
			return dynamicResult;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error: " + e.getMessage());
		} catch (Exception e) {
			//e.printStackTrace();

			if (!con.isValid(2)) {
				System.out.println("Connection has probably not been established");
				System.out.println("Please use rimpala.connect(IP= ,port= )");
			}

			System.out.println("Error: " + e.getMessage());

		} finally {

		}
		return null;

	}

	public static List < String[] > query(String Q, String isDDL, String fetchSize) throws SQLException {

		ResultSet rs = null;


		if ("true".equals(isDDL)) {
			List < String[] > updateResult = new ArrayList < String[] > ();

			String[] Result_array = new String[1];

			String Result;

			try {
				Statement stmt = con.createStatement();

				stmt.executeUpdate(Q);

				Result = "true";

				Result_array[0] = Result;

				updateResult.add(Result_array);

				return updateResult;

			} catch (SQLException e) {

				System.out.println("Error: " + e.getMessage());

			} catch (Exception e) {

				if (!con.isValid(2)) {
					System.out.println("Connection has probably not been established");
					System.out.println("Please use rphoenix.connect(IP= ,port= )");
				}

				System.out.println("Error: " + e.getMessage());
			} finally {}

			return null;
		} else {
			try {

				Statement stmt = con.createStatement();
             	    		
				stmt.setFetchSize(Integer.parseInt(fetchSize));

				rs = stmt.executeQuery(Q);

				List < String[] > dynamicResult = new ArrayList < String[] > ();

				ResultSetMetaData metaData = rs.getMetaData();

				int columnCount = metaData.getColumnCount();


				//System.out.println("Number of Columns :"+columnCount);


				String[] columnTypes = new String[columnCount];
				String[] columnNames = new String[columnCount];
				for (int j = 1; j <= columnCount; j++) {

					//System.out.print(metaData.getColumnName(j)+"\t");
					columnNames[j - 1] = metaData.getColumnName(j);
					columnTypes[j - 1] = metaData.getColumnTypeName(j);
				}

				dynamicResult.add(columnNames);
				dynamicResult.add(columnTypes);


				while (rs.next()) {

					String[] dynamicRow = new String[columnCount];

					for (int i = 1; i <= columnCount; i++) {

						dynamicRow[i - 1] = rs.getObject(i).toString();
					}
					dynamicResult.add(dynamicRow);


				}
				return dynamicResult;

			} catch (SQLException e) {

				System.out.println("Error: " + e.getMessage());

			} catch (Exception e) {
				//e.printStackTrace();

				if (!con.isValid(2)) {
					System.out.println("Connection has probably not been established");
					System.out.println("Please use rimpala.connect(IP= ,port= )");
				}

				System.out.println("Error: " + e.getMessage());

			} finally {

			}
			return null;
		}



	}


}
