PDFLATEX = /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin/pdflatex
TEX = $(PDFLATEX) -shell-escape -interaction=nonstopmode -file-line-error
PRE =  $(TEX) -ini -job-name="preamble" "&pdflatex preamble.tex\dump"

all : cv resume

clean : 
	    rm *.pdf *.aux *.log *.out
view :
	    open cv.pdf

cv : cv
	    $(TEX) cv.tex

resume : resume
		$(TEX) resume.tex
