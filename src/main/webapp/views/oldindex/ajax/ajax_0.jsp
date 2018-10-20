<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html><html><head><title>关于把AJAX加入到注册登录demo中去</title><meta charset='utf-8'><link href='https://dn-maxiang.qbox.me/res-min/themes/marxico.css' rel='stylesheet'><style></style></head><body><div id='preview-contents' class='note-content'>
                        
                    



<h1 id="关于把ajax加入到注册登录demo中去">关于把AJAX加入到注册登录demo中去</h1>

<p>2018年3月10日 19:21:23</p>

<p>index.jsp:</p>



<pre class="prettyprint hljs-dark"><code class="language-html hljs xml"><div class="hljs-line"><span class="hljs-tag">&lt;<span class="hljs-name">%@</span> <span class="hljs-attr">page</span> <span class="hljs-attr">contentType</span>=<span class="hljs-string">"text/html;charset=UTF-8"</span> <span class="hljs-attr">language</span>=<span class="hljs-string">"java"</span> %&gt;</span>
</div><div class="hljs-line"><span class="hljs-tag">&lt;<span class="hljs-name">html</span>&gt;</span>
</div><div class="hljs-line"><span class="hljs-tag">&lt;<span class="hljs-name">head</span>&gt;</span>
</div><div class="hljs-line">    <span class="hljs-tag">&lt;<span class="hljs-name">title</span>&gt;</span>ajax测试<span class="hljs-tag">&lt;/<span class="hljs-name">title</span>&gt;</span>
</div><div class="hljs-line">    <span class="hljs-tag">&lt;<span class="hljs-name">script</span> <span class="hljs-attr">src</span>=<span class="hljs-string">"js/jquery-3.3.1.min.js"</span>&gt;</span><span class="undefined"></span><span class="hljs-tag">&lt;/<span class="hljs-name">script</span>&gt;</span>
</div><div class="hljs-line">    <span class="hljs-tag">&lt;<span class="hljs-name">script</span>&gt;</span><span class="javascript">
</span></div><div class="hljs-line">        $(<span class="hljs-function"><span class="hljs-keyword">function</span> (<span class="hljs-params"></span>) </span>{
</div><div class="hljs-line">            $(<span class="hljs-string">"#loginName"</span>).bind(<span class="hljs-string">"blur"</span>, <span class="hljs-function"><span class="hljs-keyword">function</span> (<span class="hljs-params"></span>) </span>{
</div><div class="hljs-line">                <span class="hljs-keyword">var</span> v_loginName = $(<span class="hljs-keyword">this</span>).val()
</div><div class="hljs-line">                $.ajax({
</div><div class="hljs-line">                    <span class="hljs-attr">type</span>: <span class="hljs-string">"POST"</span>,   <span class="hljs-comment">//类型</span>
</div><div class="hljs-line">                    url: <span class="hljs-string">"checkName"</span>,   <span class="hljs-comment">//传送地址</span>
</div><div class="hljs-line">                    data: <span class="hljs-string">"loginName="</span> + v_loginName,  <span class="hljs-comment">//数据</span>
</div><div class="hljs-line">                    dataType: <span class="hljs-string">"json"</span>,     <span class="hljs-comment">//数据类型</span>
</div><div class="hljs-line">                    success: <span class="hljs-function"><span class="hljs-keyword">function</span> (<span class="hljs-params">data</span>) </span>{   <span class="hljs-comment">//成功回调,当响应一切正常时.</span>
</div><div class="hljs-line">                        <span class="hljs-keyword">if</span> (!data) {
</div><div class="hljs-line">                            $(<span class="hljs-string">"#message"</span>).text(<span class="hljs-string">"对不起,此账号已使用"</span>);
</div><div class="hljs-line">                            $(<span class="hljs-string">"#message"</span>).attr(<span class="hljs-string">"color"</span>,<span class="hljs-string">"red"</span>);
</div><div class="hljs-line">                        } <span class="hljs-keyword">else</span> {
</div><div class="hljs-line">                            $(<span class="hljs-string">"#message"</span>).text(<span class="hljs-string">"恭喜你,本账号可以使用"</span>);
</div><div class="hljs-line">                            $(<span class="hljs-string">"#message"</span>).attr(<span class="hljs-string">"color"</span>,<span class="hljs-string">"green"</span>);
</div><div class="hljs-line">                        }
</div><div class="hljs-line">                    },
</div><div class="hljs-line">                    <span class="hljs-attr">error</span>: <span class="hljs-function"><span class="hljs-keyword">function</span>(<span class="hljs-params"></span>)</span>{   <span class="hljs-comment">//当程序出错错误时执行error的回调方法</span>
</div><div class="hljs-line">                        $(<span class="hljs-string">"#message"</span>).text(<span class="hljs-string">"对不起,服务器内部错误!请稍候再试!"</span>);
</div><div class="hljs-line">                        $(<span class="hljs-string">"#message"</span>).attr(<span class="hljs-string">"color"</span>,<span class="hljs-string">"red"</span>);
</div><div class="hljs-line">                    }
</div><div class="hljs-line">                })
</div><div class="hljs-line">            })
</div><div class="hljs-line">        })
</div><div class="hljs-line">    <span class="hljs-tag">&lt;/<span class="hljs-name">script</span>&gt;</span>
</div><div class="hljs-line"><span class="hljs-tag">&lt;/<span class="hljs-name">head</span>&gt;</span>
</div><div class="hljs-line"><span class="hljs-tag">&lt;<span class="hljs-name">body</span>&gt;</span>
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">账号: <span class="hljs-tag">&lt;<span class="hljs-name">input</span> <span class="hljs-attr">type</span>=<span class="hljs-string">"text"</span> <span class="hljs-attr">name</span>=<span class="hljs-string">"loginName"</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"loginName"</span>&gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">span</span> &gt;</span><span class="hljs-tag">&lt;<span class="hljs-name">font</span> <span class="hljs-attr">id</span>=<span class="hljs-string">"message"</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">font</span>&gt;</span><span class="hljs-tag">&lt;/<span class="hljs-name">span</span>&gt;</span>
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line"><span class="hljs-tag">&lt;/<span class="hljs-name">body</span>&gt;</span>
</div><div class="hljs-line"><span class="hljs-tag">&lt;/<span class="hljs-name">html</span>&gt;</span>
</div></code></pre>

