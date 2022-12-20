#!/usr/local/bin/Rscript

#library(readJDX)

## define arguments so the Rscript can be run from commandline
args <- commandArgs(trailingOnly = TRUE)

## open connection to read the binary file as standard input
to.read <- file("stdin", "rb")
## read the binary file and all the 10 bytes in it (n=10)
my_data <- readBin(to.read, raw(), n=10)

## manipulate hexadecimal to numeric and add +1 to each element
dec_data <- as.numeric(my_data)
new_data <- dec_data + 1

## convert new numeric data back to hexadecimal
hex_out <- as.raw(as.hexmode(new_data))
#mat <- t(matrix(hex_out, nrow = 10))

## output to standard output (default = terminal/command line)
cat("each byte in the standard input incremented by 1: ")
cat(hex_out, sep = "\n")


## intentional errors to standard error (default = terminal/command line)
cat(hxe_out, sep = "\n")


## errors, warnings and messages to standard error
#message("A message from message()")
#arning("A warning from warning()")
#stop("this is a stop, or error!")







## create a tempfile to store stderr and stdout
#tf <- tempfile(pattern = "SinkDemo", fileext = "bin")
#sinkall(tf)

## define stdout


#


#cat(hxe_out)

## pass stdout and stderr to the file
#sinkall()
#file.show(tf)
# ## open connection to write the binary file
# zz <- file("stdout", "wb")
# 
# ## write the binary file
# writeBin(hex_out, zz)
# 
# close(zz)