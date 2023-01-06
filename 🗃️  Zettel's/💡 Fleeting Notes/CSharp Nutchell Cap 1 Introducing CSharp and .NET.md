**Meta data**
Note-type:: #Zettel/NoteType/Fleeting
Note-Status:: #Zettel/Status/Pending 
Created-date:: 06-01-2023
Created-time:: 14:23
Liteturature-Note:: [[🗃️  Zettel's/Literature Notes/CSharp Nutchell Cap 1]]
Tags:: 

# CSharp Nutchell Cap 1
+ Sistema unificado de tipos
	+ Bloco fundamental
		+ Type
+ Classes e interfaces
+ Propertis, methods, and events
+ Functions can be treated as values
	+ Delegates
+ Type Safety
+ Memory Management
	+ Garbage Collector
+ CLRs, BCLs, and Runtimes
![[📂 Files/Image/Pasted image 20230106143626.png]]
+ Common Language Runtime
	+ Runtime services
		+ Automatic memory management
		+ Exception handling
		+ C# is called a managed language because it compiles source code into managed code, which is represented is Intermediate Language (IL)
		+ CLR
			+ Convert the il into the native code of the machine, such as X64 or X86, usually just prior to execution
			+ Justi-in-time (JIT) compilation
			+ The container of managed code is called as assembly
				+ Contains
					+ IL
					+ type information (metadata)
						+ Allows assemblies reference types in other assemblies without needing additional files
		+ Base Classe Library
			+ CLR work with set of assemblies called a Base Classe Library (BCL)
			+ Core Funcionalitys to programmers
				+ Colletions
				+ I/O
				+ Text processing
				+ XML/JSON handling
				+ Networking 
				+ Encryption
				+ interop
				+ concurrency 
				+ Parallel programming
		+ Runtimes
			+ Also called a framework
			+ Consists of 
				+ CLR (with its BCL)
			+ Plus an optional applications layes specific to the kind of application that you're writing
			+ When writing an application, you target a particular runtime, which means that your application uses and depends on the functionality that the runtime provides
+ ![[📂 Files/Image/Pasted image 20230106145822.png]]
+ C# 10
	+ FIle-scoped namespaces
	+ ![[📂 Files/Image/Pasted image 20230106150156.png]]
	+ The global using directive to all files in the project
	+ ![[📂 Files/Image/Pasted image 20230106150218.png]]
	+ Nondestructive mutation for nanonymoyus types
	+ ![[📂 Files/Image/Pasted image 20230106150356.png]]
	+ new deconstruction syntax
		 ![[📂 Files/Image/Pasted image 20230106150959.png]]
	 + Lambda exoression enhancements
	 + ![[📂 Files/Image/Pasted image 20230106151040.png]]
	+ Nested property patterns
	+ ![[📂 Files/Image/Pasted image 20230106151107.png]]
	+ CallerArgumentExpression
		+ ![[📂 Files/Image/Pasted image 20230106151308.png]]
+ C# 9
	+ Init-only Setters
	+ ![[📂 Files/Image/Pasted image 20230106151533.png]]
	+ ![[📂 Files/Image/Pasted image 20230106151538.png]]
	+ Records
	+ ![[📂 Files/Image/Pasted image 20230106151645.png]]
	+ Pattern-matching improvements
	+ ![[📂 Files/Image/Pasted image 20230106151737.png]]
	+ ![[📂 Files/Image/Pasted image 20230106151827.png]]
	+ ![[📂 Files/Image/Pasted image 20230106151904.png]]
	+ Target-typed new expressions
	+ ![[📂 Files/Image/Pasted image 20230106152003.png]]
	+ ![[📂 Files/Image/Pasted image 20230106152013.png]]
	+ ![[📂 Files/Image/Pasted image 20230106152026.png]]
	+ Indices and ranges
	+ ![[📂 Files/Image/Pasted image 20230106152222.png]]
	+ ![[📂 Files/Image/Pasted image 20230106152242.png]]
	+ ![[📂 Files/Image/Pasted image 20230106152344.png]]
	+ Null-coalescing assignment
	+ ![[📂 Files/Image/Pasted image 20230106152422.png]]
	+ Using Declarations
	+ ![[📂 Files/Image/Pasted image 20230106152516.png]]
	+ Nuuable reference types
## References
1. 