<p>CheckNameServlet:</p>



<pre class="prettyprint hljs-dark"><code class="language-java hljs"><div class="hljs-line"><span class="hljs-keyword">package</span> com.ykmimi.login;
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line"><span class="hljs-keyword">import</span> javax.servlet.ServletException;
</div><div class="hljs-line"><span class="hljs-keyword">import</span> javax.servlet.annotation.WebServlet;
</div><div class="hljs-line"><span class="hljs-keyword">import</span> javax.servlet.http.HttpServlet;
</div><div class="hljs-line"><span class="hljs-keyword">import</span> javax.servlet.http.HttpServletRequest;
</div><div class="hljs-line"><span class="hljs-keyword">import</span> javax.servlet.http.HttpServletResponse;
</div><div class="hljs-line"><span class="hljs-keyword">import</span> java.io.IOException;
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">WebServlet(name = <span class="hljs-string">"CheckNameServlet"</span>)
</div><div class="hljs-line"><span class="hljs-keyword">public</span> <span class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">CheckNameServlet</span> <span class="hljs-keyword">extends</span> <span class="hljs-title">HttpServlet</span> </span>{
</div><div class="hljs-line">    <span class="hljs-function"><span class="hljs-keyword">protected</span> <span class="hljs-keyword">void</span> <span class="hljs-title">doPost</span><span class="hljs-params">(HttpServletRequest request, HttpServletResponse response)</span> <span class="hljs-keyword">throws</span> ServletException, IOException </span>{
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">        <span class="hljs-comment">//设置请求编码</span>
</div><div class="hljs-line">        request.setCharacterEncoding(<span class="hljs-string">"UTF-8"</span>);
</div><div class="hljs-line">        <span class="hljs-comment">//获取请求数据</span>
</div><div class="hljs-line">        String loginName = request.getParameter(<span class="hljs-string">"loginName"</span>);
</div><div class="hljs-line">        <span class="hljs-comment">//简单判定</span>
</div><div class="hljs-line">        <span class="hljs-keyword">if</span> (<span class="hljs-string">"admin"</span>.equals(loginName)) {
</div><div class="hljs-line">            request.setAttribute(<span class="hljs-string">"data"</span>,<span class="hljs-keyword">false</span>);
</div><div class="hljs-line">            request.getRequestDispatcher(<span class="hljs-string">"data.jsp"</span>).forward(request,response);
</div><div class="hljs-line">            <span class="hljs-keyword">return</span>;
</div><div class="hljs-line">        }
</div><div class="hljs-line">        request.setAttribute(<span class="hljs-string">"data"</span>, <span class="hljs-keyword">true</span>);
</div><div class="hljs-line">        request.getRequestDispatcher(<span class="hljs-string">"data.jsp"</span>).forward(request, response);
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">    }
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">    <span class="hljs-function"><span class="hljs-keyword">protected</span> <span class="hljs-keyword">void</span> <span class="hljs-title">doGet</span><span class="hljs-params">(HttpServletRequest request, HttpServletResponse response)</span> <span class="hljs-keyword">throws</span> ServletException, IOException </span>{
</div><div class="hljs-line">        <span class="hljs-keyword">super</span>.doPost(request, response);
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">    }
</div><div class="hljs-line">}
</div></code></pre>

