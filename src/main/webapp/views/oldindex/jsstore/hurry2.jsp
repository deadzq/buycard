<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html><html><head><title>Javascript紧凑学习 2</title><meta charset='utf-8'><link href='https://dn-maxiang.qbox.me/res-min/themes/marxico.css' rel='stylesheet'><style></style></head><body><div id='preview-contents' class='note-content'>


<h1 id="javascript紧凑学习-2">Javascript紧凑学习 2</h1>

<p><strong>创建新的HTML元素</strong></p>

<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/qo6b15ua/2/embedded/js,html,css,result/dark/" allowfullscreen="allowfullscreen"></iframe>
**JavaScript HTML DOM 元素(节点)**
创建新的HTML元素
在文档对象模型(DOM)中,每个节点都是一个对象. DOM节点有三个重要的属性, 分别是:
- 1. nodeName : 节点的名称
- 2. nodeValue : 节点的值
- 3. nodeType : 节点的类型

如需向 HTML DOM 添加新元素, 您必须首先创建该元素(元素节点), 然后向一个已经存在的元素追加该元素.
**上例**解析:
这段代码创建新的&lt;p&gt;元素:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line"><span class="hljs-keyword">var</span> para = <span class="hljs-built_in">document</span>.createElement(<span class="hljs-string">"p"</span>);
</div></code></pre>

如需向&lt;p&gt;元素添加文本,您必须首先创建文本节点. 这段代码创建了一个文本节点:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line"><span class="hljs-keyword">var</span> node = <span class="hljs-built_in">document</span>.createTextNode(<span class="hljs-string">"This is a new paragraph."</span>);
</div></code></pre>

然后您必须向&lt;p&gt;元素追加这个文本节点:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line">para.appenChild(node);
</div></code></pre>

最后您必须向一个已有的元素追加这个新元素.
这段代码找到一个已有的元素:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line"><span class="hljs-keyword">var</span> element = <span class="hljs-built_in">document</span>.getElementById(<span class="hljs-string">"div1"</span>);
</div></code></pre>

以下代码在已存在的元素后添加新元素:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line">element.appendChild(para);
</div></code></pre>


—

—

**删除已有的HTML元素**
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/xva25c76/1/embedded/js,html,css,result/dark/" allowfullscreen="allowfullscreen"></iframe>
**上例**解析:
这个HTML文档含有拥有两个子节点(两个&lt;p&gt;元素)的&lt;div&gt;元素:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line">&lt;div id=<span class="hljs-string">"div1"</span>&gt;
</div><div class="hljs-line"><span class="xml"><span class="hljs-tag">&lt;<span class="hljs-name">p</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"p1"</span>&gt;</span>This is a paragraph.<span class="hljs-tag">&lt;/<span class="hljs-name">p</span>&gt;</span></span>
</div><div class="hljs-line">&lt;p id=<span class="hljs-string">"p2"</span>&gt;This is another paragraph.&lt;<span class="hljs-regexp">/p&gt;
</span></div><div class="hljs-line">&lt;/div&gt;
</div></code></pre>

找到 id=”div1”的&lt;p&gt;元素:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line"><span class="hljs-keyword">var</span> parent = <span class="hljs-built_in">document</span>.getElementById(<span class="hljs-string">"div1"</span>);
</div></code></pre>

找到 id=”p1”的&lt;p&gt;元素:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line"><span class="hljs-keyword">var</span> child = <span class="hljs-built_in">document</span>.getElementById(<span class="hljs-string">"p1"</span>);
</div></code></pre>

从父元素中删除子元素:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line">parent.removeChild(child);
</div></code></pre>


—

—


&gt; **JavaScript对象**  2018年4月15日 13:38:41

