#!bin/sh
echo "***********************************************************************************************************************************"
echo "1. Display current date in mm-dd-yy and dd-mm-yy format"
date +%m-%d-%y;
date +%d-%m-%y;
echo "***********************************************************************************************************************************"
echo "2. Create a directory named proj and set the directory with sticky bit"
mkdir -p proj/check;
chmod +t proj;
ls -ltr;
echo "***********************************************************************************************************************************"
echo "3."
echo "-----------------------------------------------------------------------------------------------------------------------------------"
echo "a) Using cat command, create an empty file called myfile and verify using ls command that the created file is zero-byte size."
cd proj;
cat > myfile;
ls -ltr;
echo "-----------------------------------------------------------------------------------------------------------------------------------"
echo "b) Now append some lines to the file and display the contents of the file."
echo "Comm'on, Enter something"
read line1;
echo "$line1" > myfile;
echo "Yeah, You successfully appended the first line"
echo "Look what you have entered, $line1"
cat myfile;
echo "-----------------------------------------------------------------------------------------------------------------------------------"
echo "c) Append some more lines to the file using >> redirection and verify that the lines are appended." 
cat >> myfile;
echo "Yeahh, You again appended one more line"
cat myfile;
echo "-----------------------------------------------------------------------------------------------------------------------------------"
echo " d) Now overwrite the file with some other lines and verify that the file is overwritten."
cat > myfile;
echo "Opps, you have overwritten all the file with:"
cat myfile;
echo "***********************************************************************************************************************************"
echo "4. In how many different ways file1 can be copied to file2. Check if your solutions indeed work."
echo "I'm new file" > file1;
echo "Through copy"
cp file1 file2;
echo "Content of file1 and file2"
cat file1 file2;
echo "Through cat"
cat file2 > file3;
echo "content of file 2 and file3"
cat file2 file3;
echo "***********************************************************************************************************************************"
echo "5. Use ls command to list only directories along with other attributes including inode number"
ls -di */;
echo "***********************************************************************************************************************************"
echo "6. Display the list of user names who have currently logged in"
w;
echo "***********************************************************************************************************************************"
echo "7. Create myproj directory in the login directory(home directory) and create src/include directory within myproject using a single command."
mkdir -p ~/myproj/src/include;
cd;
echo "Checking for include directory in myproj/src"
cd myproj/src;
pwd
ls
cd
cd Documents/Test;
echo "***********************************************************************************************************************************"
echo "8. How cp and mv commands behave when a file with target name already exists."
echo "Checking copy command"
cp cars cars;
echo "Checking move command"
mv cars cars;
echo "cp copies files to a target named by the last argument on its command line. If the target is an existing file, cp overwrites it, if it does not exist cp will create it. If the target file already exists and does not have write permission, cp denies access and continue with next copy." 
echo "***********************************************************************************************************************************"
echo "9. List all the files created today."
find . -mtime -1;
echo "***********************************************************************************************************************************"
echo "10. List all files which are larger than 1000 bytes."
find . -size +1000c;
echo "***********************************************************************************************************************************"
echo "11. List the directory entries (in long format) as per the following criteria."
echo "-----------------------------------------------------------------------------------------------------------------------------------"
echo "a) In ascending order of file size"
ls -laShr;        
echo "-----------------------------------------------------------------------------------------------------------------------------------"
echo "b) In sorted order of file type"
ls -l > sorted | sort sorted;
cat sorted;
echo "***********************************************************************************************************************************"
echo "12. List the number of occurances of particular file in your current directory."
ls | grep -c "file"
echo "***********************************************************************************************************************************"
echo "13. Paste two or three files in current working directory vertically with the delimiter ‘|’."
paste -d "|" number state capita;
echo "***********************************************************************************************************************************"
echo "14. List the last five lines of the particular file in current working directory."
tail -5 state
echo "***********************************************************************************************************************************"
echo "15. Create a file color.txt in current directory which has to have the below content
       Apple is Red in color
       Mango is YELLOW in color
       Orange is OranGE in color"
echo "Apple is Red in color" > color.txt
echo "Mango is YELLOW in color" >> color.txt
echo "Orange is OranGE in color" >> color.txt
echo "***********************Displaying color.txt************************************"
cat color.txt;
echo "***********************************************************************************************************************************"
echo "16. In task 15, All colors mentioned(Red, YELLOW, OranGE) replace with lower case letters and rewrite color.txt."
cat color.txt | tr "RAMOYELW" "ramoyelw" > test.txt;
cp test.txt color.txt;
cat color.txt;
echo "***********************************************************************************************************************************"
echo "This is end of Assignment 3"
echo "Thankyou"
echo "***********************************************************************************************************************************"
