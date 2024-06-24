RcommentsAddin

An RStudio addin for commenting selected scripts using an API key.

##Installation

To install the package, open RStudio and run the following commands in the console:

```r
if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools")
}
devtools::install_github("lazaR360K/Rcomments")
```

## Usage

After installing the package, you can use the addin by following these steps:

1. **Load the Package:**

   ```r
   library(RcommentsAddin)
   ```

2. **Select Your Lines of Code:**

   Select the lines of code you want to comment on, including the `comment_script()` function call. For example:

   ```r
   # Your lines of code
   x <- 1:10
   y <- x^2

   # Call the comment_script function
   comment_script()
![selecting](https://github.com/lazaR360K/RcommentsAddin/assets/173718166/3abb609d-cf78-48eb-835d-59f7e4bd917f)

   ```

3. **Run the Selected Code:**

   With the code selected, run it by pressing `Ctrl + Enter` (or `Cmd + Enter` on macOS). This will trigger the `comment_script()` function, which will process your selected code and add comments using the provided API key.

 ```
![APIKey](https://github.com/lazaR360K/RcommentsAddin/assets/173718166/27916f42-bc3b-49f2-abdf-bcc985f27ab1)

![result](https://github.com/lazaR360K/RcommentsAddin/assets/173718166/72ede391-fe3a-463c-b13e-ca7629e38127)

 ```
## Troubleshooting

If the addin does not appear in the RStudio Addins menu, ensure the following:

1. **Restart RStudio:**
   Sometimes RStudio needs to be restarted to recognize new addins.

2. **Check Addin Configuration:**
   Ensure that the `addin.json` file is correctly configured and located in the appropriate directory (`inst/rstudio/addins/`).

3. **Directory Structure:**
   Make sure your package has the following structure:

   ```
   RcommentsAddin/
   ├── .Rbuildignore
   ├── .gitignore
   ├── DESCRIPTION
   ├── LICENSE
   ├── NAMESPACE
   ├── R/
   │   └── addin.R
   ├── inst/
   │   └── rstudio/
   │       └── addins/
   │           └── addin.json
   ├── man/
   │   └── comment_script.Rd
   └── Rcomments.Rproj
   ```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request with any improvements or bug fixes.

```

### How to Add the README to Your Repository

1. **Create a `README.md` file:**
   Create a file named `README.md` in the root directory of your repository.

2. **Add the Content:**
   Copy and paste the above content into the `README.md` file.

3. **Commit and Push:**
   Use the following commands to commit and push the `README.md` file to your repository:

   ```sh
   git add README.md
   git commit -m "Add README.md"
   git push origin master
   ```

This `README.md` file provides clear instructions for users on how to install and use your RStudio addin, ensuring a smooth experience. If you have any further requests or need additional modifications, please let me know!
