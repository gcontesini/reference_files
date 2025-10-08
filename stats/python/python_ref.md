~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ PYTHON
-------------------------------------------------------------------------------------------------- Variables
Variables are not type declared and always behave as pointers if needed.
	foo = 1				- (Int) Signed integers
	bar = 10			- (Float) Floating point real values
    	cow = 3.14j		- (Complex) Complex numbers
	foo = 'bar'			- (String) String, contiguous set of characters.
	cow = [ 'foo',2 ]	- (list) List, compound data types.
	dic = {'cow':10}	- (dictionary) Hash table.	
---------------------------------------------------------------------------------------------------- Casting
int( )			float( )		complex(real [img])		str( )
repr( )		eval( str )		tuple( )				list( )		
set( )		dict( )		chr( )				unichr( )
ord( )		hex( )		oct( )				type()
-------------------------------------------------------------------------------------------------- Operator
- Standard Operators:
	+ 	- Addition.		- 	- Subtraction.	* 	- Multiplication. 	
	/ 	- Division.		% 	- Modulus.		** 	- Exponent.
	= 	- Assign	.		+= 	- Add and assign.
	-= 	- Subtract and assign. *= 	- Multiplyand assign.
	/= 	- Divide and assign.	%= 	- Modulus assign.
	in 	- True, if var in.		not in - True if var not in.
	& 	- Bin AND. 	^ 	- Bin XOR.
	<< 	- Bin Left Shift. 	>> 	- Bin Right Shift.
	**= 	- Exponent and assgin.
- Conditional Operators:
	== 	- Equal,		!= 	- Not equal.
	> 	- Greater. 		< 	- Smaller.
	>= 	- Greater of eq.	<= 	- Smaller or eq.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ FUNCTIONS
def foo( arg_1,			- Define a function named foo w/ arg arg_1.
    	arg_2=false,		- Default value of arg_2 is false.
	*args ):			- Infinite arguments.
...	code a
def f(arg_1): return code	- One line function.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  DATA STRUCTURES
list.append( ) 				- Add an item to the end of the list;
list.appendleft( ) 			- Add x to the left side of the deque.
list.extend(list) 			- Append all the items in the given list;
list.extendleft(list)		- Append left elements from list.
list.insert( index, value )	- Insert an item at a given position.
list.remove( )			- Rm the first item from the list whose value is x.
list.pop( [ index ] )		- Rm the item at the given position and return it.
list.popleft( )			- Rm and return an element from the left side,
list.index( )			- Return the item index in the list of the w/ value.
list.count( )			- Return the num of times arg appears in the list.
list.sort( list )			- Sort the items of the list in place.
list.reverse( )			- Reverse the elements of the list, in place.
list.clear( )				- Rm all elem from the deque leaving it with len 0.
list.count( )			- Count the number of deque elements equal to x.
list.rotate( n )			- Rotate the deque n steps to the right.
range( b, e, s ) 			- Gen a list, starts on b, step s, ends in e-1.
len( list ) 				- Returns the size of list.
filter( function, seq ) 		- Returns seq from seq which function is true.
map( function, seq ) 		- Calls function(item) for each of the seq.
reduce( function, seq )	- Returns a single value, call the bin func function.
del list[ index ]			- Rm an item from a list given its index.
---------------------- Conditional ----------------------- Loop ---------------- Try & Exceptions
if Condition:			for list  Condition:	try:	
...	code a			...	code a		...	code_a
elif Condition:							...	raise "msg"
...	code b			while Condition:		except exception:
else Condition:			...	code a		... 	code_b
...	code c
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  EXCEPTIONS
Exception        		- All built-in, except are derivated from this class.
ArithmeticError 		- Arithm errors:[ OverflowError, FloatingPointError, ... ].
BufferError				- A buffer related operation cannot be performed.
LookupError	     		- Invalid key or index: [ IndexError, KeyError ]
EnvironmentError 		- Exceptions that occur outside: [ IOError, OSError ].
AssertionError      	- An assert statement fails.
AttributeError      	- An attribute refor assignment fails.
EOFError 				- Input() hits an EOF without reading any data
KeyboardInterrupt   	- The user hits the interrupt key, Ctrl-C or Del.
MemoryError         	- An op runs out of memory.
NameError           	- A local or global name is not found.
SystemError         	- The interpreter finds an internal error.
TypeError           	- An op or func is applied to an object of wrong type.
UnboundLocalError   	- A ref  to a local var in a func, but it has no value.
ValueError          	- A op or func receives an arg that has wrong value
RuntimeError        	- An error falls w/ no other categories.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ IN-OUTPUT
foo = input(  )				- Reads input from keyboard.
print '%1.3', var				- Print 'string' and value of var w/ precision.
foo = open('bar', 'w')			- Open a file named 'bar'. 
[ 'w'	- Write.'r'	- Read.	'a'	- Append.		'r+'	- Read and Write. ]
foo.read( )			- Reads the file.	foo.readline( )	- Reads one line.
foo.write( str )		- Writes str.	foo.close( )	- Closes the file.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ OO
class FooClass( object ):		- Motther Class.
...	cow = 'bar'			- Class attr, shared by all instances. 
...     self.foo = 'bar'			- Local attr, belongs only to local obj.
class BarClass( object )		- Abstract class.
...	pass
class CowClass( object,		- Daughter class.
	FooClass,				- First Mother.
	Barclass):				- Multiple inheritance.
