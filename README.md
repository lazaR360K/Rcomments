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

Once the package is installed, you can use the addin in RStudio to automatically comment your R scripts. Here are the steps to do that:

1. **Open RStudio** and load a script file or create a new one.

2. **Select the code** that you want to comment.

![input](https://github.com/lazaR360K/Rcomments/assets/173718166/2e8142a2-421e-429c-9176-cdedf17a1279)


3. **Go to the Addins menu** in the RStudio toolbar and click on **Browse Addins...**.

![process](https://github.com/lazaR360K/Rcomments/assets/173718166/95710460-c97a-4923-89c4-61a4c234bb42)


4. **Find the "Comment Selected Script" addin** in the list of addins. You can filter addins by typing "Comment Selected Script" in the Filter addins box.

5. **Click on Execute** to run the addin.

![execute_script](https://github.com/lazaR360K/Rcomments/assets/173718166/39be11c6-f458-4840-bec1-f8407fcebdd9)


### Example of Output

Here is an example of the output after running the addin on a selected script:

![output](https://github.com/lazaR360K/Rcomments/assets/173718166/cdec3cec-f191-4198-b5ec-5175cd3869e1)


This will automatically add comments to each line of your selected script using the GPT-3.5 Turbo API.

### Features

- The addin can handle any type or complexity of R code, providing clear and concise comments for each line.
- It uses the GPT-3.5 Turbo API to generate comments, ensuring high-quality short explanations.

By following these steps, you should be able to install and use the `Rcomments` addin in RStudio to comment your R scripts automatically.


### Notes

- Ensure you have an active internet connection as the addin uses an API call to generate comments.
- You will be prompted to enter your OpenAI API key when you run the addin for the first time.

By following these steps, you should be able to install and use the `Rcomments` addin in RStudio to comment your R scripts automatically.