JavaScript中的所有事物都是对象: 字符串,数值,数组,函数……
对象只是一种特殊的数据. 对象拥有**属性**和**方法**.
此外,JavaScript允许自定义对象.
**所有事物都是对象**
JavaScript提供多个内建对象,比如String,Date,Array等等.对象只是带有属性和方法的特殊数据类型.
- 布尔型可以是一个对象.
- 数字型可以是一个对象.
- 字符串也可以是一个对象.
- 日期是一个对象.
- 数学和正则表达式也是对象.
- 数组是一个对象
- 甚至函数也可以是对象

**访问对象的属性**
属性是与对象相关的值.
访问对象属性的语法是:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line">objectName.propertyName
</div></code></pre>

下面例子使用String对象的length属性来获得字符串的长度:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line"><span class="hljs-keyword">var</span> message = <span class="hljs-string">"Hello World!"</span>;
</div><div class="hljs-line"><span class="hljs-keyword">var</span> x = message.length;
</div></code></pre>

在以上代码执行后,x的值将是:






<pre class="prettyprint hljs-dark"><code class="language-html hljs xml"><div class="hljs-line">12
</div></code></pre>

<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/mL8t65bz/3/embedded/js,html,css,result/dark/" allowfullscreen="allowfullscreen"></iframe>

—

**访问对象的方法**
方法是能够在对象上执行的动作.
您可以通过以下语句来调用方法:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line">objectName.methodName();
</div></code></pre>

下面例子使用了String对象的toUpperCase()方法来将文本转换为大写:
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/b7L5xhwj/4/embedded/js,html,css,result/dark/" allowfullscreen="allowfullscreen"></iframe>

—

**创建 JavaScript 对象**
通过JavaScript, 您能够定义并创建自己的对象.
创建新对象有两种不同的方法:
- 定义并创建对象的实例
- 使用函数来定义对象, 然后创建新的对象实例

下面的例子创建了一个新实例,并向其添加了四个属性:
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/yfnvstLx/8/embedded/js,html,css,result/dark/" allowfullscreen="allowfullscreen"></iframe>

—

**使用对象构造器**
下例使用函数来构造对象:
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/j5z372nh/4/embedded/js,html,css,result/dark/" allowfullscreen="allowfullscreen"></iframe>



—

**创建JavaScript对象实例**
一旦您有了对象构造器,就可以创建新的对象实例,就像这样:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line"><span class="hljs-keyword">var</span> myFather = <span class="hljs-keyword">new</span> person(<span class="hljs-string">"John"</span>,<span class="hljs-string">"Doe"</span>,<span class="hljs-number">50</span>,<span class="hljs-string">"blue"</span>);
</div><div class="hljs-line"><span class="hljs-keyword">var</span> myMother = <span class="hljs-keyword">new</span> person(<span class="hljs-string">"Sally"</span>,<span class="hljs-string">"Rally"</span>,<span class="hljs-number">48</span>,<span class="hljs-string">"green"</span>);
</div></code></pre>


—

**把属性添加到JavaScript对象**
您可以通过为对象赋值,向已有对象添加新属性:
假设personObj已存在 - 您可以为其添加这些新属性 : firstName,lastName,age以及eyeColor : 






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line">person.firstName = <span class="hljs-string">"John"</span>;
</div><div class="hljs-line">person.lastName = <span class="hljs-string">"Doe"</span>;
</div><div class="hljs-line">person.age = <span class="hljs-number">30</span>;
</div><div class="hljs-line">person.eyeColor = <span class="hljs-string">"blue"</span>;
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">x=person.firstName;
</div></code></pre>

以上代码执行后,x的值将是:






<pre class="prettyprint hljs-dark"><code class="language-html hljs xml"><div class="hljs-line">John
</div></code></pre>


—

**把方法添加到JavaScript对象**
方法只不过是附加在对象上的函数.
在构造器函数内部定义对象的方法:
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/v4mh3z2p/3/embedded/js,html,css,result/dark/" allowfullscreen="allowfullscreen"></iframe>

—

