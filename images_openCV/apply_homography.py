import cv2
import numpy as np
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("-i", action="store", dest="dst_name")
args = parser.parse_args()

# Read in distorted img
dst = cv2.imread(args.dst_name)


pts1 = np.float32([[10, 139],[26, 567],[759, 163], [721,553]])
pts2 = np.float32([[0, 0],[0, 599],[599, 0], [599,599]])

M = cv2.getPerspectiveTransform(pts1,pts2)
print(M)
# Get original image using affine transform
img = cv2.warpPerspective(dst, M, (600, 600))
# Display image
cv2.imshow('Original-Auto', img)
cv2.waitKey(0)
cv2.destroyAllWindows()
# Save image to folder
cv2.imwrite("not_switch.jpg", img)

