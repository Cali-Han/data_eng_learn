# 1. R�� apply() �Լ��� �̿��Ͽ� ���� ������ �ذ��ϴ� R �ڵ带 �ۼ��Ͻÿ�.
# 1) iris �����ͼ��� �ະ �հ踦 ����Ͻÿ�.(5��° ���� ����)
apply(iris[1:4], 1, sum)

# 2) iris �����ͼ��� ���� �ִ��� ����Ͻÿ�.(5��° ���� ����)
apply(iris[1:4],2, max)

# 2. R�� apply() �Լ��� �̿��Ͽ� ���� ������ �ذ��ϴ� R �ڵ带 �ۼ��Ͻÿ�.
# 1) mtcars �����ͼ��� ���� �հ踦 ����Ͻÿ�.
apply(mtcars, 2, sum)

# 2) mtcars �����ͼ��� ���� �ִ��� ����Ͻÿ�.
apply(mtcars, 2, max)

# 3) mtcars �����ͼ��� ���� ǥ�������� ����Ͻÿ�.
apply(mtcars, 2, sd)


# 3. ������ ���� ���͸� �Է��ϸ� 
# ������ �ִ񰪰� �ּڰ��� ��ȯ(retrun)�ϴ� R �Լ�
# maxmin()�� ����� �׽�Ʈ�Ͻÿ�(��ȯ���� list��)
maxmin <- function(v){
  max = max(v)
  min = min(v)
  result <- data.frame(max, min)
  return(result)
}

v1 <- c(7,1,2,8,9)
result <- maxmin(v1)
result$max 
result$min

result <- maxmin(iris[,1])
result$max
result$min



# 4. 10���� �����Ը� ������ ���Ͱ� ������ ���� �� ������ �ذ��ϱ� ���� R�ڵ带 �ۼ��Ͻÿ�.
weight <- c(69, 50, 55, 71, 89, 64, 59, 70, 71, 80)

# 1) �����԰� ���� ū ���� �� ��°�� �ֳ�?
which.max(weight)
# 2) �����԰� ���� ���� ���� �� ��°�� �ֳ�?
which.min(weight)
# 3) �����԰� 61���� 69������ ������ �� ��°�� �ֳ�?
which(60<weight & 70>weight)
# 4) �����԰� 60 ������ ���鸸 �����Ͽ� wight.2�� �����ϰ� 
# ������ ���̽ÿ�.
weight.2 = which(60>=weight)
weight[weight.2]

# 5. ������ ������ �ذ��ϱ� ���� R �ڵ带 �ۼ��Ͻÿ�
# (which() �Լ� ���).
# 1) iris �����ͼ¿��� ������ ����(Petal.Length)�� 
# ���� ū ������(��)�� ������ ���̽ÿ�.
p_max = max(iris["Petal.Length"])
iris[which(iris["Petal.Length"] == p_max), ]
# 2) iris �����ͼ¿��� ������ ��(Petal.Width)�� 0.3 ~ 0.4 ������ 
# ������(��)���� ������ ���̽ÿ�.
num = which(0.3 <= iris['Petal.Width'] & 0.4 >= iris['Petal.Width'])
iris[num,]