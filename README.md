# EyeEvaluationSourceCode_Extra
Additional Codes for Image Evaluation, Image Selection from Data Bases and Confusion Matrix Plotting

    Image Evaluation (Optional)
    
-Check that the file 'netTransfer.mat' is in the working folder if it is not in the folder, look for it

-Load the test folder in the working browser, right click on the file 'Testimagesfinal.m'

-Run the code

-Select an image in the browser that opens to test it, the image is converted and a window with the results is displayed, the prediction percentage indicates how high the prediction was. We strongly recommend cropping the image if it contains black borders, to avoid prediction errors in the CNN.

    Image Extractin (From large Datasets)
The Arrays.py code  allows the extraction of specific photos from the original folder and copies them to a destination folder, by reading a .txt file containing a list with the names of the images to extract. Then, the selection of specific images from a large dataset is made. The code load the list in the 'txt' file, searches the files with the same name in the "original" folder and create a copy in a "targer" folder. This reduce the amount of time needed to find specific files in large dataset.

    Confussion Matrix Visualization (For netTransfer)
This code allows to plot the Confusion Matrix for a specefic netTransfer
