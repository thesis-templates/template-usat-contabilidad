import pandas as pd
import matplotlib.pyplot as plt

pathfile = 'data/tsv/table.tsv'

df = pd.read_csv(pathfile, sep='\t')

print(df)

df.to_csv(pathfile, sep='\t', index=False)

df.plot()

# plt.show()

plt.savefig('data/images/chart.png')
