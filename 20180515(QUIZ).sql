--KOPO2 ���� �� "SORT_EXAMPLE" ���̺��� WEEK ���� �������������ϰ� �������� �ۼ��ϼ���
select
     LPAD(WEEK,2,'0') AS WEEK
     ,QTY
from SORT_EXAMPLE
ORDER BY LPAD (WEEK,2,'0')
;

--4. ������ �����ϴ� ���� �䱸 ������ ����/�������� ���ķ� Ǯ���� ������� ����ϴ� ������?
--case when

--[SQL�Լ�]- ������ ���̱⿣ STR�ε� �����Լ��� Ȱ���Ͽ� 
--LENGTH('�÷���') 10�̶�� ���ڰ� ���Դ� �̶� ������ �����ϴ� �Լ���?
--TRIM

SELECT LENGTH('  STR   ') FROM DUAL;

CREATE TABLE TEST_TRIM(
VAR_TEST VARCHAR2(10))
;
SELECT LENGTH(VAR_TEST) FROM TEST_TRIM
;
SELECT LENGTH(TRIM(VAR_TEST)) FROM TEST_TRIM
;
SELECT TRIM(TO_CHAR(LENGTH('      STR      '))) FROM DUAL
;

