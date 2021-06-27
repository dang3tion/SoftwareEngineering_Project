

var countPno = 1;

function addPhoneNo() {
	countPno++;
	$("#phoneNo").append(
		'<tr> <th scope="row">' + countPno + '</th> <td> <div class="input"> <input name="sdt-tieude" placeHolder="Nhập tiêu đề" type="text" value=""> </div> </td> <td> <div class="input"> <input name="sdt" placeHolder="Nhập số điện thoại" type="text" value=""> </div> </td> <td> <div class="input"> <select name="sdt-trangthai"> <option value="hoatdong">Hoạt động</option> <option value="ngunghoatdong">Ngưng hoạt động</option> </select> </div> </td> </tr>'
	)
}

function addImgSub() {
	$('#color-sub1').append(
		'<li class="content-input"> <div class="title"> <p>Chọn ảnh mô tả</p> </div> <div class="input"> <input type="text" name="anh-phu" id="color1-sub2" placeholder="Nhập URL ảnh" style="min-width: 310px;" />  </div> <div class="input"> <label class="choose-file" style="margin: 0; margin-left: 15px; border-radius: 3px; color: white; padding: 6px; background: #f89d13; cursor: pointer;">Chọn ảnh</label> </div> <img style="width: 40; height: 60px; object-fit: contain; margin-left: 10px; display: none" id="color1-sub2-img" src=""> </li>'
	);


}


