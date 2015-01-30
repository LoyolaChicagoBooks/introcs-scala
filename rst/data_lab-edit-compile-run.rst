.. index:: IntelliJ IDEA
   labs; IntelliJ IDEA


.. _lab-edit-compile-run:

Lab: Editing, Compiling, and Running with IntelliJ IDEA
=======================================================

This first lab is aimed at taking you through the end-to-end process of writing
and running a basic computer program with the IntelliJ IDEA environment. As
with all things in life, we will learn in this lab that becoming a programmer
requires you to learn a number of other things along the way.

In software development/engineering parlance, we typically describe a scenario
as a *workflow*, which can be thought of as a series of steps that are possibly
repeated. The workflow of programming can loosely be defined as follows:

#. Use a text editor to write your source code (human readable).

#. Compile your code using the Java Development Kit (SDK) into
   object code.

#. Link your object code to create an executable. (There are other
   kinds of results to produce, but we will start with the idea of an
   executable program to keep things simple.)  The default is to have
   an executable program created with compilation, automatically.

#. Run your program. Even for the most seasoned developers, your
   program may not work entirely right the first time, so you may end
   up repeating these steps (debugging).

These steps can all be done with different tools. Many find it simpler to have
an integrated tool, like IntelliJ IDEA, that does them all in the same place,
and automates the steps that do not need human interaction!  

If you are doing this on your own machine, make sure you have the Java
Development Kit and IntelliJ IDEA installed as in :ref:`development-tools`.
Other tools are available, like the development environment Eclipse (available
for all platforms).

Understanding the lower level tools that accomplish each step is important, but
we defer a discussion to get you going with IntelliJ IDEA.

Goals
-----

Our primary goal to create and understand an IntelliJ IDEA setup that you can
use to do all of the remaining homework assignments and labs for this course. 

.. index: IntelliJ IDEA; solution
   IntelliJ IDEA; project
   
.. _steps:

Steps
-----

IntelliJ IDEA files and interactions are organized hierarchically. At a low
level are individual Scala source code files, which are separated into ``main``
and ``test`` directories. One, or possibly more, are used for a particular
*project*. IntelliJ IDEA deals with one project at a time, though you can
separately create multiple projects. The simplest thing is to create a *single
project for this course*, and make a new Scala object for every assignment in
that one solution. You can keep adding onto previous efforts without having to
start over with a new project each time.

We start by creating a *project* from the splash menu. The images are from a
Mac, but other platform versions should be similar.

#.  Open IntelliJ IDEA, in the appropriate way for an application in your
    operating system. It should be in the Start menu for Windows. Using 
    Spotlight is quick on a Mac.

#.  You get a Welcome screen. Directly below the IntelliJ logo is the button to
    create a new project. Click on it.    

    ..  image:: images/lab-edit/newProject.png
     	:alt: IntelliJ IDEA Start Image
     	:align: center
        :width: 227.25 pt

#. You get a dialog window to fill out. Follow the order below.  
   Later parts may not be visible until you do the previous parts:

   - Select Scala in left hand side panel. If you do not see it, you need to
     install the Scala plugin as per the instructions in :ref:`development-tools`.
   - Select SBT (Scala Build Tool) from the center menu. Click Next.

   ..   image:: images/lab-edit/newProject.png
     	:alt: IntelliJ IDEA Dialog Image
     	:align: center
        :width: 489.3 pt

   - In the top field, "Project name" enter any name you like: We recommend 
     **work**, which will make sense for all your work for the course.
   - Leave the "Project Location" field below it as is or change it if you like.
   - Press the Finish button.
   
   ..   image:: images/lab-edit/projectSettings.png
     	:alt: IntelliJ IDEA Dialog Image
     	:align: center
        :width: 489.3 pt
   
   You now have created an SBT project in IntelliJ IDEA. If nothing appears
   immediately after clicking Finish, give IntelliJ a bit of time to configure
   your workspace.

#. Look at the IntelliJ IDEA window that appears. It should have two main
   sub-windows. The narrow one on the left is the Project window, containing a
   hierarchical view of the project. You should see your project name at the
   top of the folder hierarchy. Folders have a little triangle shown
   to their left. You can click on the triangle. A triangle pointing down means
   the inside of the folder is displayed. A triangle pointing to the right
   means the contents are not being displayed. Listed under the project name are
   *.idea*, *project* and *target*, that we will ignore for now. 

#. Our project is currently empty, so we need to add a Scala source file to
   run. Open up the *src* folder, which should contain a *main* and *test*
   folder. The *main* folder will contain most of our code, while the *test*
   folder normally contains files for test-driven development, which will be
   discussed later in the book and can be ignored for now. Open the *main*
   folder, right-click the *scala* folder and add a new Scala class by
   navigating the context menu (New -> Scala Class).

   ..   image:: images/lab-edit/newScalaFile.png
     	:alt: IntelliJ IDEA New File Dialog
     	:align: center
        :width: 485.25 pt

   You will be presented with a new dialog box with two fields. In the name
   field, type **LabOne** and in the *Kind* field select *Object*. Click Okay
   and you will be see your new Scala source file.

   ..   image:: images/lab-edit/newScalaObject.png
     	:alt: IntelliJ IDEA New Scala Object
     	:align: center
        :width: 485.25 pt
   
#. Now we need to give this Scala object something to do. There is already an
   object definition in our source file, just insert a ``main`` method into the
   object body like in the Painting example
   (:repsrc:`painting/painting.scala`).
   
.. literalinclude:: ../source/scala/hello/hello.scala
   :lines: 2-4

#. Right-click the Scala object from the Project window and select *Run 'LabOne'*
   to compile and run code. 

   ..   image:: images/lab-edit/runScalaObject.png
     	:alt: IntelliJ IDEA Run LabOne
     	:align: center
        :width: 389.25 pt
   
#.  Here IntelliJ IDEA combines several steps: saving the file, compiling it
    into an executable program, and starting running it if compilation
    succeeded. If this was successful, you should see the results print out at
    the bottom of your IntelliJ window.
    
    ..  image:: images/lab-edit/terminalOutput.png
     	:alt: IntelliJ IDEA Terminal Output
     	:align: center
        :width: 283.5 pt
   
    You have a chance to see the output of this simple program.
    You can also type into this window for more complicated programs.
    
#.  Now try a bit of editing: Look at the program to see where output came
    from. Change what is printed and run it, but don't eliminate the console
    window (so you can show it off).

#.  Now grab the instructor or teaching assistant so
    they can perform a quick inspection of your work and check it off
    (including the varied message printed).
    
Labs need to be completed to receive credit. If you are unable to make class on
a lab day, please make sure that you complete the work and demonstrate it by
the beginning of the next lab.

At this point, you have accomplished the major objective for this introductory
lab: to create an IntelliJ IDEA project, and enter, compile, and run a Scala
program. 

For further reinforcement
~~~~~~~~~~~~~~~~~~~~~~~~~

#. Can you make a new program variant print out two *separate* lines?
   
#. Download and install Java Development Kit and IntelliJ IDEA on
   your home computer or laptop.  
   
#. You can now add further objects to your *current* project.  
