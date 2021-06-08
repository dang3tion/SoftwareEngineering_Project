var countAddress = 1;

function addAddress() {


	countAddress = countAddress + 1;
	$('#address-table').append(
		'<tr> 										<th scope="row">' + countAddress + '</th> 										<td> 											<div class="input"> 												<input name="name" 													placeHolder="Nhập tiêu đề VD: cơ sở 1,..." type="text" 													value="">    											</div> 										</td> 										<td> 											<div class="input"> 												<input name="name" placeHolder="Nhập địa chỉ" type="text" 													value="">    											</div> 										</td>  										<td> 											<div class="input"> 												<select id="province' + countAddress + '" style="width: 150px" 													name="type-colleges"> 													<option disabled selected>Chọn tỉnh thành</option>  												</select> 											</div> 										</td> 										<td> 											<div class="input"> 												<select id="district' + countAddress + '" style="width: 150px"> 													<option disabled selected value="chuachon">Chưa 														chọn</option>  												</select> 											</div> 										</td>  										<td> 											<div class="input"> 												<select name="type-colleges"> 													<option value="conglap">Hoạt động</option> 													<option value="tuthuc">Ngưng hoạt động</option> 												</select> 											</div> 										</td> 									</tr>'
	)
	$.getJSON("https://thongtindoanhnghiep.co/api/city/", function(data) {
		var se = document.getElementById('province' + countAddress);
		var arr = data['LtsItem'];
		se.setAttribute('onchange', 'onclickProvince(this.value,'+ countAddress+')');
		for (let a = 0; a < arr.length - 1; a++) {
			let option = document.createElement('option');
			option.setAttribute('value', arr[a]['ID']);
			option.innerHTML = arr[a]['Title'];
			se.appendChild(option);
		}

	});
}


var countPno = 1;

function addPhoneNo() {
	countPno++;
	$("#phoneNo").append(
		'    <tr>                                             <th scope="row">' + countPno + '</th>                                             <td>                                                 <div class="input">                                                     <input name="name" placeHolder="Nhập mã trường" type="text" value="">                                                    </div>                                             </td>                                             <td>                                                 <div class="input">                                                     <input name="name" placeHolder="Nhập mã trường" type="text" value="">                                                    </div>                                             </td>                                              <td>                                                 <div class="input">                                                     <select name="type-colleges">                                                         <option value="conglap">Hoạt động</option>                                                         <option value="tuthuc">Ngưng hoạt động</option>                                                     </select>                                                 </div>                                             </td>                                         </tr>'

	)
}

function addImgSub(){
	$('#color-sub1').append(
		'<li class="content-input"> 										<div class="title"> 											<p>Chọn ảnh mô tả</p> 										</div>  										<div class="input"> 											<input type="text" name="color1" id="color1-sub2" 												placeholder="Nhập URL ảnh nền" style="min-width: 310px;" /> 											<!-- <label class="choose-file" style="margin: 0;" 																for="color1-sub2">Chọn ảnh</label> --> 										</div>  										<div class="input"> 											<label class="choose-file" 												style="margin: 0; margin-left: 15px; border-radius: 3px; color: white; padding: 6px; background: #f89d13; cursor: pointer;" 											>Chọn ảnh</label> 										</div> <img 										style="width: 40; height: 60px; object-fit: contain; margin-left: 10px; display: none" 										id="color1-sub2-img" src="">  									</li>'
	);
	
	
}


