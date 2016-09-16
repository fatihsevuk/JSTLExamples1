package com.fatih;

public class Ogrenci {
	
	private int ogrenciNo;
	private String ad;
	private String soyad;
	private boolean dersGecme;
	
	public Ogrenci(int ogrenciNo, String ad, String soyad, boolean dersGecme) {
		super();
		this.ogrenciNo = ogrenciNo;
		this.ad = ad;
		this.soyad = soyad;
		this.dersGecme = dersGecme;
	}

	public int getOgrenciNo() {
		return ogrenciNo;
	}

	public void setOgrenciNo(int ogrenciNo) {
		this.ogrenciNo = ogrenciNo;
	}

	public String getAd() {
		return ad;
	}

	public void setAd(String ad) {
		this.ad = ad;
	}

	public String getSoyad() {
		return soyad;
	}

	public void setSoyad(String soyad) {
		this.soyad = soyad;
	}

	public boolean isDersGecme() {
		return dersGecme;
	}

	public void setDersGecme(boolean dersGecme) {
		this.dersGecme = dersGecme;
	}
	
	

}