**JavaScript类**
JavaScript是面向对象的语言,但JavaScript不使用类.
在JavaScript中,不会创建类,也不会通过类来创建对象(就像在其他面向对象的语言中那样).
JavaScript基于prototype,而不是基于类的.

—

**JavaScript for…in 循环**
JavaScript for…in 语言循环遍历对象的属性.
语法






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line"><span class="hljs-keyword">for</span> (variable <span class="hljs-keyword">in</span> object)
</div><div class="hljs-line">{
</div><div class="hljs-line">    <span class="hljs-comment">//code to be executed</span>
</div><div class="hljs-line">}
</div></code></pre>

注意: for…in 循环中的代码块将针对每个属性执行一次.
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/Ltk4w8w2/6/embedded/html,css,result/dark/" allowfullscreen="allowfullscreen"></iframe>


https://www.w3cschool.cn/tryrun/showhtml/tryjs_output_objects
https://jsfiddle.net/deadzq/n470u5e1/3/ 没打完
2018年4月15日 18:35:23

**JavaScript数组**
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/uzrehhvh/4/embedded/" allowfullscreen="allowfullscreen"></iframe>


**JavaScript对象**
对象由花括号分隔. 在括号内部, 对象的属性以名称和值对的形式(name:value)来定义. 属性由逗号分隔:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line"><span class="hljs-keyword">var</span> person={<span class="hljs-attr">fristName</span>:<span class="hljs-string">"John"</span>,<span class="hljs-attr">lastName</span>:<span class="hljs-string">"Doe"</span>,<span class="hljs-attr">id</span>:<span class="hljs-number">5566</span>};
</div></code></pre>

上面例子中的对象(person)有三个属性: firstName, lastName 以及 id.
空格和折行无关紧要,声明可横跨多行:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line"><span class="hljs-keyword">var</span> person={
</div><div class="hljs-line"><span class="hljs-attr">firstName</span>:<span class="hljs-string">"John"</span>,
</div><div class="hljs-line"><span class="hljs-attr">lastName</span>:<span class="hljs-string">"Doe"</span>,
</div><div class="hljs-line"><span class="hljs-attr">id</span>:<span class="hljs-number">5566</span>
</div><div class="hljs-line">};
</div></code></pre>

对象属性有两种寻址方法:
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/1vh8c72j/4/embedded/" allowfullscreen="allowfullscreen"></iframe>


https://www.w3cschool.cn/javascript/js-datatypes.html

—

**Undefined和Null**
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/sh51dauu/1/embedded/" allowfullscreen="allowfullscreen"></iframe>

—

**声明变量类型**
当您声明变量时,可以使用关键字”new”来声明其类型:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line"><span class="hljs-keyword">var</span> carname = <span class="hljs-keyword">new</span> <span class="hljs-built_in">String</span>;
</div><div class="hljs-line"><span class="hljs-keyword">var</span> x = <span class="hljs-keyword">new</span> <span class="hljs-built_in">Number</span>;
</div><div class="hljs-line"><span class="hljs-keyword">var</span> y = <span class="hljs-keyword">new</span> <span class="hljs-built_in">Boolean</span>;
</div><div class="hljs-line"><span class="hljs-keyword">var</span> cars = <span class="hljs-keyword">new</span> <span class="hljs-built_in">Array</span>;
</div><div class="hljs-line"><span class="hljs-keyword">var</span> person = <span class="hljs-keyword">new</span> <span class="hljs-built_in">Object</span>;
</div></code></pre>

JavaScript变量均为对象. 当您声明一个变量时, 就创建了一个新的对象.
提示: JavaScript具有隐含的全局概念, 意味着你不声明的任何变量都会成为一个全局对象属性.

—

&gt; **JavaScript函数**

在JavaScript中,函数即对象,可以随意地被程序操控,函数可以嵌套在其他函数中定义,这样可以访问它们被定义时所处的作用域中的任何变量.
函数是由事件驱动的或者当它被调用时执行的可重复使用的代码块.
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/11ea9mby/1/embedded/html,css,result/dark/" allowfullscreen="allowfullscreen"></iframe>