function addCourse(id){
	countFrame++;
	$('#frame'+id).append(
			'<tr> 										<td> 											<div class="input"> 												<select name="type-colleges"> 													<option value="conglap">Hoạt động</option> 													<option value="tuthuc">Ngưng hoạt động</option> 												</select> 											</div> 										<td> 											<div class="input"> 												<input name="name" placeHolder="Nhập mã trường" type="text" 													value=""> 											</div> 										</td>  										<td> 											<div class="input"> 												<input name="name" placeHolder="Nhập mã trường" type="text" 													value=""> 											</div> 										</td> 										<td> 											<div class="input"> 												<input name="name" placeHolder="VD: A01,A02" type="text" 													value=""> 											</div> 										</td>  										<td> 											<div class="input"> 												<textarea name="name" placeHolder="Nhập mô tả học phi" 													type="text" 													style="height: 100px; padding: 5px; outline: 0; width: 300px;" 													value=""></textarea> 											</div> 										</td>   									</tr> '
		)
}
var countFrame=1;
function addFrame(){
	countFrame++;
	$("#frame-add").append(
	'	<div class=" frame-number " id="color-1" 					style="width: 95%; box-shadow: 1px 1px 3px -1px #5f5f5f; margin-bottom: 30px;"> 					<h5>Khung đào tạo</h5> 					<div class="frame-cog-content"> 						<div class="frame"> 							<ul class="information"> 								<li class="content-input"> 									<div class="title"> 										<p>Chọn năm</p> 									</div> 									<div class="input"> 										<select name="type-colleges"> 											<option value="conglap">2021</option>  										</select> 									</div>   								</li> 								<li class="content-input"> 									<div class="title"> 										<p>Loại khung</p> 									</div> 									<div class="input"> 										<select name="type-colleges"> 											<option value="conglap">Đại học chính quy</option> 											<option value="tuthuc">Cao đẳng</option> 											<option value="danlap">Chất lượng tiên tiến</option> 											<option value="danlap">Chất lượng cao</option> 											<option value="danlap">Liên kết quốc tế</option> 										</select> 									</div>   								</li> 								<li class="content-input"> 									<div class="title"> 										<p>Mô tả</p> 									</div>  									<div class="input"> 										<textarea name="name" placeHolder="Nhập mã trường" type="text" 											value=""></textarea>    									</div>  								</li> 								<li class="content-input"> 									<div class="title"> 										<p>Trạng thái</p> 									</div> 									<div class="input"> 										<select name="type-colleges"> 											<option value="danlap">Có hiệu lực</option> 											<option value="danlap">Vô hiệu lực</option> 										</select> 									</div>   								</li> 								<li class="content-input"> 									<div class="title"> 										<p>Mức học phí</p> 									</div>  									<div class="input"> 										<input name="name" placeHolder="Nhập mức học phí" type="text" 											value="">    									</div>  								</li> 								<li class="content-input"> 									<div class="title"> 										<p></p> 									</div>  									<div class="input"> 										<input name="name" placeHolder="Nhập giá trị tương đương" 											type="text" value="">    									</div>  								</li> 								<li class="content-input"> 									<div class="title"> 										<p>Mô tả (học phí)</p> 									</div>  									<div class="input"> 										<textarea name="name" placeHolder="Nhập mô tả học phi" 											type="text" style="height: 100px;" value=""></textarea>    									</div>  								</li>     							</ul> 							<table class="table"> 								<thead class="thead-light"> 									<tr> 										<th scope="col">Ngành</th> 										<th scope="col">Điểm đầu vào</th> 										<th scope="col">Chỉ tiêu</th>  										<th scope="col">Tổ hợp môn</th> 										<th scope="col" style="width: 350px;">Mô tả</th> 									</tr> 								</thead> 								<tbody id="frame'+countFrame+'"> 									<tr> 										<td> 											<div class="input"> 												<select name="type-colleges"> 													<option value="conglap">Hoạt động</option> 													<option value="tuthuc">Ngưng hoạt động</option> 												</select> 											</div> 										<td> 											<div class="input"> 												<input name="name" placeHolder="Nhập mã trường" type="text" 													value=""> 											</div> 										</td>  										<td> 											<div class="input"> 												<input name="name" placeHolder="Nhập mã trường" type="text" 													value=""> 											</div> 										</td> 										<td> 											<div class="input"> 												<input name="name" placeHolder="VD: A01,A02" type="text" 													value=""> 											</div> 										</td>  										<td> 											<div class="input"> 												<textarea name="name" placeHolder="Nhập mô tả học phi" 													type="text" 													style="height: 100px; padding: 5px; outline: 0; width: 300px;" 													value=""></textarea> 											</div> 										</td>   									</tr>   								</tbody>  							</table> 							<div class="w-100" style="overflow: auto;"> 								<button type="button" class="btn-warning float-right" 									style="color: white; box-shadow: 1px 1px 2px 0px #a5a5a5; padding: 5px; border-radius: 3px; outline: 0; border: 0" 									onclick="addCourse('+countFrame+')">Thêm ngành</button> 							</div> 						</div> 					</div>   				</div>'	
		
	);
	
}

