# GMM-UBM-for-CSI-classification
The data used to train UBM is the five actions of user 1-17 in a given environment, namely, userx-6-5-5-y-rz,
X represents the user index (1-17), y represents the action index (1-5), and z represents the receiver's index (1-6).
The data used to train the GMM is the five actions of users 1 to 4 in this particular environment.
The data used for testing are 5 actions of users 1-4 in this specific environment.
The code trains two models, GMM alone, and gmm-ubm via UBM.
1. Train GMM with data of 4 people.
2. Train UBM with data of 17 people, and get gm-ubm with data of 4 people through MAP
The results of classification confusion matrix of four users by gm-ubm are presented, and the performance comparison between GMM and gm-ubm is presented in the histogram.

To run the code, open main.m and run it. It will first train a model and then test the model. The training model has been trained successully and upload.
