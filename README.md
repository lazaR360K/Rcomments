## Installation and Usage of Rcomments Addin

### Installation

To install the `Rcomments` package from GitHub, follow these steps:

1. **Install the `devtools` package** if it is not already installed:
    ```R
    install.packages("devtools")
    ```

2. **Load the `devtools` package**:
    ```R
    library(devtools)
    ```

3. **Install the `Rcomments` package from GitHub**:
    ```R
    install_github("lazaR360K/Rcomments")
    ```

4. **Load the `Rcomments` package**:
    ```R
    library(Rcomments)
    ```

![start](https://github.com/lazaR360K/Rcomments/assets/173718166/058dae30-a068-4c31-bc51-6b0de7c119f8)


### Using the Addin

Once the package is installed, restart R studio and you can use the addin in RStudio to automatically comment your R scripts. Here are the steps to do that:

1. **Open RStudio** and load a script file or create a new one.

2. **Select the code** that you want to comment.

![text_select](https://github.com/lazaR360K/Rcomments/assets/173718166/58a7a603-40bf-4f3b-9c58-e078e666b440)


3. **Go to the Addins menu** in the RStudio toolbar and click on **Browse Addins...**.

4. **Find the "Comment Selected Script" addin** in the list of addins. You can filter addins by typing "Comment Selected Script" in the Filter addins box.

5. **Click on Execute** to run the addin.

![execute_script](https://github.com/lazaR360K/Rcomments/assets/173718166/74c52136-6f93-49e5-928c-0165a7ff99fe)

6. **Enter your API Key** 

![APIKey](https://github.com/lazaR360K/Rcomments/assets/173718166/60bf5d43-a235-4fbb-aaea-a864ad3dcb39)

7. **Success Message**Enter the number of the next step you want to perform in the console.

![suc](https://github.com/lazaR360K/Rcomments/assets/173718166/108434bc-cdc2-4ce2-86fb-b39436bda6fe)

![options](https://github.com/lazaR360K/Rcomments/assets/173718166/e5a36aed-4b02-484c-bdec-388c7ff26248)


### Features

- The addin can handle any type or complexity of R code, providing clear and concise comments for each line.
- It uses the GPT-3.5 Turbo API to generate comments, ensuring high-quality short explanations.
- It suggests next steps for analysis, helping users to continue their data exploration and analysis efficiently.
- The addin allows users to choose the next step from a list of suggestions and performs the selected step automatically.

### Notes

- Ensure you have an active internet connection as the addin uses an API call to generate comments and suggestions.
- You will be prompted to enter your OpenAI API key when you run the addin for the first time.
- Make sure you have the necessary permissions to access the OpenAI API and have a valid API key.


By following these steps, you should be able to install and use the `Rcomments` addin in RStudio to comment your R scripts automatically.
