## Requirements
- Docker Desktop 4.25+

## Use
1. Clone repository  
2. Build docker-compose  
    - `docker-compose up -d`  
3. Execute scripts from `scripts/`  

    ### 3.1. Bash testing  
   - Modify `check_connection.sh` file according to the container name created with docker-compose  
     - **In MAC OS**  
       ```sh
       sh ./scripts/check_connection.sh
       ```  
     - **In Linux**  
       ```sh
       ./scripts/check_connection.sh
       ```

    ### 3.2. PySpark testing  
   - Execute the following command:  
     ```sh
     docker exec -it Big-Data-Environment-jupyter-1 python /home/jovyan/work/test_spark.py
     ```

    ### 3.3. Resource testing  
   - **CPU/Memory usage by each container**  
     ```sh
     docker stats --no-stream
     ```  
   - **Verify access to Jupyter Lab**  
     ```sh
     curl -s http://localhost:8888
     ```
