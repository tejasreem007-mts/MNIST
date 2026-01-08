# MNIST
People often start with handwritten digit recognition when they are learning about machine learning. At first, it seems like a thing to do, which makes it a good way to learn about classifying images and checking how well models work. For a time, the MNIST dataset has been the standard test for handwritten digit recognition. The MNIST dataset has digit images from 0 to 9, in black and white. The MNIST dataset has helped people who are just starting out and experts, too, to understand the basics of machine learning and deep learning. The MNIST dataset is still used a lot today.

I think that recognising digits is harder than we thought it would be. Some models do a job with the MNIST test, but they have trouble with more complicated or real-life data. This makes us wonder if these models really work well in all situations and if the MNIST test is enough to see how good machine learning systems are. One big problem with MNIST is that it only looks at Arabic numerals and does not consider the many different ways digits are written in other languages and writing systems. Recognising digits, like those in the MNIST test, is still a challenge for machine learning systems.

Jiang came up with the MNIST-MIX dataset in 2020 to deal with this problem. The MNIST-MIX dataset has digits from ten different languages. These digits are put into thirteen groups. All the images in the MNIST-MIX dataset are the same size and are in grayscale, just like the MNIST dataset. This makes it easy to compare the two datasets. The MNIST-MIX dataset is more challenging because it has digits from multiple languages. This makes the MNIST-MIX dataset a test of how well a system can recognise digits. The MNIST-MIX dataset is a realistic benchmark because it has digits from many languages.

The MNIST-MIX is a deal, but it also shows that a lot of models are not very good. When you take models that were trained on MNIST, and you test them on MNIST-MIX, they do not do well. This means that a lot of models are learning things that are specific to the MNIST dataset rather than learning general things that would work in other situations. So the MNIST-MIX is a test for models, and it really shows how well a model can handle new things. The MNIST-MIX test is very useful because it helps us see if a model is really robust or not.

The old ways of designing systems do not work well with LeNet, a known convolutional neural network. When we use LeNet on the MNIST dataset, it gets about 99.26 per cent of the answers right. When we use it on MNIST-MIX, the accuracy of LeNet goes down to around 90.34 per cent. When things get even tougher, LeNet's accuracy drops to about 83.18 per cent. This tells us that LeNet has a time recognising digits when they are written in different languages, like the digits in the MNIST dataset and the digits in other languages. Recognising digits across languages is really tough for LeNet.

One reason for the decline in performance is that the system gets confused between numbers from writing systems that look really similar. For example, the LeNet system often gets Kannada digits and Arabic digits mixed up because they look a lot alike. This shows that the LeNet system has a time telling the difference between what something looks like and what it actually means when it has to deal with multiple scripts, like Kannada and Arabic digits.

Jiang and later Chen and colleagues wanted to see which architectures work better. They looked at four approaches: a standard convolutional neural network, ResNet, DenseNet and a convolutional neural network combined with Capsule Networks, which is also called CapsNet.

They trained these models with amounts of data to see how accurate they are and how well they can learn.

The Capsule Networks, or CapsNet, did the best. It got an accuracy of 99.75%.

What is really interesting about CapsNet is that it only needed about half the training data that the other models needed. The CapsNet models were able to learn as well with less data.

CapsNet is different from the CNNs because it shows features as vectors, not just single numbers. These vectors show that the features are there and how they are related to each other in space. This helps the model understand how different parts of a picture work together. This makes CapsNet really good at handling pictures, or when there is not a lot of data. It also shows that it is important to learn how things are related to each other, rather than just having more data or making the model bigger. CapsNet is good at this because it uses vectors to represent features, which is different from the usual way that CNNs work, with single values.

Other studies also agree with these findings. For example, Akinsola et al. conducted a study in 2025. They looked at how different artificial intelligence techniques worked on MNIST. These techniques included feed-forward neural networks, GANs and a CHAID decision tree. The deep learning models did a good job and were accurate about 97 per cent of the time. On the other hand, the CHAID decision tree did not do well at all; it was only accurate 29.61 per cent of the time. This shows that decision trees are not good for looking at image data. The artificial intelligence techniques, like learning models, are much better for image data than decision trees, like the CHAID decision tree.

Basha and the other people who worked with him in the year 2025 wanted to teach people who are new to machine learning the entire process of machine learning. They found out that old methods like Support Vector Machines can still work well when you prepare the data correctly, use the right evaluation metrics, and have good analysis tools for machine learning.

Overall, these studies show that model performance depends heavily on both architecture and dataset quality. Advanced architectures like CapsNet perform well on challenging datasets, while simpler methods struggle. Future work should address issues such as class imbalance, test models on more realistic images, and evaluate architectures like CapsNet on complex benchmarks such as EMNIST to improve real-world optical character recognition systems.

References

Jiang, W. (2020). MNIST-MIX: A multi-language handwritten digit recognition dataset. IOP SciNotes, 1(2), 025002.

Chen, F., Chen, N., Mao, H. And Hu, H. conducted a study in 2018. They looked at how four neural networks worked on a handwritten digit recognition dataset. They wrote about this in a paper that was posted on arXiv.

Akinsola, J. E. T., et al. (2025). Application of Artificial Intelligence on MNIST Dataset for Handwritten Digit Classification for Evaluation of Deep Learning Models. Acadlore Transactions on Machine Learning.

Basha, S. K. M., et al. (2025). Embarking on the MNIST Handwritten Digit Classification Challenge: A Beginner’s Journey into Image Data Analysis. Journal of Science Engineering Technology and Management Science, 2(6), 148–163.

***My sources were Google Scholar and Anara AI. I used Grammarly for the writing.***
