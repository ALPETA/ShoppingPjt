function getPageSection(page,size,totalCount){
var pageSection = '';
var startBlock = (parseInt(page / 5) * 5) + 1;
var endBlock = startBlock + 4;
var totalBlock = Math.ceil(totalCount / size);
if(totalBlock < endBlock){
	endBlock = totalBlock;
}
if(startBlock === 1){
	pageSection += '<button class="page-item" disabled=disabled><a class="page-link">Previous</a></button >';
}else{
	pageSection += '<li class="page-item"><a class="page-link" href="javascript:getData('+(startBlock - 2)+')">Previous</a></li>';
}
for(var i = startBlock;i <= endBlock;i++){
	if(page + 1 === i){
		pageSection += '<button class="page-item active" disabled=disabled><a class="page-link">'+i+'</a></button>';
	}else{
		pageSection += '<li class="page-item"><a class="page-link" href="javascript:getData('+(i-1)+')">'+i+'</a></li>';
	}
}
if(startBlock + 4 >= totalBlock){
	pageSection += '<button class="page-item" disabled=disabled><a class="page-link">Next</a></button>';
}else{
	pageSection += '<li class="page-item"><a class="page-link" href="javascript:getData('+endBlock+')">Next</a></li>';
}
return pageSection;
}