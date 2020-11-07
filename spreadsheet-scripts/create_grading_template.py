import shutil
import csv


def main():
	original = 'blank_template.pptx'
	with open('EE229-StudentList-29Sep.csv') as csv_file:
		csv_reader = csv.DictReader(csv_file, delimiter=',')
		for row in csv_reader:
			if not (any(c.isalpha() for c in row['Name']) and row['Roll No.'].isalnum()):
				continue
			roll_number = row['Roll No.']
			target = 'grading_template/{0}_Exam03.pptx'.format(roll_number)
			shutil.copyfile(original, target)


if __name__ == '__main__':
    main() 