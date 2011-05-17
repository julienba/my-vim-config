<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  
  


  

  <head>
    <title>
      /scala-tool-support/trunk/src/vim/indent/scala.vim – Scala
    </title>
        <link rel="search" href="/trac/scala/search" />
        <link rel="help" href="/trac/scala/wiki/TracGuide" />
        <link rel="alternate" href="/trac/scala/export/24986/scala-tool-support/trunk/src/vim/indent/scala.vim" type="text/plain" title="Original Format" />
        <link rel="up" href="/trac/scala/browser/scala-tool-support/trunk/src/vim/indent" title="Parent directory" />
        <link rel="start" href="/trac/scala/wiki" />
        <link rel="stylesheet" href="/trac/scala/chrome/common/css/trac.css" type="text/css" /><link rel="stylesheet" href="/trac/scala/chrome/common/css/code.css" type="text/css" /><link rel="stylesheet" href="/trac/scala/pygments/trac.css" type="text/css" /><link rel="stylesheet" href="/trac/scala/chrome/common/css/browser.css" type="text/css" />
        <link rel="shortcut icon" href="/trac/scala/chrome/common/trac.ico" type="image/x-icon" />
        <link rel="icon" href="/trac/scala/chrome/common/trac.ico" type="image/x-icon" />
      <link type="application/opensearchdescription+xml" rel="search" href="/trac/scala/search/opensearch" title="Search Scala" />
    <script type="text/javascript" src="/trac/scala/chrome/common/js/jquery.js"></script><script type="text/javascript" src="/trac/scala/chrome/common/js/trac.js"></script><script type="text/javascript" src="/trac/scala/chrome/common/js/search.js"></script>
    <!--[if lt IE 7]>
    <script type="text/javascript" src="/trac/scala/chrome/common/js/ie_pre7_hacks.js"></script>
    <![endif]-->
    <script type="text/javascript">
      jQuery(document).ready(function($) {
        $(".trac-toggledeleted").show().click(function() {
                  $(this).siblings().find(".trac-deleted").toggle();
                  return false;
        }).click();
        $("#jumploc input").hide();
        $("#jumploc select").change(function () {
          this.parentNode.parentNode.submit();
        });
      });
    </script>
  </head>
  <body>
    <div id="banner">
      <div id="header">
        <a id="logo" href="http://scala-lang.org/"><img src="/images/Scala_Logo2008.png" alt="" /></a>
      </div>
      <form id="search" action="/trac/scala/search" method="get">
        <div>
          <label for="proj-search">Search:</label>
          <input type="text" id="proj-search" name="q" size="18" value="" />
          <input type="submit" value="Search" />
        </div>
      </form>
      <div id="metanav" class="nav">
    <ul>
      <li class="first"><a href="/trac/scala/login">Login</a></li><li><a href="/trac/scala/wiki/TracGuide">Help/Guide</a></li><li><a href="/trac/scala/register">Register</a></li><li><a href="/trac/scala/prefs">Preferences</a></li><li class="last"><a href="/trac/scala/reset_password">Forgot your password?</a></li>
    </ul>
  </div>
    </div>
    <div id="mainnav" class="nav">
    <ul>
      <li class="first"><a href="/trac/scala/wiki">Wiki</a></li><li><a href="/trac/scala/timeline">Timeline</a></li><li class="active"><a href="/trac/scala/browser">Browse Source</a></li><li><a href="/trac/scala/query">View Tickets</a></li><li class="last"><a href="/trac/scala/search">Search</a></li>
    </ul>
  </div>
    <div id="main">
      <div id="ctxtnav" class="nav">
        <h2>Context Navigation</h2>
          <ul>
              <li class="first"><a href="/trac/scala/changeset/21921/scala-tool-support/trunk/src/vim/indent/scala.vim">Last Change</a></li><li><a href="/trac/scala/browser/scala-tool-support/trunk/src/vim/indent/scala.vim?annotate=blame&amp;rev=21921" title="Annotate each line with the last changed revision (this can be time consuming...)">Annotate</a></li><li class="last"><a href="/trac/scala/log/scala-tool-support/trunk/src/vim/indent/scala.vim">Revision Log</a></li>
          </ul>
        <hr />
      </div>
    <div id="content" class="browser">
      <h1>
    <a class="pathentry first" title="Go to root directory" href="/trac/scala/browser">root</a><span class="pathentry sep">/</span><a class="pathentry" title="View scala-tool-support" href="/trac/scala/browser/scala-tool-support">scala-tool-support</a><span class="pathentry sep">/</span><a class="pathentry" title="View trunk" href="/trac/scala/browser/scala-tool-support/trunk">trunk</a><span class="pathentry sep">/</span><a class="pathentry" title="View src" href="/trac/scala/browser/scala-tool-support/trunk/src">src</a><span class="pathentry sep">/</span><a class="pathentry" title="View vim" href="/trac/scala/browser/scala-tool-support/trunk/src/vim">vim</a><span class="pathentry sep">/</span><a class="pathentry" title="View indent" href="/trac/scala/browser/scala-tool-support/trunk/src/vim/indent">indent</a><span class="pathentry sep">/</span><a class="pathentry" title="View scala.vim" href="/trac/scala/browser/scala-tool-support/trunk/src/vim/indent/scala.vim">scala.vim</a>
    <br style="clear: both" />
  </h1>
      <div id="jumprev">
        <form action="" method="get">
          <div>
            <label for="rev">
              View revision:</label>
            <input type="text" id="rev" name="rev" size="6" />
          </div>
        </form>
      </div>
      <table id="info" summary="Revision info">
        <tr>
          <th scope="col">
            Revision <a href="/trac/scala/changeset/21921">21921</a>, <span title="2152 bytes">2.1 KB</span>
            (checked in by dubochet, <a class="timeline" href="/trac/scala/timeline?from=2010-05-12T17%3A38%3A51%2B0200&amp;precision=second" title="2010-05-12T17:38:51+0200 in Timeline">12 months</a> ago)
          </th>
        </tr>
        <tr>
          <td class="message searchable">
              <p>
