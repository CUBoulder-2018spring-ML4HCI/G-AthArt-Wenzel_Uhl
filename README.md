# Athletic DTW project Max Wenzel and Christoph Uhl

Our goal was to make an interface using micro-bits that would detect if you are sitting with good posture or not.

We used two micro-bits to collect accelerometer data. They are meant to be positioned such that one is placed on your lower back and the other is between your shoulder blades. We used the example wekinator 3 input processing sketch for each, with two computers one on each.

In order to represent good posture we used a processing program that took in data from two different microbits and then found the difference between them as to represent them being unaligned and therefore when they're attached to upper and lower back they will represent how straight someone's back is. This meant that when the micro bits were in the same orientation they would output a value close to zero.

We just used the out of the box dynamic time warping algorithm with the default settings for our project. This was the best choice for what we were doing as the dynamic time warping allowed for the recognition of sitting up straight or slouching. 


The work we did could probably be improved upon by being combined with several other sensors that could measure other things such as brain activity or breathing so that they would provide other forms of feedback.

# Link: 
https://youtu.be/eVrJvut9i6Y
