/*
	this code take an input file of floating numbers and convert it into binary ( 2's complement ) and
	out it into new file
*/
#include <cstdlib>
#include <cmath>
#include <ctime>
#include <iostream>
#include <string.h>
#include <fstream>
#include <stdio.h>
#include <sstream>
#include <cstring>
#include <bits/stdc++.h>
// define macros to change the position of the fixed point
#define I_bits 8	//number of integer bits
#define Q_bits 8	    //number of fraction bits
using namespace std;
int main(int argc, char *argv[])
{
	// read the input file , input file is a set of float random numbers
	// the name of the input and output files is given by the user
	ifstream input_file;
	input_file.open(argv[1]);
	ofstream output(argv[2]);					// open output file to save the binary convert result in it
	if(!input_file||(!input_file.is_open())) 	// check if the input file is found
	{
		output<<"Input file not found";
		return 0;
	}
	// read the input file line by line
	string line;
	while(getline(input_file,line))
	{
		bool flag=0;					// flag used to check if the number have fraction part (1)or not
		bool flag_sign=0; 			// flag used to check if the number is positive (1) or negative (0)
		int dot=0;						// variable to save the position of the dot
		int i;								// counter to loop on the digits of the number
		string int_part;				// variable to keep the integer part in it
		signed int int_part_d;		// variable used to convert the integer part from string type to int type
		string fraction_part;	 		// variable to keep the fraction part in it
		float fraction_part_d;		// variable used to convert the fraction part from string type to int type
		int length=line.length();	// get the length of the line
		istringstream iss(line);
		for (i=0;i<length;i++)
		{
			// check if the number is negative
			if(line[0]=='-')
			{
				flag_sign=1;
			}
			// check if the number has fraction part
			if(line[i]=='.')
			{
				dot=i;
				flag=1;
				break;
			}
		}
		// if the number has fraction part
		if(flag==1)
		{
			if(flag_sign==1)
			{
				int_part=line.substr(1,i);	// if the number is negative and has fraction save the integer part without the sign
			}
			else
			{
				int_part=line.substr(0,i); //if the number is positive save it as it is
			}
			fraction_part="0"+line.substr(i,length-1);
			stringstream geek(int_part); 				// convert to int type
			geek >> int_part_d;
			fraction_part_d=stof(fraction_part);		// convert to int type
		}
		else
		{
			// if the number doesn't have fraction part
			if(flag_sign==1)
			{
				int_part=line.substr(1,length);	// throw the sign and take the integer part as positive
			}
			else
			{
				int_part=line;
			}
			fraction_part= "0";
			stringstream geek(int_part);
			geek >> int_part_d;
			fraction_part_d=stof(fraction_part);
		}
		// define arrays to save the binary result
		int int_part_arr[I_bits]={0},fraction_part_arr[Q_bits]={0} ,j,k; // j and k are counters
		bool flag_first=1; 																	// used in the 2's complement conversion means it's the first '1' in the number
		// code part to convert fraction by multiplying it by 2
		int temp; 			// temp is integer to take if the value is '1' or '0'
		for(j=0; j<Q_bits; j++)
		{
			fraction_part_d=fraction_part_d*2;    	//e.g 1.5 = 0.75*2
			temp=fraction_part_d;							// temp = 1 as  it's int will throw the fraction
			fraction_part_arr[j]=temp;					// save temp =1 in the array
			fraction_part_d=fraction_part_d-temp;	// remove the temp value (1) to loop again
			// loop finishs when the j reachs the deteminate number of fracyion bits
		}
		int z;
		// convert the integer part into binary
		for(j=0; j<I_bits; j++)
		{
		int_part_arr[j]=int_part_d%2;
		int_part_d= int_part_d/2;
		}
		// if the number is negative get it's 2's complement
		if(flag_sign==1)
		{
			// if has fraction part
			if(flag==1)
			{
				for(z=Q_bits; z >= 0;z--)		// (z=Q;z<Q_bits;z++)
				{
					// if it's the first 1 skip it and begin conversion between 0 and 1 after it
					if(fraction_part_arr[z]==1 && flag_first)
					{

						flag_first=0;
						continue;
					}
					if(flag_first==0)
					{
						// conversion of the bits
						if(fraction_part_arr[z]==0)
						{
							fraction_part_arr[z]=1;
						}
						else
						{
							fraction_part_arr[z]=0;
						}
					}
				}
				if(flag_first==0){
				for(k= 0;k< (I_bits);k++)
				{
					if(int_part_arr[k]==0)
					{
						int_part_arr[k]=1;
					}
					else
					{
						int_part_arr[k]=0;
					}
				} }
			}
			else
			{
				flag_first=1;
				for(k= 0;k< (I_bits);k++)
				{
					// if it's the first 1 skip it and begin conversion between 0 and 1 after it
					if(int_part_arr[k]==1 && flag_first)
					{
						flag_first=0;
						continue;
					}
					if(flag_first==0)
					{
						if(int_part_arr[k]==0)
						{
							int_part_arr[k]=1;
						}
						else
						{
							int_part_arr[k]=0;
						}
					}
				}
			}
		}
		// output the integer part in the file
		 for(j=I_bits-1 ;j>=0 ;j--)
		{

		output<<int_part_arr[j];
		}
		// output the fraction part in the file
		for(j=0 ;j<Q_bits;j++)
		{
		output<<fraction_part_arr[j];
		}
		output<<endl;
		}
	}
