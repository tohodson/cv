PDFLATEX = /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin/pdflatex
TEX = $(PDFLATEX) -shell-escape -interaction=nonstopmode -file-line-error
PRE =  $(TEX) -ini -job-name="preamble" "&pdflatex preamble.tex\dump"

all : cv resume

clean : 
	    rm *.pdf *.aux *.log *.out
view :
	    open cv.pdf

# LONG CV
cv : cv
	    $(TEX) cv.tex

# 1-PAGE CV
cv1 : cv1
		$(TEX) cv1.tex

# RESUME
resume : resume
		$(TEX) resume.tex
