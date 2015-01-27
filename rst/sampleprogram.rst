
.. index:: introduction

.. _sample-program:
    
A Sample Scala Program
======================

As a start let us consider a ridiculously simple problem and a program to solve
it. Suppose you paint the walls of rooms in one color and the ceiling in
another, and you want to calculate the size of the areas to cover with paint.
For simplicity ignore doors. What data do you need to start with? Clearly the
dimensions of the room. Suppose we consider modern houses where the height of
the room is predictably 8 feet, so the new starting data is just the length and
width of the room.

You need to:

#. Obtain the length and width from the user.
#. Calculate the wall area and ceiling area.
#. Let the user know the results.

This is a very simple programming pattern: data in, calculate results, output
results. In this case the calculations in the middle are very easy.

In the examples that you should have downloaded is a first simple program,
:repsrc:`painting/painting.scala`.

Here is what it looks like when it runs, with the user typing the 20.5 and the
10:

.. code-block:: none

    Calculation of Room Paint Requirements
    Enter room length: 20.5
    Enter room width: 10
    The wall area is 488.0 square feet.
    The ceiling area is 205.0 square feet.
    
This is not very exciting, but it is a simple place to start seeing basic
program features. We will refer back to this sample run while discussing the
program. Here is the text of the program:

.. literalinclude:: ../source/scala/painting/painting.scala
   :linenos:

This section gives an overview of a working program, even if all the
explanations do not make total sense yet.  This is a first introduction of
concepts and syntax that gets fully explained in further sections.

Do not worry if you not totally understand the explanations! Try to get the
gist now and the details later. 

The different colors are used in modern program editors to emphasize the
different uses of the parts of the program.
    
We give a line by line explanation:

.. literalinclude:: ../source/scala/painting/painting.scala
   :lines: 1

A basic unit in Scala is an *object*. Our code sits inside an object. Each
class has a *heading* with ``object`` followed by a name. This class is
``Painting``. After the heading comes a *body* delimited by braces. The opening
brace ``{`` in the first line, is matched by the closing brace ``}`` on the
last line of the program.

Lines 3, 9, and 12 are blank. This is merely for the human reader to separate
sections visually. The computer ignores them.

.. literalinclude:: ../source/scala/painting/painting.scala
   :lines: 2

A class is broken up with chunks called *functions* or *methods*. Functions are
a discrete set of instructions that can be repeated throughout the program.
Each has a *heading* started with ``def`` and is followed by the name of the
function, its *arguments* surrounded by parentheses, and its *return type*
preceeded by a colon. Arguments are passed into the function to change its
behavior, in this example there is only one argument named ``args``. The return
type of the method ``main`` is a ``Unit``, which will be described later in the
book.

Every program must start running somewhere. In Scala that is at a function with
name ``main``, so our program starts running here. This syntax for this
function needs to start just like here, with ``main(args: Array[String])``.

After the function heading comes a *body*. Like with a class, a function body
is delimited by braces. The opening brace here is matched by the closing 
brace on the second to last line of the program.

.. literalinclude:: ../source/scala/painting/painting.scala
   :lines: 3

To refer to data in a program we use names called *variables*, and they can be
defined by using the keywords ``val`` or ``var``. Variables defined by ``val``
can not be changed later in the program, where as ``var`` allows changes to be
made to the variable. This line says that the variable ``height`` contains the
value ``8``.

.. literalinclude:: ../source/scala/painting/painting.scala
   :lines: 4-5

Another example of a function is ``println``, which has been defined for us
already. ``println`` accepts a *string* argument and displays it in the
terminal. While you are used to a parameter for a function in math being a
number, functions in Scala are much more general. A function can be defined
with any type of parameters. Here the parameter is a string, ``"Calculation of
Room Paint Requirements"``, delimited by the quotes at either end. ``println``
has as sister method called ``print``, which behaves exactly the same except it
will not start printing to the next line. This allows user input to be on the
same line as printed output.

.. literalinclude:: ../source/scala/painting/painting.scala
   :lines: 7

Here is where the program takes in the information requested from the user.
Its action is actually right to left: ``readDouble`` is another function
available in Scala that reads a line typed in by the user on the keyboard. It
returns a ``Double``, which is a variable datatype that holds a real number (an
integer with a decimal value). In the sample run, on the same line as the
prompt string (because of the previous ``print``, not ``println``), the user
types ``20.5`` and the Enter or Return key.