—

**JavaScript函数语法**
函数就是包裹在花括号中的代码块,前面使用了关键字function:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line"><span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">functionName</span>(<span class="hljs-params"></span>)
</span></div><div class="hljs-line">{
</div><div class="hljs-line">    <span class="hljs-comment">//执行代码</span>
</div><div class="hljs-line">}
</div></code></pre>

当调用该函数时,会执行函数内的代码.
可以在某事件发生时直接调用函数(比如当用户点击按钮时), 并且可由JavaScript在任何位置进行调用.
<mark>注意</mark>JavaScript对大小写敏感, 关键词 function 必须是小写的, 而且必须以函数名称**相同的大小写**来调用函数.
提示:function中的花括号是必需的,即使函数体内只包含一条语句,仍然必须使用花括号将其括起来.

—

**调用带参数的函数**
在调用函数时,您可以向其传递值,这些值被称为参数.
这些参数可以在函数中使用.
您可以发送任意多的参数, 由逗号( , ) 分隔:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line">myFunction(argument1,argument2)
</div></code></pre>

当您声明函数时,请把参数作为变量来声明:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line"><span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">myFunction</span>(<span class="hljs-params">var1,var2</span>)
</span></div><div class="hljs-line">{
</div><div class="hljs-line">    <span class="hljs-comment">//代码</span>
</div><div class="hljs-line">}
</div></code></pre>

变量和参数必须以一致的顺序出现. 第一个变量就是第一个被传递的参数的给定的值, 以此类推.
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/4ut589nm/3/embedded/html,css,result/" allowfullscreen="allowfullscreen"></iframe>


—

**带有返回值的函数**
有时,我们会希望函数将值返回调用它的地方.
通过使用return语句就可以实现.
在使用return语句时,函数会停止执行, 并返回指定的值.






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line"><span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">myFunction</span>(<span class="hljs-params"></span>)
</span></div><div class="hljs-line">{
</div><div class="hljs-line">    <span class="hljs-keyword">var</span> x=<span class="hljs-number">5</span>;
</div><div class="hljs-line">    <span class="hljs-keyword">return</span> x;
</div><div class="hljs-line">}
</div></code></pre>

上面的函数会返回值5.
**注意:** 整个JavaScript并不会停止执行,仅仅是函数. JavaScript将继续执行代码,从调用函数的地方.函数调用将被返回值取代:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line"><span class="hljs-keyword">var</span> myVar = myFunction();
</div></code></pre>

myVar 变量的值是5, 也就是函数”myFunction()”所返回的值. 即使不把它保存为变量, 您也可以使用返回值:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line"><span class="hljs-built_in">document</span>.getElementById(<span class="hljs-string">"demo"</span>).innerHTML=myFunction();
</div></code></pre>

“demo”元素的innerHTML将成为5, 也就是函数”myFunction()”所返回的值.
您可以返回值基于传递到函数中的参数:
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/9dbnm611/embedded/html,result/dark/" allowfullscreen="allowfullscreen"></iframe>

在您仅仅希望退出函数时,也可以使用return语句. 返回值是可选的:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line"><span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">myFunction</span>(<span class="hljs-params">a,b</span>)
</span></div><div class="hljs-line">{
</div><div class="hljs-line">    <span class="hljs-keyword">if</span>(a&gt;b)
</div><div class="hljs-line">    {
</div><div class="hljs-line">        <span class="hljs-keyword">return</span>;
</div><div class="hljs-line">    }
</div><div class="hljs-line">    x=a+b
</div><div class="hljs-line">}
</div></code></pre>

如果a大于b,则上面的代码将退出函数(因为return;),并不会计算a和b的总和.

—