...	'Cow class'			- __doc__ doc str.
'attr':
...	self.spam				- Public attr.
...	self._eggs				- Non-Public attr.
...	self.__bacon			- Private attr.
'method:'
...	__init__(self,arg_):		- Constructor.
	__del__(): 				- Destructor.
... 	def setFoo(self,arg_):		- Public Methd.
...	def __getFoo(self):		- Magic method, avoids overwrite and public-access.
main():
	a = CowClass(argv)		- Instance a new obj.
	a.setFoo()				- Call public obj method.
	a._CowClass___getFoo()	- Access private obj magic method.
------------------------------------------------------------------------------------------ Built-In Class Methods
it = iter('abs') 				- Turns an obj to a interator.
it.next()					- Accesses next elem of it e.g:'a'
getattr(obj, name[,]) 			- Access the attr of obj.
setattr(obj,attr,value) 		- Set an attr. Creates, if attr doesn't exist.
hasattr(obj,attr) 			- Check if an attr exists.
delattr(obj,attr) 				- Del an attr.
---------------------------------------------------------------------------------------- Built-In Class Attributes
__dict__:					- Dic containing the class's namespace.
__doc__: 					- Class doc str or none, if undefined.
__name__: 				- Class name.
__module__: 				- Module name in which the class is defined.
__bases__: 				- A tuple containing the base classes.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ STANDARD LIBRARY
----------------------------------------------------------------------------------------------------------- OS & SYS
os.environ 				- A mapping object representing the str env.
os.name 					- The name of the os dep mod imported.
os.uname()    				- sysname, nodename, release, version, machine.
os.chdir(path)   				- Change the current working dir to path.
os.getcwd()				- Return a str representing the current working dir.
os.listdir(path)    			- Return a list contains the names in the dir given.
os.mkdir(path[, mode])		- Create a dir named path with num mode mode.
os.remove(path)			- Remove (del) the file path.
os.system(command)			- Exec the command in a subshell. 
os.times()    				- Float indicating processor times(sec).
os.wait()    				- Wait for completion of a child process.
sys.argv					- The list of cmd line arg passed to a Python script.
sys.dont_write_bytecode		- Python won’t try to write .pyc or .pyo.
sys.executable				- A str giving the absolute path of the exec bin.
sys.modules 				- This is a dic that maps mod names loaded.
sys.path 					- A list of str that specifies the search path for mod.
sys.exc_clear()				- Clears all information relating to the current.
sys.maxint 				- Largest (>0) int supp by Python’s reg int type.
sys.maxunicode				- An int w/ the largest supp code for a Unicode char.
sys.version 				- Str containing the Python version.
sys.subversion 				- Str containing the Python subversion.
sys.copyright				- A str containing the copyright pertaining.
sys.exit([arg])				- Exit from Python.
sys.platform 				- This str contains a platform id.
[ Linux 	'linux2'	;	Windows 	'win32'	;	Mac OS X	'darwin']
---------------------------------------------------------------------------------------------------- Math Functions
math.abs(x)		math.fabs(x)		math.floor(x)		math.ceil(x)
math.max(x1, x2,...)	math.min(x1, x2,...)	math.exp(x)		math.log(x,[base])
math.pow(x, y)		math.modf(x)		math.round(x [,n])	math.sqrt(x)	
math.copysign(x, y) 	math.factorial(x)	math.frexp(x)		math.isinf(x)	
math.isnan(x)		math.trunc(x)		math.hypot(x, y)		math.degrees(x)
math.radians(x)		math.sin(x)		math.cos(x)		math.tan(x)
math.acos(x)		math.asin(x)		math.atan(x)		math.atan2(y, x)
math.cosh(x)		math.sinh(x)		math.tanh(x)		math.acosh(x)	
math.asinh(x)		math.atanh(x)		math.erf(x)		math.erfc(x)
math.gamma(x)		math.pi 			math.e
math.cmp(x, y)		- (-1) if x < y, (0) if x == y, or (1) if x > y.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ THIRD-PARTY LIBRARIES
----------------------------------------------------------------------------------------------------------------- NUMPY
import numpy as np
np.array([],dtype=int)
np.zeros(shape,)                    	np.ones(shape,)
np.eye(2)                           	np.arange( , , , )
np.linspace(10,20,5)                	np.logspace(1,10,num=10, base=2)
for i in np.nditer(arange(0,1,.1)):	print i
--------------------------------------------------------------------------------------------------------- MATPLOTLIB
from matplotlib import pyplot as plt
import numpy as np
import math as math
# Data Creation
x_data = np.arange(0.01,10.,1).tolist()
def f(x_float): return math.log(x_float)
def g(x_float): return x_float*x_float
y_data = map(f,x_data)
z_data = map(g,x_data)
w_data = map(g,z_data)
plt.figure(1)
# First Plot
plt.subplot(211)
plt.plot(x_data,z_data,'r^',x_data,w_data,'bs')
plt.title('My Plot')
plt.text(6, 6000, r'$f(x)=x^{2}$',bbox=dict(facecolor='red', alpha=0.75))
plt.annotate('This is Cow', xy=(1, 0), xytext=(2, 1000),
... 	arrowprops=dict(facecolor='green'),)
plt.xlabel('x axis.')
plt.ylabel('y axis.')
plt.grid(True,color='b', which='both', linestyle='--', linewidth=0.1)
# Second Plot
plt.subplot(212)
plt.xscale('log')
plt.plot(x_data,y_data,'b+')
plt.grid(True,color='b', which='both', linestyle='--', linewidth=0.1)
plt.show()
---------------------------------------------------------------------------------------------------------------- SYMPY
import sympy
init_printing(use_unicode=True)
x,y = sympy.symbols('x','y')   	f = Function('f')
a = (x + 1)**2                  		c = x**2 - 2*x + 1
simplify(a - c)                 		expand((x+2)*(x-3))
factor(x**2+2*x*y+y**2)         	cancel((x+y)**2/(x**2+x))
apart((5*x**2+2*x+20)/(4*x))    
Eq(x + 1, 4)                    		solveset(Eq(x**2, 1),x,domain=S.Reals)
trigsimp(sin(x)**2+cos(x)**2)   	tan(x).rewrite(sin)             
expr = x + 1                    		expr.subs(x, 2)                 
f = lambdify(x, expr, "math")  	f(0.1)
factorial(n)                    		binomial(n, k)
gamma(z)                        		combsimp(gamma(x)*gamma(1-x))
diff(cos(x), x, x)              		integrate(cos(x), x, x)
integrate(exp(-x**2),(x,-oo,oo))	limit(1/x, x, 0, '+')           
dfdx = f(x).diff(x)             		integrate(dfdx,x)
diffeq = Eq(f(x).diff(x, x) - 2*f(x).diff(x) + f(x), sin(x))
dsolve(diffeq, f(x))
M = Matrix([[1, 3], [-2, 3]])   N = Matrix([[0, 3], [0, 7]])
M + N                     	M*N			3*M                           M**2
M**-1                      	M.T			eye(3)                     	zeros(2, 3)
ones(3, 2)               	diag(1, 2, 3)	M.det()                   	M.rref()
M.eigenvals() 		M.eigenvects()	M.nullspace()          	M.columnspace()
P, D = M.diagonalize() 			P*D*P**-1 == M
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Doctest 
'''	Unittest
>>> [func(n) for n in range(6)]
[1, 1, 2, 6, 24, 120]
>>> func(3) == 7
True
'''
def func(n):
    return n
