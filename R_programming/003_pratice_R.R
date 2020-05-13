
# 1) state.x77�� ��ȯ�Ͽ� st�� ���������������� �����Ͻÿ�.
st <- data.frame(state.x77)

# 2) st�� ������ ����Ͻÿ�.
st

# 3) st�� ���̸��� ����Ͻÿ�.
colnames(st)

# 4) st�� �� �̸��� ����Ͻÿ�.
rownames(st)

# 5) st�� ��� ������ ���� ������ ����Ͻÿ�.
ncol(st)
nrow(st)

# 6) st�� ��� ������ ����Ͻÿ�.
class(st)

# 7) st�� �ະ �հ�� ����� ����Ͻÿ�.
colSums(st)
colMeans(st)

# 8) st�� ���� �հ�� ����� ����Ͻÿ�.
rowSums(st)
rowMeans(st)

# 9) Florida ���� ��� ������ ����Ͻÿ�.
st[rownames(st)=="Florida", ]

# 10) 50�� ���� ����(Incom) ������ ����Ͻÿ�.
st["Income"]

# 11) Texas ���� ����(Area)�� ����Ͻÿ�.
st[rownames(st)=="Texas", "Area"]

# 12) Ohio ���� �α�(Population)�� ����(Income)�� ����Ͻÿ�.
st[rownames(st)=="Ohio",c("Population", "Income")]

# 13) �α��� 5,000 �̻��� ���� �����͸� ����Ͻÿ�.
subset(st, Population>=5000)

# 14) ������ 4,500 �̻��� ���� �α�, ����, ������ ����Ͻÿ�.
subset(st, Income>=4500)[c("Population", "Income", "Area")]

# 15) ������ 4,500 �̻��� �ִ� �� ������ ����Ͻÿ�.
nrow(subset(st, Income>=4500))

# 16) ��ü ����(Area)�� 100,000 �̻��̰�, ����ϼ�(Frost)�� 120 �̻��� ���� ������ ����Ͻÿ�.
subset(st, Area>=10000 & Frost>=120)

# 17) �α�(Population)�� 2,000 �̸��̰�, ������(Murder)�� 12 �̸��� ���� ������ ����Ͻÿ�.
subset(st, Population<2000 & Murder <12)

# 18) ���ͷ�(Illiteracy)�� 2.0 �̻��� ���� ��� ������ ������ ����Ͻÿ�.
colMeans(subset(st, Illiteracy>=2.0)['Income'])

# 19) ���ͷ�(Illiteracy)�� 2.0 �̸��� �ֿ� 2.0 �̻��� ���� ��� ������ ���̸� ����Ͻÿ�.
colMeans(subset(st, Illiteracy>=2.0)['Income']) - colMeans(subset(st, Illiteracy<2.0)['Income'])

# 20) ������(Life Exp)�� ���� ���� �ִ� ������� ����Ͻÿ�.
max_exp = max(st["Life.Exp"])
subset(st, Life.Exp == max_exp)


# 21) Pennsylvania �ֺ��� ����(Income)���� �ֵ��� ����Ͻÿ�.
pen_income = st[rownames(st)=="Pennsylvania", "Income"]
subset(st, Income > pen_income)