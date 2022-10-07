/*

	# 데이터 조작어 (DML : Data Manipulation Language) > DELETE문

	- 데이터베이스의 레코드를 삭제한다.
	- 대부분 where절과 같이 사용한다.

   [ 레코드 삭제 형식 ]
   
    - DELETE FROM TABLE WHERE FIELD_CONDITION='DATA';
    
	EX) 
		DELETE FROM 
					MEMBER 
		WHERE 
					NO=1;

*/

# 상품코드가 'P10006'인 레코드 삭제
DELETE FROM PRODUCT WHERE PRODUCT_CD = 'P10006';

# 상품코드가 'P10005'인 레코드 삭제
DELETE FROM PRODUCT
WHERE 		PRODUCT_CD = 'P10005';


# 상품코드가 'P10004'인 레코드 삭제
DELETE FROM 
		PRODUCT
WHERE
		PRODUCT_CD = 'P10004';

		
# 전체 데이터 삭제 예시

DELETE FROM PRODUCT;