Removed more SVN keyword substitution tags (as the tags have been removed). No review.<br />
</p>
          </td>
        </tr>
        <tr>
          <td colspan="2">
            <ul class="props">
              <li>
                  Property <strong>svn:eol-style</strong> set to
                    <em><code>LF</code></em>
              </li>
            </ul>
          </td>
        </tr>
      </table>
      <div id="preview" class="searchable">
    <table class="code"><thead><tr><th class="lineno" title="Line numbers">Line</th><th class="content"> </th></tr></thead><tbody><tr><th id="L1"><a href="#L1">1</a></th><td>" Vim indent file</td></tr><tr><th id="L2"><a href="#L2">2</a></th><td>" Language   : Scala (http://scala-lang.org/)</td></tr><tr><th id="L3"><a href="#L3">3</a></th><td>" Maintainer : Stefan Matthias Aust</td></tr><tr><th id="L4"><a href="#L4">4</a></th><td>" Last Change: 2006 Apr 13</td></tr><tr><th id="L5"><a href="#L5">5</a></th><td></td></tr><tr><th id="L6"><a href="#L6">6</a></th><td>if exists("b:did_indent")</td></tr><tr><th id="L7"><a href="#L7">7</a></th><td>  finish</td></tr><tr><th id="L8"><a href="#L8">8</a></th><td>endif</td></tr><tr><th id="L9"><a href="#L9">9</a></th><td>let b:did_indent = 1</td></tr><tr><th id="L10"><a href="#L10">10</a></th><td></td></tr><tr><th id="L11"><a href="#L11">11</a></th><td>setlocal indentexpr=GetScalaIndent()</td></tr><tr><th id="L12"><a href="#L12">12</a></th><td></td></tr><tr><th id="L13"><a href="#L13">13</a></th><td>setlocal indentkeys=0{,0},0),!^F,&lt;&gt;&gt;,&lt;CR&gt;</td></tr><tr><th id="L14"><a href="#L14">14</a></th><td></td></tr><tr><th id="L15"><a href="#L15">15</a></th><td>setlocal autoindent sw=2 et</td></tr><tr><th id="L16"><a href="#L16">16</a></th><td></td></tr><tr><th id="L17"><a href="#L17">17</a></th><td>if exists("*GetScalaIndent")</td></tr><tr><th id="L18"><a href="#L18">18</a></th><td>  finish</td></tr><tr><th id="L19"><a href="#L19">19</a></th><td>endif</td></tr><tr><th id="L20"><a href="#L20">20</a></th><td></td></tr><tr><th id="L21"><a href="#L21">21</a></th><td>function! CountParens(line)</td></tr><tr><th id="L22"><a href="#L22">22</a></th><td>  let line = substitute(a:line, '"\(.\|\\"\)*"', '', 'g')</td></tr><tr><th id="L23"><a href="#L23">23</a></th><td>  let open = substitute(line, '[^(]', '', 'g')</td></tr><tr><th id="L24"><a href="#L24">24</a></th><td>  let close = substitute(line, '[^)]', '', 'g')</td></tr><tr><th id="L25"><a href="#L25">25</a></th><td>  return strlen(open) - strlen(close)</td></tr><tr><th id="L26"><a href="#L26">26</a></th><td>endfunction</td></tr><tr><th id="L27"><a href="#L27">27</a></th><td></td></tr><tr><th id="L28"><a href="#L28">28</a></th><td>function! GetScalaIndent()</td></tr><tr><th id="L29"><a href="#L29">29</a></th><td>  " Find a non-blank line above the current line.</td></tr><tr><th id="L30"><a href="#L30">30</a></th><td>  let lnum = prevnonblank(v:lnum - 1)</td></tr><tr><th id="L31"><a href="#L31">31</a></th><td></td></tr><tr><th id="L32"><a href="#L32">32</a></th><td>  " Hit the start of the file, use zero indent.</td></tr><tr><th id="L33"><a href="#L33">33</a></th><td>  if lnum == 0</td></tr><tr><th id="L34"><a href="#L34">34</a></th><td>    return 0</td></tr><tr><th id="L35"><a href="#L35">35</a></th><td>  endif</td></tr><tr><th id="L36"><a href="#L36">36</a></th><td></td></tr><tr><th id="L37"><a href="#L37">37</a></th><td>  let ind = indent(lnum)</td></tr><tr><th id="L38"><a href="#L38">38</a></th><td>  let prevline = getline(lnum)</td></tr><tr><th id="L39"><a href="#L39">39</a></th><td></td></tr><tr><th id="L40"><a href="#L40">40</a></th><td>  "Indent html literals</td></tr><tr><th id="L41"><a href="#L41">41</a></th><td>  if prevline !~ '/&gt;\s*$' &amp;&amp; prevline =~ '^\s*&lt;[a-zA-Z][^&gt;]*&gt;\s*$'</td></tr><tr><th id="L42"><a href="#L42">42</a></th><td>    return ind + &amp;shiftwidth</td></tr><tr><th id="L43"><a href="#L43">43</a></th><td>  endif</td></tr><tr><th id="L44"><a href="#L44">44</a></th><td></td></tr><tr><th id="L45"><a href="#L45">45</a></th><td>  " Add a 'shiftwidth' after lines that start a block</td></tr><tr><th id="L46"><a href="#L46">46</a></th><td>  " If if, for or while end with ), this is a one-line block</td></tr><tr><th id="L47"><a href="#L47">47</a></th><td>  " If val, var, def end with =, this is a one-line block</td></tr><tr><th id="L48"><a href="#L48">48</a></th><td>  if prevline =~ '^\s*\&lt;\(\(else\s\+\)\?if\|for\|while\|va[lr]\|def\)\&gt;.*[)=]\s*$'</td></tr><tr><th id="L49"><a href="#L49">49</a></th><td>        \ || prevline =~ '^\s*\&lt;else\&gt;\s*$'</td></tr><tr><th id="L50"><a href="#L50">50</a></th><td>        \ || prevline =~ '{\s*$'</td></tr><tr><th id="L51"><a href="#L51">51</a></th><td>    let ind = ind + &amp;shiftwidth</td></tr><tr><th id="L52"><a href="#L52">52</a></th><td>  endif</td></tr><tr><th id="L53"><a href="#L53">53</a></th><td></td></tr><tr><th id="L54"><a href="#L54">54</a></th><td>  " If parenthesis are unbalanced, indent or dedent</td></tr><tr><th id="L55"><a href="#L55">55</a></th><td>  let c = CountParens(prevline)</td></tr><tr><th id="L56"><a href="#L56">56</a></th><td>  echo c</td></tr><tr><th id="L57"><a href="#L57">57</a></th><td>  if c &gt; 0</td></tr><tr><th id="L58"><a href="#L58">58</a></th><td>    let ind = ind + &amp;shiftwidth</td></tr><tr><th id="L59"><a href="#L59">59</a></th><td>  elseif c &lt; 0</td></tr><tr><th id="L60"><a href="#L60">60</a></th><td>    let ind = ind - &amp;shiftwidth</td></tr><tr><th id="L61"><a href="#L61">61</a></th><td>  endif</td></tr><tr><th id="L62"><a href="#L62">62</a></th><td>  </td></tr><tr><th id="L63"><a href="#L63">63</a></th><td>  " Dedent after if, for, while and val, var, def without block</td></tr><tr><th id="L64"><a href="#L64">64</a></th><td>  let pprevline = getline(prevnonblank(lnum - 1))</td></tr><tr><th id="L65"><a href="#L65">65</a></th><td>  if pprevline =~ '^\s*\&lt;\(\(else\s\+\)\?if\|for\|while\|va[lr]\|def\)\&gt;.*[)=]\s*$'</td></tr><tr><th id="L66"><a href="#L66">66</a></th><td>        \ || pprevline =~ '^\s*\&lt;else\&gt;\s*$'</td></tr><tr><th id="L67"><a href="#L67">67</a></th><td>    let ind = ind - &amp;shiftwidth</td></tr><tr><th id="L68"><a href="#L68">68</a></th><td>  endif</td></tr><tr><th id="L69"><a href="#L69">69</a></th><td></td></tr><tr><th id="L70"><a href="#L70">70</a></th><td>  " Align 'for' clauses nicely</td></tr><tr><th id="L71"><a href="#L71">71</a></th><td>  if prevline =~ '^\s*\&lt;for\&gt; (.*;\s*$'</td></tr><tr><th id="L72"><a href="#L72">72</a></th><td>    let ind = ind - &amp;shiftwidth + 5</td></tr><tr><th id="L73"><a href="#L73">73</a></th><td>  endif</td></tr><tr><th id="L74"><a href="#L74">74</a></th><td></td></tr><tr><th id="L75"><a href="#L75">75</a></th><td>  " Subtract a 'shiftwidth' on '}' or html</td></tr><tr><th id="L76"><a href="#L76">76</a></th><td>  let thisline = getline(v:lnum)</td></tr><tr><th id="L77"><a href="#L77">77</a></th><td>  if thisline =~ '^\s*[})]' </td></tr><tr><th id="L78"><a href="#L78">78</a></th><td>        \ || thisline =~ '^\s*&lt;/[a-zA-Z][^&gt;]*&gt;'</td></tr><tr><th id="L79"><a href="#L79">79</a></th><td>    let ind = ind - &amp;shiftwidth</td></tr><tr><th id="L80"><a href="#L80">80</a></th><td>  endif</td></tr><tr><th id="L81"><a href="#L81">81</a></th><td></td></tr><tr><th id="L82"><a href="#L82">82</a></th><td>  return ind</td></tr><tr><th id="L83"><a href="#L83">83</a></th><td>endfunction</td></tr></tbody></table>
      </div>
      <div id="help">
        <strong>Note:</strong> See <a href="/trac/scala/wiki/TracBrowser">TracBrowser</a>
        for help on using the browser.
      </div>
      <div id="anydiff">
        <form action="/trac/scala/diff" method="get">
          <div class="buttons">
            <input type="hidden" name="new_path" value="/scala-tool-support/trunk/src/vim/indent/scala.vim" />
            <input type="hidden" name="old_path" value="/scala-tool-support/trunk/src/vim/indent/scala.vim" />
            <input type="hidden" name="new_rev" />
            <input type="hidden" name="old_rev" />
            <input type="submit" value="View changes..." title="Select paths and revs for Diff" />
          </div>
        </form>
      </div>
    </div>
    <div id="altlinks">
      <h3>Download in other formats:</h3>
      <ul>
        <li class="last first">
          <a rel="nofollow" href="/trac/scala/export/24986/scala-tool-support/trunk/src/vim/indent/scala.vim">Original Format</a>
        </li>
      </ul>
    </div>
    </div>
    <div id="footer" lang="en" xml:lang="en"><hr />
      <a id="tracpowered" href="http://trac.edgewall.org/"><img src="/trac/scala/chrome/common/trac_logo_mini.png" height="30" width="107" alt="Trac Powered" /></a>
      <p class="left">
        Powered by <a href="/trac/scala/about"><strong>Trac 0.11.6</strong></a><br />
        By <a href="http://www.edgewall.org/">Edgewall Software</a>.
      </p>
      <p class="right">Visit the Scala project at<br /><a href="http://scala-lang.org/">http://scala-lang.org/</a></p>
    </div>
  </body>
</html>