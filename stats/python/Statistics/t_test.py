import pandas as pd
import seaborn as sns
import scipy as sp

def main():

    iris_df = sns.load_dataset("iris")

    virginica = iris_df.loc[ iris_df['species'] == 'virginica']
    setosa = iris_df.loc[ iris_df['species'] == 'setosa']

    ttest = sp.stats.ttest_ind(
        virginica['sepal_length'],
        setosa['sepal_length']
    )

    print( ttest )

    ttest = sp.stats.ttest_ind(
        virginica['sepal_length'],
        virginica['sepal_length']
    )

    print( ttest )

if __name__=='__main__':
    main()