**局部JavaScript变量**
在JavaScript函数内部声明的变量(使用var)是局部变量,所以只能在函数内部访问它.(该变量的作用域是局部的).
您可以在不同的函数中使用名称相同的局部变量,因为只有声明过该变量的函数才能识别出该变量.
只要函数运行完毕,本地变量就会被删除.
局部变量比同名全局变量的优先级高, 所以局部变量会隐藏同名的全局变量.

—

**全局JavaScript变量**
在函数外声明的变量是全局变量, 网页上的所有脚本和函数都能访问它.

—

**JavaScript变量的生存期**
JavaScript变量的生命期从它们被声明的时间开始.
局部变量会在函数运行以后被删除.
全局变量会在页面关闭后被删除.

—

**向未声明的JavaScript变量分配值**
如果您把值赋给尚未声明的变量,该变量将自动作为全局变量声明.






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line">carname=<span class="hljs-string">"Volvo"</span>;
</div></code></pre>

上面语句将声明一个全局变量carname,即使它在函数内执行.

—

&gt; **JavaScript作用域**

作用域可访问变量的集合.
在JavaScript中,能够定义全局作用域或者局部作用域.
在JavaScript中,对象和函数同样也是变量.
在JavaScript中,作用域为可访问变量,对象,函数的集合.
JavaScript函数作用域: 作用域在函数内修改.

—

**JavaScript局部作用域**
变量在函数内声明,变量为局部作用域.
局部变量: 只能在函数内部访问.
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/9a2feL08/embedded/html,result/" allowfullscreen="allowfullscreen"></iframe>
因为局部变量只作用于函数内,所以不同的函数可以使用相同名称的变量.
局部变量在函数开始执行时创建,函数执行完后局部变量会自动销毁.
而如果函数内声明的变量不使用var定义时,则为全局变量:
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/u9eLdLku/embedded/html,result/" allowfullscreen="allowfullscreen"></iframe>

—

**JavaScript全局变量**
变量在函数外定义,即为全局变量.
全局变量有**全局作用域:** 网页中所有脚本和函数均可使用.
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/9r79m2xh/embedded/html,result/dark/" allowfullscreen="allowfullscreen"></iframe>
如果变量在函数内没有声明(没有使用var关键字),该变量为全局变量.
以下实例中carName在函数内,但是为全局变量.
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/4f1tbg8y/embedded/html,result/" allowfullscreen="allowfullscreen"></iframe>

—

**JavaScript变量生命周期**
JavaScript变量生命周期在它声明时初始化.
局部变量在函数执行完毕后销毁.
全局变量在页面关闭后销毁.

—

**函数参数**
函数参数只在函数内起作用,是局部变量.

—

**HTML中的全局变量**
在HTML中,全局变量是window对象: 所有数据变量都属于window对象.
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/x7kox268/2/embedded/html,result/" allowfullscreen="allowfullscreen"></iframe>

你的全局变量,或者函数,可以覆盖 window 对象的变量或者函数.
局部变量, 包括 window 对象可以覆盖全局变量和函数.
**在ES6中, 提供了 let 关键字和 const 关键字.**
**let 的声明方式与var相同,用 let 来替代 var 来声明变量, 就可以把变量限制在当前代码块中.**
**使用const声明的是常量, 其值一旦被设定便不可被更改.**

—

&gt; **JavaScript事件**

事件是可以被JavaScript侦测到的行为。

—

HTML事件是发生在HTML元素上的事情。
当在HTML页面中使用JavaScript时，JavaScript可以触发这些事件。

—

**HTML事件**
HTML事件可以是浏览器行为，也可以是用户行为。
HTML网页中的每个元素都可以产生某些可以触发JavaScript函数的事件。
以下是HTML事件的实例：
- HTML 页面完成加载
- HTML input字段改变时
- HTML 按钮被点击

通常，当事件发生时，你可以做些事情。
在事件触发时JavaScript可以执行一些代码。
HTML元素中可以添加事件属性，使用JavaScript代码来添加HTML元素。
单引号：






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line">&lt;some-HTML-element some-event=<span class="hljs-string">'some JavaScript'</span>&gt;
</div></code></pre>

