void main() {

	var arr = [2,2,3,4,5,6,7,8,8,9];
	print(findDuplicate(arr));
}


List findDuplicate(List arr){
	int x;
	List arrDuplicated = [];
	// jika 
	for (var i = 0; i < arr.length; i++) {
		arrDuplicated.add(arr[i]);

		
	}
	return arrDuplicated;
}