import doctest
doctest.testmod()
$ python foo.py -v			- Call doctest.[ __doc_- MUST COME FIRST! ]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  OTHER LIBRARIES
decimal		- For float precision.		datetime 	- Dates and times
urllib2 		- Work w/ URLs.			timeit	- Measure execution time.
ipython		- Interactive Python.		tkinter	- GUI module.
basemap 		- lib for 2D data on maps.	unittest	- Unittest env.
lxml			- XML manipulation.		MySQLdb	- SQL dev.
pygame		- Game dev.			django 	- Web dev.
pyqtgraph		- Graph functions.		gravipy	- General Relativity calc.
thread		- Parallel python.		virtualenv  - Virtual env. creator,
py2exe	 	- Stand-alone for MS OS.	pyapp	- Stand-alone for MAC OSX
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  SELF-MODULES
---------------------------------------------------------------------------------------------- Standard Modules
------------------------------------------------------------------------------------------------- Modules Search
dir() 
-------------------------------------------------------------------------------- Importing * From a Package
---------------------------------------------------------------------------------------------------------- Packages
-------------------------------------------------------------------------------------------------------------------- Pip
pip [cmd]
       help   		- Show help for commands.
       install              	- Install packages.
       uninstall		- Uninstall packages.
       freeze 		- Output installed packages in req format.
       list   			- List installed packages.
       show   		- Show information about installed packages.
       search 		- Search PyPI for packages.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ RESERVED WORDS
