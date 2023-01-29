# Meals-on-Wheels-API
Products API created for a grocery store app called "Meals on Mules"
--------------------------------------------------------------------
--------------------------------------------------------------------
**DOCUMENTATION**

**Parameters 🔽🔽🔽🔽**

**Filter Categories**

- To see one category at a time use: ?filter=category

Category Filter Options:
- bakery
- dairy
- frozen
- meat
- produce
- seafood
- snacks

Example:

Filter to show only produce items

/api/products/read.php?filter=produce

--------------------------------------------------------------------

**Sort Products**

- Can sort certain table columns from ascending or descending order

Sort Options:
- id-asc
- id-desc
- name-asc
- name-desc
- sku-asc
- sku-desc
- category-asc
- category-desc
- retail-asc
- retail-desc

Example:

- Sort by sku in ascending order 

/api/products/read.php?sort=sku-asc

--------------------------------------------------------------------

**Keyword Search**

- Enter a keyword to search for the ‘name’ of a product.
- keyword=banana

Example:

- Look for products with ‘banana’ in the name

/api/products/read.php?keyword=banana

--------------------------------------------------------------------

**SKU Filter**

- Enter a sku# to look at specific products
- sku=10006

Example:

Look for item with sku # 10006
/api/products/read.php?sku=10006


**NOTES**:

- YES you can combine different parameters

Example:

- Show only bakery items and sort by retail (price) in ascending order

/api/products/read.php?filter=bakery&sort=retail-asc
