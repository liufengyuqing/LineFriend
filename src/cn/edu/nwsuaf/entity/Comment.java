package cn.edu.nwsuaf.entity;

/**
 * 评论实体类
 * @author 张琼
 * 2017-6-26
 */
public class Comment {
	private int id;
	private String content;
	private String email;
	private String send_time;
	private int product_id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSend_time() {
		return send_time;
	}
	public void setSend_time(String sendTime) {
		send_time = sendTime;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int productId) {
		product_id = productId;
	}
	
}
