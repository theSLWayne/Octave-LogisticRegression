import pandas as pd

df = pd.read_csv('data/iris.csv')

# Taking unique values of 'variety' column
variety_uniques = df['variety'].unique()

# Create the dictionary to be used in the categorization
variety_scale = {variety_uniques[0]:1, variety_uniques[1]:2, variety_uniques[2]:3}

# Print the variety scale
print('The following transformation will be done to the dataset.')
for item in variety_scale:
    print(item, ":", variety_scale[item])

# Converting categories into numerals
df['variety'] = df['variety'].map(lambda x: variety_scale[x])

# Saving the dataframe as a CSV file
df.to_csv('data/readableIris.csv', index = False)
