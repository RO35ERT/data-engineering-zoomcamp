import sys
import pandas as pd

print("Welcome to the pipeline")

month = int(sys.argv[1])

row = pd.DataFrame({"month": [month], "status": ["success"]})

row.to_parquet("data.parquet")
