package webapp.images;

import java.io.Serializable;

public class CartDTO implements Serializable {
	private String name;	
	private int price;		
	private int cnt;		
	
	//기본 생성자 초기화
	public CartDTO() {
		
	}

	public CartDTO(String name, int price, int cnt) {
		super();
		this.name = name;
		this.price = price;
		this.cnt = cnt;
	}

	//상품 이름을 가져옴
	public String getName() {
		return name;
	}

	//상품이름 설정
	public void setName(String name) {
		this.name = name;
	}

	//상품 가격 get
	public int getPrice() {
		return price;
	}

	//상품 가격 set
	public void setPrice(int price) {
		this.price = price;
	}

	//관심상품 개수 get
	public int getCnt() {
		return cnt;
	}

	//관심상품 개수 set
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}	
}