and		exec		Not		as		finally	or		assert	for	
pass		break	from		print		class	global	raise	if	
continue	return	def		import	try		del		in		while
elif	is	with		else 		lambda 	yield		except
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ INTERPRETER
#!/usr/bin/python	- SHEBANG for python 2.7
#!/usr/bin/python3	- SHEBANG for python 3.4
# -*- coding: utf-8 -*-	- UTF-8 encoding
-d				- It provides debug output.
-O				- It generates optimized bytecode.
-S				- Do not run import site to look for Python paths.
-v				- Verbose output (detailed trace on import statements).
-c cmd			- Run Python script sent in as cmd string.
file			- Run Python script from given file.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ COMPILATION
# If a file .pyc E in the dir where .py is found, this is assumed to have an “byte-compiled” ver of the mod .py. The mod time of the version of .py used to create.

# When the Python interpreter is invoked with the -O flag, optimized code is generated in .pyo files. 

# Passing two -O flags to the Python interpreter (-OO) will cause the bytecode compiler to perform optimizations that could in some rare cases result in malfunctioning programs.

# A program doesn’t run faster when it is read from a .pyc or .pyo file than .py file;

# It is possible to have a file called .pyc or .pyo w/out a file .py module. 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  END
Man: 	Well, what've you got?

Waitress: 	Well, there's egg and bacon; egg sausage and bacon; egg and spam; 
		egg bacon and spam; egg bacon sausage and spam; spam bacon 
		sausage and spam; spam egg spam spam bacon and spam; spam 
		sausage spam spam bacon spam tomato and spam;

Waitress: 	...spam spam spam egg and spam; spam spam spam spam spam 
		spam baked beans spam spam spam...

Waitress: 	...or Lobster Thermidor au Crevette with a Mornay sauce served in a 
		Provencale manner with shallots and aubergines garnished with truffle 
		pate, brandy and with a fried egg on top and spam.

Wife: 	Have you got anything without spam?

Waitress: 	Well, spam egg sausage and spam, that's got not much spam in it.

Wife: 	I DON'T LIKE SPAM!
											- Contesini [Jan/2017]