双引号:






<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line">&lt;some-HTML-element some-event=<span class="hljs-string">"some JavaScript"</span>&gt;
</div></code></pre>

在以下实例中,按钮元素中添加了 onclick 属性 (并加上代码):
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/7ncvy142/embedded/html,result/dark/" allowfullscreen="allowfullscreen"></iframe>
以上实例中,JavaScript代码将修改 id=”demo” 元素的内容.
在下一个实例汇总,代码将修改自身元素的内容(使用this.innerHTML):
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/8z5tk7o2/embedded/html,result/dark/" allowfullscreen="allowfullscreen"></iframe>
JavaScript代码通常是几行代码, 比较常见的是通过事件属性来调用:
<iframe width="100%" height="300" src="//jsfiddle.net/deadzq/9Lyngjft/embedded/html,result/" allowfullscreen="allowfullscreen"></iframe>

—

**常见的HTML事件**
下面是一些常见的HTML事件的列表:

| 事件|     描述|  
| :——–: | :——–:| 
| onchange|   HTML元素改变时|  
|onclick|HTML元素被点击时|
|onmouseover|当鼠标移动上指定HTML元素时|
|onmouseout|当鼠标从指定HTML元素移开时|
|onkeydown|用户按下键盘按键时|
|onload|浏览器已完成页面的加载时|







具体如下:
—

<iframe height="265" scrolling="no" title="js learn1" src="//codepen.io/deadzq/embed/KBXNQQ/?height=265&amp;theme-id=0&amp;default-tab=js,result&amp;embed-version=2" allowfullscreen="true" style="width: 100%;">See the Pen &lt;a href="https://codepen.io/deadzq/pen/KBXNQQ/"&gt;js learn1&lt;/a&gt; by ukyozq (&lt;a href="https://codepen.io/deadzq"&gt;@deadzq&lt;/a&gt;) on &lt;a href="https://codepen.io"&gt;CodePen&lt;/a&gt;.&amp;#10;</iframe>

<p>(看源文件的console.log)↑</p>

<p><strong>JavaScript可以做什么?</strong> <br>
事件可以用于处理表单验证,用户输入,用户行为及浏览器动作:</p>

<ul><li>页面加载时触发事件</li>
<li>页面关闭时触发事件</li>
<li>用户点击按钮执行动作</li>
<li>验证用户输入内容的合法性</li>
<li>等等…</li>
</ul>

<p>可以使用多种方法来执行JavaScript事件代码:</p>

<ul><li>HTML事件属性可以直接执行JavaScript代码</li>
<li>HTML事件属性可以调用JavaScript函数</li>
<li>你可以为HTML元素指定自己的事件处理程序</li>
<li>你可以阻止事件的发生.</li>
<li>等等…</li>
</ul>

<p>接下来. <br>
<a href="https://www.w3cschool.cn/javascript/js-strings.html" target="_blank">https://www.w3cschool.cn/javascript/js-strings.html</a></p>

<hr>

<blockquote>
  <p>获取多选框的数组内容</p>
</blockquote>



