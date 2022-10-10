# Pandoc Template for scientific writing

## Installation

1. Install MikTex
2. Pandoc (MsiInstaller): [Downloadlink-Github](https://github.com/jgm/pandoc/releases)

## Usage

### Creating the template for the document 
1. Copy the shell script laproject.sh in the folder Scripts to the location at your PC, where you want to create the document.
2. Double click on the shell script. It is going to create the newest version of the template.
3. In the pop up command prompt answer the questions.
4. After that you can work on your document in the created folder

### Working on the document


1. In the metadata.yml you can specify your meta options for the compiled file.
2. Use Zotero to manage citations and your bibliography. A updated AMITRONICS bibliography is stored on the AMITRONICS nextcloudserver: [Link to the AMITRONICS Zotero bibliography](https://amitronics.net/apps/files/?dir=/Wissen/Literatur/Libary_Zotero&fileid=6944)
3. Save the images, which you want to use in your document, in the folder images.
4. In the folder src create the markdown files for the particular chapters or section of your document. In case of short documents it is also possible to just use one file. All Markdown files in that folder are going to be compiled. In the output file the chapters have the same order like the order of the markdown files in the folder.
5. **Double click on run.sh** : To compile your Markdown document into a pdf
6. The pdf file is stored in the folder output.

