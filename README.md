# DBT transformation. 
### Semi-Structured and Structured Layer of Data Transformation:

- Path to Example Transformation: `https://github.com/makyash/dbt/tree/main/models`.
- Within the `core` and `staging` directories, I have elucidated our approach to utilizing different levels of data storage. Notably, the core directory serves as the structured layer in the data transformation phase.
- It is imperative to note that access to the staging directory should be restricted to authorized personnel.
  
### Joining Two Datasets in DBT:

- In the Join model, you will find a comprehensive guide on reading from multiple tables and executing joins effectively.
- For practical implementation, I recommend storing raw datasets in Google Cloud Storage (GCS) and utilizing tools such as `Airbyte` to facilitate their transition to the semi-structured layer (staging in BigQuery).
- The subsequent step involves joining the datasets and storing the result in the structured layer.
  

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt community](https://getdbt.com/community) to learn from other analytics engineers
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