In the sample run, the value produced by the ``readDouble`` function is these
four characters ``20.5``. The returned value is then assigned to the variable
``length``. The ``=`` indicates an *assignment statement*. It is an
*assignment* of the value on the right of the equal sign to be the current
value of the variable on the left of the equal sign. 

.. literalinclude:: ../source/scala/painting/painting.scala
   :lines: 8-9

These lines are analogous to the previous three lines: give a prompt for the
user, get the user response, and assign to a variable (``width`` in this case).
In the sample run the variable ``width`` is assigned the value 10.

.. index:: comment
   // comment

At this point we have all the data we need from the user.  The next part is
the brief calculations of results:

.. literalinclude:: ../source/scala/painting/painting.scala
   :lines: 11-12

At the end of the first line is a *comment*. It starts with ``//`` and ends at
the end of the same line. It is ignored by the compiler. It is there for
humans, hopefully to add something that helps understanding of the program.
  
We have two assignment statements. The values to assign are given by arithmetic
expressions on the right side of the equal signs. It looks pretty much like
regular math, except in math class you may be used to only having one letter names
for variables, unlike ``length``, ``width``, and ``height``.

The tradeoff for allowing multiple character names is that multiplication must
have an explicit operation symbol. The symbol used for multiplication in Scala
is ``*`` an asterisk. The ``+`` and parentheses serve their normal mathematical
purpose. In the sample run, the value of ``2 * (length + width) * height`` is 

.. code-block:: none

   2 * (20.5 + 10) * 8
   
which simplifies to 488.0. The decimal value is added because ``wallArea``
contains a Double.

With the sample run, ``ceilingArea`` would get the value 20.5 * 10, or 205.

.. literalinclude:: ../source/scala/painting/painting.scala
   :lines: 14

Again ``println`` will print something to the computer console. This time the
string printed is more complicated: The string is preceded by the letter ``s``,
which tells the compiler to substitute things into the string. It is proceeded
by the literal string ``"The wall area is "``, but then we want to print out
the calculated result. The ``$wallArea`` allows that by inserting the value of
``wallArea`` (488 in the sample run) into the string. The rest of the string
immediately follows it.

In the sample output you see what is printed:

.. code-block:: none

     The wall area is 488.0 square feet.

inserting the value taken from the variable ``wallArea`` inside the string,
given in quotes.

.. literalinclude:: ../source/examples/painting/painting.cs
   :lines: 15
 
This statement behave like the previous one, except with different
quoted strings and the value of a different variable. See the sample output.

.. literalinclude:: ../source/scala/painting/painting.scala
   :lines: 16-17
 
Finally we have the matching closing braces marking the end of the body of the
``main`` function and the end of the body of the ``Painting`` object.

Of course the display would look different if the user entered different data.
Here is what is displayed when the user enters length 15 and width 6.5:

..  code-block:: none

    Calculation of Room Paint Requirements
    Enter room length: 15 
    Enter room width: 6.5
    The wall area is 344.0 square feet.
    The ceiling area is 97.5 square feet.

.. index:: whitespace

The blank space in the program was there to aid human understanding. In a Scala
program *whitespace* is any consecutive combination of spaces, newlines, and
tabs. Scala treats any amount of whitespace just the same as a single space,
except inside quoted strings, where every character is important.  

Also the compiler does not require whitespace around special symbols like
``{};().=*+,``. Hence  the :repsrc:`painting/painting.scala` program above
would be just as well translated by the compiler if it were written as:

.. code-block:: none

   object Painting{def main(args:Array[String]):Unit={val height=8; 
   println("Calculation of Room Paint Requirements");
   print("Enter room length: ");val length=readDouble();
   print("Enter room width: ");val width=readDouble();
   val wallArea=2*(length+width)*height;//ignoredoors
   val ceilingArea=length*width;println(s"The wall area is $wallArea square feet.");
   println(s"The ceiling area is $ceilingArea square feet.");}}

Since human understanding is very important, we will emphasize good whitespace
conventions, and expect you to use them.

Next we give you an even simpler program to run in the lab. After that we
return to how you can get the painting program to run on your computer.