<pre class="prettyprint hljs-dark"><code class="language-html hljs xml"><div class="hljs-line"><wbr>
</div><div class="hljs-line"><span class="hljs-tag">&lt;<span class="hljs-name">body</span>&gt;</span>
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">    <span class="hljs-tag">&lt;<span class="hljs-name">form</span> <span class="hljs-attr">action</span>=<span class="hljs-string">""</span>&gt;</span>
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">运动<span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"checkbox"</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"hobby"</span> <span class="hljs-attr">value</span>=<span class="hljs-string">"sport"</span> /&gt;</span>
</div><div class="hljs-line">音乐<span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"checkbox"</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"hobby"</span> <span class="hljs-attr">value</span>=<span class="hljs-string">"music"</span> /&gt;</span>
</div><div class="hljs-line">美食<span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"checkbox"</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"hobby"</span> <span class="hljs-attr">value</span>=<span class="hljs-string">"food"</span> /&gt;</span>
</div><div class="hljs-line">睡觉<span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"checkbox"</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"hobby"</span> <span class="hljs-attr">value</span>=<span class="hljs-string">"sleep"</span> /&gt;</span>
</div><div class="hljs-line">跳舞<span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"checkbox"</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"hobby"</span> <span class="hljs-attr">value</span>=<span class="hljs-string">"dance"</span> /&gt;</span>
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line"><span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"button"</span> <span class="hljs-attr">value</span>=<span class="hljs-string">"提交"</span> <span class="hljs-attr">onclick</span>=<span class="hljs-string">"getAllCheckboxValues()"</span> /&gt;</span>
</div><div class="hljs-line">    <span class="hljs-tag">&lt;/<span class="hljs-name">form</span>&gt;</span>
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line"><span class="hljs-tag">&lt;/<span class="hljs-name">body</span>&gt;</span>
</div><div class="hljs-line"><span class="hljs-tag">&lt;<span class="hljs-name">script</span>&gt;</span><span class="javascript">
</span></div><div class="hljs-line"><span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-title">getAllCheckboxValues</span>(<span class="hljs-params"></span>)</span>{
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">    <span class="hljs-keyword">var</span> allCheckboxes = <span class="hljs-built_in">document</span>.getElementsByName(<span class="hljs-string">"hobby"</span>);
</div><div class="hljs-line">    <span class="hljs-keyword">var</span> checkedBoxes = [];
</div><div class="hljs-line">    <span class="hljs-keyword">for</span>(<span class="hljs-keyword">var</span> i=<span class="hljs-number">0</span>;i&lt;allCheckboxes.length;i++){
</div><div class="hljs-line">        <span class="hljs-keyword">var</span> checkBoxObj = allCheckboxes[i];
</div><div class="hljs-line">        <span class="hljs-keyword">if</span>(checkBoxObj.checked){
</div><div class="hljs-line">            checkedBoxes.push(checkBoxObj.value);
</div><div class="hljs-line">        }
</div><div class="hljs-line">    }
</div><div class="hljs-line">    <span class="hljs-comment">//查看只被选中的复选框内容,其被装入数组checkedBoxes</span>
</div><div class="hljs-line">    alert(checkedBoxes)
</div><div class="hljs-line">    <span class="hljs-built_in">console</span>.log(checkedBoxes);
</div><div class="hljs-line">    <span class="hljs-comment">/////* 如想对选中的复选框内容做下一步操作,则遍历得到内容每个值.</span>
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">}
</div><div class="hljs-line"><span class="hljs-tag">&lt;/<span class="hljs-name">script</span>&gt;</span>
</div></code></pre>

<hr>

<p>函数的自动自身调用 <br>
<strong>自调用函数</strong> <br>
函数表达式可以 “自调用”。 <br>
自调用表达式会自动调用。 <br>
如果表达式后面紧跟 () ，则会自动调用。 <br>
Y不能自调用声明的函数。 <br>
通过添加括号，来说明它是一个函数表达式：</p>



<pre class="prettyprint hljs-dark"><code class="language-javascript hljs"><div class="hljs-line">&lt;script&gt;
</div><div class="hljs-line">(<span class="hljs-function"><span class="hljs-keyword">function</span> (<span class="hljs-params"></span>) </span>{
</div><div class="hljs-line">    <span class="hljs-built_in">document</span>.getElementById(<span class="hljs-string">"demo"</span>).innerHTML = <span class="hljs-string">"Hello! 我是自己调用的"</span>;
</div><div class="hljs-line">})();
</div><div class="hljs-line"><span class="xml"><span class="hljs-tag">&lt;/<span class="hljs-name">script</span>&gt;</span></span>
</div></code></pre>

<p>自身方法调用其实和在function外面调用没什么太大区别,只是形式不同.</p></div></body></html>