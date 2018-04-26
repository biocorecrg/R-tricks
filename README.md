# R-tricks
collection of useful R commands

### Create all possible comparaisons between experimental groups (in a DESeq2 friendly contrast format) without repetitions
```{r}
groups <- paste0("group", 1:8)

all_comparisons <- apply(combn(unique(groups), 2), 2, 
			function(x)paste(x, collapse="-"))
```

### Merge data frames or matrices
```{r}
table1 <- data.frame(ID=1:10, Names=LETTERS[1:10])
table2 <- data.frame(id=5:15, Measure=12:22)

# Keep only common IDs
table_merged_common <- merge(table1, table2, 
			by.x="ID", by.y="id", 
			all=FALSE)

# Keep all rows from both inputs
table_merged_common_all <- merge(table1, table2, 
			by.x="ID", by.y="id", 
			all=TRUE)

# Keep all rows from the first input but not from the second input
table_merged_common_allx <- merge(table1, table2, 
			by.x="ID", by.y="id", 
			all.x=TRUE, all.y=FALSE)
```

### Order data frame by a specific column
```{r}
table1 <- data.frame(id=4:15, Number=c(12:18, 43:39))

# In an increasing order
table2 <- table1[order(table1$Number), ]

# In a decreasing order
table2 <- table1[order(table1$Number, decreasing=TRUE), ]
```

### Sample randomly n rows
```{r}
library(dplyr)
table1 <- data.frame(Id=1:26, Letters=LETTERS)

# Randomly select 12 rows from table1
random_12 <- sample_n(table1, 12)

```

### 
```{r}

```
