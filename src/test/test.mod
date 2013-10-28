/**
* \defgroup Test_Module Unit Test Framework
*
* A framework for constructing unit tests for other classes.
*
* The src/test directory contains source code for a simple unit test 
* framework for C++ code. The library contains only header files, in which 
* all member functions are inlined.  There are several simple programs that 
* illustrate library usage are in the src/test/examples/ subdirectory.
* 
* \section Test_Module_Design Design Overview
*
* The unit test framework contains classes UnitTest, TestRunner, and 
* CompositeTestRunner, and a class template named UnitTestRunner.
* 
* UnitTest is a base class for classes that implement unit test methods. 
* Each subclass of a UnitTest should have one or more test methods, each
* of which should contain one or more assertions. Each assertion must be 
* implemented using the the TEST_ASSERT(expression) macro to test the 
* truth of a logical expression.  Files that define subclasses of UnitTest 
* should include the files "UnitTest.h" and "UnitTestRunner.h". 
* 
* TestRunner is an abstract base class for classes that run test methods.
* The run() method of a TestRunner runs a sequence of associated test 
* methods. TestRunner is base class for the UnitTestRunner class template 
* and for the class CompositeTestRunner.
* 
* UnitTestRunner is a class template that takes a subclass of UnitTest 
* as a template argument. The run() method of a UnitTestRunner runs all 
* of the test methods of the associated UnitTest subclass. For example, 
* UnitTestRunner<TestA>::run() runs all the test methods of a UnitTest
* subclass named TestA. The file UnitTestRunner.h contains a set of 
* preprocessor macros that can be used to generate the code required
* to define an instantiation of UnitTestRunner and to register all of
* the test methods of the associated UnitTest. 
* 
* A CompositeTestRunner is a composite of two or more other TestRunner 
* classes, each of which may be either an instantiation of UnitTestRunner 
* or another CompositeTestRunner.
* 
* More information about each class is given in the class documentation 
* for the UnitTest, TestRunner, UnitTestRunner, and CompositeTestRunner. 
* Three programs that illustrate usage are given in the test/examples/ 
* subdirectory.
* 
**/