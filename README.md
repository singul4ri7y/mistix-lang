<h1 align="center">Mistix Lang 🔥</h1>
<p align="center">A playful object-oriented toy programming language lovingly crafted using Promit.</p>
<div align= "center">
    <a href= "#introduction-">Introduction</a>
    .
    <a href= "#why-">Why</a>
    .
    <a href= "#install-">Install</a>
    .
    <a href= "#Usage-">Usage</a>
</div>

## Introduction 🧸
Mistix Programming Language or **``mistix-lang``** for short, is an Object-Oriented, interpreted, expressive toy programming language written in Promit 🔥.

What is Promit? Well, [Promit](https://github.com/singul4ri7y/promit) is **object oriented**, **bytecode interpreted**, **lightweight**, **elegant** and **fast** programming language. It has simple yet **expressive** syntax and **easy**, **minimalist** and **condensed** library which helps to tackle down any modern programs.

## Why ⁉️
**This projects sole purpose was to test the limits of Promit 🚀.** I was kinda getting bored, so decided why not create an esoteric lang against one of the largest hobby projects of mine, stressing it to almost production level.

And guess what! To my surprise, Promit's performance is very satisfactory! Though I had to fix some horrendous bugs I didn't know have existed in Promit. So, if you are someone who just wrote a Programming/Scripting language of your own, I would highly recommend you test it against production code, which will not only improve the language specification but also will force you to do optimizations, improving the overall implementation.

## Install 💻

The interpreter is implemented in [Promit Programming Language](https://github.com/singul4ri7y/promit). Therefore, you need have Promit installed in your system.

Luckily, the download packages of **mistix-lang** come with the Promit interpreter, so you don't have to go through the hassle of installing Promit separately on your machine. **But** if you want to install Promit manually and try out **mistix-lang** yourself, that is certainly an option. Please refer to the [Install](https://github.com/singul4ri7y/promit?tab=readme-ov-file#install-%EF%B8%8F) section of Promit for installation instructions.

### 1. Download 📥
Go to the **[release](https://github.com/singul4ri7y/mistix-lang/releases)** page of Mistix Lang. Download the latest release. 

The package you should download might be named like ``mistix-lang-v0.5.0-**.zip`` and available for PCs (x86_64 and x86) only.

### 2. Install and run 🏗️
Mistix Lang is portable, means there is no installation. Invoke (double-click on the file or run it from CMD) **``mistix.bat``** (Windows) or just run **``./mistix.sh``** (Linux). It will drop you to the REPL mode of **mistix-lang**.
```
Mistix Lang v0.5.0 (Beta 1) with Promit v0.5.0 (Beta 6)

Welcome to the interactive console of mistix-lang.
Type '.help' to know more.

> 
```

To run files, you need to use the Shell or CMD (Windows).

**Windows CMD:**
```
mistix.bat examples/loops.mtx
```

How to run commands in Windows CMD? Well, Google it 🙂.

**Linux:**
```
./mistix.sh examples/input.mtx
```

You can also create custom files and run them just like that.

```
mistix.bat new-program.mtx
```

**Note:** Mistix Lang use file extension ``.mtx``. When you run programs, make sure you are in the home directory of **mistix-lang**. You also have to create programs in the home directory or any sub-directory relative to home directory. Pain, ik. I may work on it in the future.

## Usage 🚀

**Let's go, we are now ready to rock 🔥!** Let's go through some basic usage.

**Important Note:** You may or may not use **;** (semicolons). It's entirely up to you. **But** if you tend to write multiple statements in a single line, be sure to use **semicolon;** at the end of each statement.

### 1. Print 🖨️
Use the **``print()``** function to print something to the console 😃.
```
print('Hello spikey from Mistix world!!')
```
### 2. Data Types 📊
**mistix-lang** have 6 data types. They are: 
 1. Number (``10``, ``3.1416`` etc.)
 2. Boolean (**``tru``** and **``fal``**)
 3. Null (**``nul``**)
 4. String (``"This ain't a theory"``, strings may use **single quotation** as well)
 5. Function (``<fn 'someFunc'>``)
 6. Instance (Which derives from **Classes**, e.g. ``<instance of 'A' class>``)
 
 #### Examples: 
Functions: 
 
 ```
fn say_someting[what] {
    print(what)
}

print(say_something)     @ Expected output: <fn 'say_something'>,
                          @ Becuase haven't called the function :)
                          @ More on it later.
 ```
Numbers: 
```
print(10 - *nul)    @ Expected output: 9 
                    @ Unary '*' is equivalent to logical bang/not '!'.
```

**By the way,** you write single line **comments** likewise, ``@ Hey this is a comment!``. **mistix-lang** does not support multi-line comments, yet.

### 3. Conditionals 🔁
Use conditionals using **``if``** statement.

Usage: ``if [expression] { [statements] }``

**``el``** is equivalent to **``else``** in C-like languages. You can cascade it with ``if`` to create ``else if`` or **``el if``** to be exact. E.g. **``el if [expression] { [statement] }``**

**Important Note:** You have to use block statement **{ ... }** with **if** just after the expression. But it is not necessary with **el**.

#### Example: 
```
var i_am_bored = tru

if i_am_bored {
    print('Make a lang!')
} el print('Still make a lang XD')
```

**Note:** Block statements are C equivalent.

### 4. Variables 🔡
You define variables using **``var``** statement.

Usage declaration: ``var [name]``

Usage with definition: ``var [name] = [expression]``
```
var question = "how you doin'?"

if question == "how you doin'?" {
    print('*good')
    question = 'have you taken your meds?'
}

print(question)    @ Expected output: 'have you taken your meds?'
```

### 5. Loops ♾️
There are 2 types of loops in **mistix-lang**. 
1. **``dur``** (means ``during`` or ``while``)
2. **``exp``** (``for`` loop 🙂).

The **``dur``** loop: 

Usage: **``dur [condition] { [statements] }``**
```
var x = 10

dur x > 0 {
    print(x)
    x = x - 1
}
```
The **``exp``** loop: 

Usage: **``exp [expression/declaration]; [condition]; [increament]; { [statements] }``**
```
exp var i = 1; i <= 1000000; i = i + 1; {
    print("Let's boost to the moon!!!")
}
```

**Pretty cool 😎😎.**

### 6. Operators 🖥️
mistix-lang support both **Binary** and **Unary** operators.

Binary operators are: 
1. ``+``, ``-``, ``*`` , ``/`` and ``%``, just like most languages, nothing special.
2. Comparison operators: ``==``, ``*=`` (not equal), ``>``, ``>=``, ``<`` and ``<=``.
3. The **``or``** operator, which works as 'logical or'. The **``and``** operator which works as 'logical and'. Hey, logical operations ain't binary, right? Well, kinda. They provide feel of binary operators, hence included here.

Usage: **``[expression] [operator] [expression]``**

#### Example: 
```
var x = 10
var y = 20

print(x == y - 10)     @ Expected output: 'tru'
```

Unary operators: 
1. ``*`` (Logical not): Performs logical not (Usually known as ``!`` or BANG).
2. ``-``: Numeric negation.

Usage: **``( - | * ) [expression]``**

#### Example: 
```
print(**10)    @ Expected output: 'tru'
```

### 7. Functions and Closures #️⃣
**mistix-lang** supports functions and closures like most high-level langs.

Usage: **``fn [function_name] [ parameters, ... ] { [statements] }``**

#### Example: 
```
fn add[x, y] {
    ret x + y
thak

print(add(101, 99))    @ Expected output: 200
```

**Note:** **``ret``** is self explanatory. **``return``** 🙂.

And yeah, also closures: 
```
fn counter[] {
    @ 'i' will be enclosed by the function 'count'!
    var i = 0;

    @ Function within a function.
    fn count[] {
        @ 'i' is getting enclosed!
        i = i + 1
        ret i
    }

    ret count
}

var count = counter();

print(count());    @ Expected output: '1'
print(count());    @ Expected output: '2'
```

### 8. Object Orientation 🔥
#### The Class 🎒
Mistix Lang supports OOP by using the Class concept (No metatable, no prototypes).

To create a class, use **``cls [name] { [methods] }``** to create a class. Methods should be declared with following the convention of functions, excluding the **``fn``** keyword.

```
cls Example {
    @ Example method.
    example_method[x] {
        print(x)
    }
}; @ <- Semicolon here is not important, just looks nice.
```

In the snippet above, we declared a class named ``Example`` which has a method named ``example_method``.

#### Instance 🧾
If you call a class (and I mean **call** just like a function), you get something called an **Instance** of that class, which is basically an object. After calling the above ``Example`` class, we get an instance of ``Example``.

```
var exp = Example()    @ Call the 'Example' class.
print(exp)             @ Expected output: <instance of 'Example' class>
```

Here, the ``exp`` variable is an instance object.

#### Methods and Properties 🏬
Use the ``->`` symbol to access a method/property.

For the ``exp`` variable from previous example: 
```
exp -> example_method('OOP is awesome!')

@@ Expected output:
@ OOP is awesome!
```

You can set and get property in any instance object similarly. You set a property using **``=``** keyword, just like variable assignment.
```
exp -> new_prop = 'This is a new property!'
print(expr -> new_prop)    @ Expected output: 'This is a new property!'
```
**Note:** Setting a property which does not exist creates that new property. Here ``new_prop`` didn't exist in `exp`, hence the property is created.
**Important Note:** Trying to get a property which has not been set/created yet will raise runtime error.

#### The ``sel`` and ``sup`` 🚀
What if a method needs access to the instance itself? Almost all the C-like language have the keyword ``this`` to address this situation. Consider the **``sel``** as C-like **``this``** or **``self``** equivalent.

```
cls Human {
    eat[taste] {
        print('Eating ' + sel -> food + ' food!')
        print('Taste: ' + taste)
    }
}

var human = Human()

human -> food = 'Sea'
human -> eat('Astronomical!')

@@ Expected output: 
@ Eating Sea food.
@ Taste: Astronomical!
```

**Note:** Use **``sup``** keyword to access methods from superclass. More on it later.

#### Construct 🛠️
In Mistix Lang, the **``construct[]``** method acts like constructor of a class.

```
cls Data {
    construct[name, passion, age] {
        sel -> name    = name
        sel -> passion = passion
    }

    query[] {
        print('Hello! I'm ' + sel -> name + ' and I like to do ' + sel -> passion +
            ' a lot!')
    }
}

var data = Data('SD Asif Hossein', 'coding', 21)

data -> query()

@@ Expected Output: 
@ Hello! I'm SD Asif Hossein and I like to do coding a lot!
```

#### Inheritance 🧬
Use the **``<``** just after the class name to inherit a superclass.

```
cls Dog {
    construct[name, breed] {
        sel -> name = name
        sel -> breed = breed
    }

    details[] {
        print('Breed: ' + sel -> breed + ', Name: ' + sel -> name)
    }
}

cls GermanShepherd < Dog {
    construct[name] {
        @ Call the superclass constructor.
        sup -> construct(name, 'German Shepherd')
    }
}

var dex = GermanShepherd('Dexter')

dex -> details()

@@ Expected output: 
@ Breed: German Shepherd, Name: Dexter
```

Use the **``sup``** keyword to access the superclass methods.

If you have come this far, **thank you so much** for reading through 🥂👏🍾, you are awesome 🫡. Try exploring yourself using the REPL mode and running the programs in the ``examples/`` directory.

<b><i>Peace 😇.</i></b>