<p>根据之上已经实现了Ajax的查询,并已经改为了从数据库直接查询:</p>



<pre class="prettyprint hljs-dark"><code class="language-java hljs"><div class="hljs-line"><span class="hljs-keyword">package</span> com.ykmimi.login;
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line"><span class="hljs-keyword">import</span> javax.servlet.ServletException;
</div><div class="hljs-line"><span class="hljs-keyword">import</span> javax.servlet.annotation.WebServlet;
</div><div class="hljs-line"><span class="hljs-keyword">import</span> javax.servlet.http.HttpServlet;
</div><div class="hljs-line"><span class="hljs-keyword">import</span> javax.servlet.http.HttpServletRequest;
</div><div class="hljs-line"><span class="hljs-keyword">import</span> javax.servlet.http.HttpServletResponse;
</div><div class="hljs-line"><span class="hljs-keyword">import</span> java.io.IOException;
</div><div class="hljs-line"><span class="hljs-keyword">import</span> java.io.PrintWriter;
</div><div class="hljs-line"><span class="hljs-keyword">import</span> java.sql.Connection;
</div><div class="hljs-line"><span class="hljs-keyword">import</span> java.sql.DriverManager;
</div><div class="hljs-line"><span class="hljs-keyword">import</span> java.sql.ResultSet;
</div><div class="hljs-line"><span class="hljs-keyword">import</span> java.sql.SQLException;
</div><div class="hljs-line"><span class="hljs-keyword">import</span> java.sql.Statement;
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line"><span class="hljs-keyword">public</span> <span class="hljs-class"><span class="hljs-keyword">class</span> <span class="hljs-title">CheckNameServlet</span> <span class="hljs-keyword">extends</span> <span class="hljs-title">HttpServlet</span> </span>{
</div><div class="hljs-line">    <span class="hljs-function"><span class="hljs-keyword">protected</span> <span class="hljs-keyword">void</span> <span class="hljs-title">doPost</span><span class="hljs-params">(HttpServletRequest request, HttpServletResponse response)</span>
</span></div><div class="hljs-line">            <span class="hljs-keyword">throws</span> ServletException, IOException {
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">        <span class="hljs-comment">// 设置请求编码</span>
</div><div class="hljs-line">        request.setCharacterEncoding(<span class="hljs-string">"UTF-8"</span>);
</div><div class="hljs-line">        <span class="hljs-comment">// 获取请求数据</span>
</div><div class="hljs-line">        String userName = request.getParameter(<span class="hljs-string">"userName"</span>);
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">        <span class="hljs-comment">//</span>
</div><div class="hljs-line">        String driverName = <span class="hljs-string">"org.mariadb.jdbc.Driver"</span>;
</div><div class="hljs-line">        String DBUrl = <span class="hljs-string">"jdbc:mariadb://**.**.**.**:3306/*****"</span>;
</div><div class="hljs-line">        String DBUser = <span class="hljs-string">"******"</span>;
</div><div class="hljs-line">        String DBPassword = <span class="hljs-string">"************"</span>;
</div><div class="hljs-line">        PrintWriter pw = response.getWriter();
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">        <span class="hljs-keyword">try</span> {
</div><div class="hljs-line">            Class.forName(driverName);
</div><div class="hljs-line">            Connection conn = DriverManager.getConnection(DBUrl, DBUser, DBPassword);
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">            String sql = <span class="hljs-string">"SELECT * FROM user WHERE username = '"</span> + userName + <span class="hljs-string">"'"</span>;
</div><div class="hljs-line">            Statement stmt1 = conn.createStatement();
</div><div class="hljs-line">            ResultSet name = stmt1.executeQuery(sql);
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">            <span class="hljs-keyword">if</span> (name.next()) {
</div><div class="hljs-line">                request.setAttribute(<span class="hljs-string">"data"</span>, <span class="hljs-keyword">false</span>);
</div><div class="hljs-line">                request.getRequestDispatcher(<span class="hljs-string">"data.jsp"</span>).forward(request, response);
</div><div class="hljs-line">                <span class="hljs-keyword">return</span>;
</div><div class="hljs-line">            }
</div><div class="hljs-line">            request.setAttribute(<span class="hljs-string">"data"</span>, <span class="hljs-keyword">true</span>);
</div><div class="hljs-line">            request.getRequestDispatcher(<span class="hljs-string">"data.jsp"</span>).forward(request, response);
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">        } <span class="hljs-keyword">catch</span> (ClassNotFoundException e) {
</div><div class="hljs-line">            <span class="hljs-comment">// TODO Auto-generated catch block</span>
</div><div class="hljs-line">            e.printStackTrace();
</div><div class="hljs-line">        } <span class="hljs-keyword">catch</span> (SQLException e) {
</div><div class="hljs-line">            <span class="hljs-comment">// TODO Auto-generated catch block</span>
</div><div class="hljs-line">            e.printStackTrace();
</div><div class="hljs-line">        }
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">    }
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">    <span class="hljs-function"><span class="hljs-keyword">protected</span> <span class="hljs-keyword">void</span> <span class="hljs-title">doGet</span><span class="hljs-params">(HttpServletRequest request, HttpServletResponse response)</span>
</span></div><div class="hljs-line">            <span class="hljs-keyword">throws</span> ServletException, IOException {
</div><div class="hljs-line">        <span class="hljs-keyword">super</span>.doPost(request, response);
</div><div class="hljs-line"><wbr>
</div><div class="hljs-line">    }
</div><div class="hljs-line">}
</div></code></pre>

<p>而界面是这样的,因为用户名下一个是<strong>js的onfocus</strong>方法,一个是刚加的<strong>jquery的blur</strong>方法,所以前者判定格式位数,后面从后台查询用户名是否注册,这里的问题是: <br>
<strong>用户名格式不正确时, 但未注册.</strong> 这种情形<img longdesc="./1520692875542.png" alt="Alt text" title="" type="image/png" src="data:image/png;base64,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" class=""></p>

<p><strong>用户名格式正确, 但已经注册.</strong> 这种情形<img longdesc="./1520692805857.png" alt="Alt text" title="" type="image/png" src="data:image/png;base64,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" class=""></p>

<p>两个方式不同的js显示红绿相间,着实不够逻辑和好看. 今晚睡觉想想办法吧. :) <br>
2018年3月10日 22:41:56 <br>
数据库查用户名那个有注入风险,而且没有使用预处理statement</p>

<hr>

<p>感觉我的华为本越来越好用了…♥ <br>
上面的案例中,除了没有PreparedStatement,防止SQL注入外, 在用户名及格式都正确时也没有一个跳转进行实际的用户名注册.</p></div></body></html>