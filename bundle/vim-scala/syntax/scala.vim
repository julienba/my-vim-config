<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  
  


  

  <head>
    <title>
      /scala-tool-support/trunk/src/vim/syntax/scala.vim – Scala
    </title>
        <link rel="search" href="/trac/scala/search" />
        <link rel="help" href="/trac/scala/wiki/TracGuide" />
        <link rel="alternate" href="/trac/scala/export/24986/scala-tool-support/trunk/src/vim/syntax/scala.vim" type="text/plain" title="Original Format" />
        <link rel="up" href="/trac/scala/browser/scala-tool-support/trunk/src/vim/syntax" title="Parent directory" />
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
              <li class="first"><a href="/trac/scala/changeset/21921/scala-tool-support/trunk/src/vim/syntax/scala.vim">Last Change</a></li><li><a href="/trac/scala/browser/scala-tool-support/trunk/src/vim/syntax/scala.vim?annotate=blame&amp;rev=21921" title="Annotate each line with the last changed revision (this can be time consuming...)">Annotate</a></li><li class="last"><a href="/trac/scala/log/scala-tool-support/trunk/src/vim/syntax/scala.vim">Revision Log</a></li>
          </ul>
        <hr />
      </div>
    <div id="content" class="browser">
      <h1>
    <a class="pathentry first" title="Go to root directory" href="/trac/scala/browser">root</a><span class="pathentry sep">/</span><a class="pathentry" title="View scala-tool-support" href="/trac/scala/browser/scala-tool-support">scala-tool-support</a><span class="pathentry sep">/</span><a class="pathentry" title="View trunk" href="/trac/scala/browser/scala-tool-support/trunk">trunk</a><span class="pathentry sep">/</span><a class="pathentry" title="View src" href="/trac/scala/browser/scala-tool-support/trunk/src">src</a><span class="pathentry sep">/</span><a class="pathentry" title="View vim" href="/trac/scala/browser/scala-tool-support/trunk/src/vim">vim</a><span class="pathentry sep">/</span><a class="pathentry" title="View syntax" href="/trac/scala/browser/scala-tool-support/trunk/src/vim/syntax">syntax</a><span class="pathentry sep">/</span><a class="pathentry" title="View scala.vim" href="/trac/scala/browser/scala-tool-support/trunk/src/vim/syntax/scala.vim">scala.vim</a>
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
            Revision <a href="/trac/scala/changeset/21921">21921</a>, <span title="6008 bytes">5.9 KB</span>
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
    <table class="code"><thead><tr><th class="lineno" title="Line numbers">Line</th><th class="content"> </th></tr></thead><tbody><tr><th id="L1"><a href="#L1">1</a></th><td>" Vim syntax file</td></tr><tr><th id="L2"><a href="#L2">2</a></th><td>" Language   : Scala (http://scala-lang.org/)</td></tr><tr><th id="L3"><a href="#L3">3</a></th><td>" Maintainers: Stefan Matthias Aust, Julien Wetterwald</td></tr><tr><th id="L4"><a href="#L4">4</a></th><td>" Last Change: 2007 June 13</td></tr><tr><th id="L5"><a href="#L5">5</a></th><td></td></tr><tr><th id="L6"><a href="#L6">6</a></th><td>if version &lt; 600</td></tr><tr><th id="L7"><a href="#L7">7</a></th><td>  syntax clear</td></tr><tr><th id="L8"><a href="#L8">8</a></th><td>elseif exists("b:current_syntax")</td></tr><tr><th id="L9"><a href="#L9">9</a></th><td>  finish</td></tr><tr><th id="L10"><a href="#L10">10</a></th><td>endif</td></tr><tr><th id="L11"><a href="#L11">11</a></th><td></td></tr><tr><th id="L12"><a href="#L12">12</a></th><td>syn case match</td></tr><tr><th id="L13"><a href="#L13">13</a></th><td>syn sync minlines=50</td></tr><tr><th id="L14"><a href="#L14">14</a></th><td></td></tr><tr><th id="L15"><a href="#L15">15</a></th><td>" most Scala keywords</td></tr><tr><th id="L16"><a href="#L16">16</a></th><td>syn keyword scalaKeyword abstract case catch do else extends final finally for forSome if implicit lazy match new null override private protected requires return sealed super this throw try type while with yield</td></tr><tr><th id="L17"><a href="#L17">17</a></th><td>syn match scalaKeyword "=&gt;"</td></tr><tr><th id="L18"><a href="#L18">18</a></th><td>syn match scalaKeyword "&lt;-"</td></tr><tr><th id="L19"><a href="#L19">19</a></th><td>syn match scalaKeyword "\&lt;_\&gt;"</td></tr><tr><th id="L20"><a href="#L20">20</a></th><td></td></tr><tr><th id="L21"><a href="#L21">21</a></th><td>syn match scalaOperator ":\{2,\}" "this is not a type</td></tr><tr><th id="L22"><a href="#L22">22</a></th><td></td></tr><tr><th id="L23"><a href="#L23">23</a></th><td>" package and import statements</td></tr><tr><th id="L24"><a href="#L24">24</a></th><td>syn keyword scalaPackage package nextgroup=scalaFqn skipwhite</td></tr><tr><th id="L25"><a href="#L25">25</a></th><td>syn keyword scalaImport import nextgroup=scalaFqn skipwhite</td></tr><tr><th id="L26"><a href="#L26">26</a></th><td>syn match scalaFqn "\&lt;[._$a-zA-Z0-9,]*" contained nextgroup=scalaFqnSet</td></tr><tr><th id="L27"><a href="#L27">27</a></th><td>syn region scalaFqnSet start="{" end="}" contained</td></tr><tr><th id="L28"><a href="#L28">28</a></th><td></td></tr><tr><th id="L29"><a href="#L29">29</a></th><td>" boolean literals</td></tr><tr><th id="L30"><a href="#L30">30</a></th><td>syn keyword scalaBoolean true false</td></tr><tr><th id="L31"><a href="#L31">31</a></th><td></td></tr><tr><th id="L32"><a href="#L32">32</a></th><td>" definitions</td></tr><tr><th id="L33"><a href="#L33">33</a></th><td>syn keyword scalaDef def nextgroup=scalaDefName skipwhite</td></tr><tr><th id="L34"><a href="#L34">34</a></th><td>syn keyword scalaVal val nextgroup=scalaValName skipwhite</td></tr><tr><th id="L35"><a href="#L35">35</a></th><td>syn keyword scalaVar var nextgroup=scalaVarName skipwhite</td></tr><tr><th id="L36"><a href="#L36">36</a></th><td>syn keyword scalaClass class nextgroup=scalaClassName skipwhite</td></tr><tr><th id="L37"><a href="#L37">37</a></th><td>syn keyword scalaObject object nextgroup=scalaClassName skipwhite</td></tr><tr><th id="L38"><a href="#L38">38</a></th><td>syn keyword scalaTrait trait nextgroup=scalaClassName skipwhite</td></tr><tr><th id="L39"><a href="#L39">39</a></th><td>syn match scalaDefName "[^ =:;([]\+" contained nextgroup=scalaDefSpecializer skipwhite</td></tr><tr><th id="L40"><a href="#L40">40</a></th><td>syn match scalaValName "[^ =:;([]\+" contained</td></tr><tr><th id="L41"><a href="#L41">41</a></th><td>syn match scalaVarName "[^ =:;([]\+" contained </td></tr><tr><th id="L42"><a href="#L42">42</a></th><td>syn match scalaClassName "[^ =:;(\[]\+" contained nextgroup=scalaClassSpecializer skipwhite</td></tr><tr><th id="L43"><a href="#L43">43</a></th><td>syn region scalaDefSpecializer start="\[" end="\]" contained contains=scalaDefSpecializer</td></tr><tr><th id="L44"><a href="#L44">44</a></th><td>syn region scalaClassSpecializer start="\[" end="\]" contained contains=scalaClassSpecializer</td></tr><tr><th id="L45"><a href="#L45">45</a></th><td></td></tr><tr><th id="L46"><a href="#L46">46</a></th><td>" type constructor (actually anything with an uppercase letter)</td></tr><tr><th id="L47"><a href="#L47">47</a></th><td>syn match scalaConstructor "\&lt;[A-Z][_$a-zA-Z0-9]*\&gt;" nextgroup=scalaConstructorSpecializer</td></tr><tr><th id="L48"><a href="#L48">48</a></th><td>syn region scalaConstructorSpecializer start="\[" end="\]" contained contains=scalaConstructorSpecializer</td></tr><tr><th id="L49"><a href="#L49">49</a></th><td></td></tr><tr><th id="L50"><a href="#L50">50</a></th><td>" method call</td></tr><tr><th id="L51"><a href="#L51">51</a></th><td>syn match scalaRoot "\&lt;[a-zA-Z][_$a-zA-Z0-9]*\."me=e-1</td></tr><tr><th id="L52"><a href="#L52">52</a></th><td>syn match scalaMethodCall "\.[a-z][_$a-zA-Z0-9]*"ms=s+1</td></tr><tr><th id="L53"><a href="#L53">53</a></th><td></td></tr><tr><th id="L54"><a href="#L54">54</a></th><td>" type declarations in val/var/def</td></tr><tr><th id="L55"><a href="#L55">55</a></th><td>syn match scalaType ":\s*\(=&gt;\s*\)\?[._$a-zA-Z0-9]\+\(\[[^]]*\]\+\)\?\(\s*\(&lt;:\|&gt;:\|#\|=&gt;\)\s*[._$a-zA-Z0-9]\+\(\[[^]]*\]\+\)*\)*"ms=s+1</td></tr><tr><th id="L56"><a href="#L56">56</a></th><td></td></tr><tr><th id="L57"><a href="#L57">57</a></th><td>" comments</td></tr><tr><th id="L58"><a href="#L58">58</a></th><td>syn match scalaTodo "[tT][oO][dD][oO]" contained</td></tr><tr><th id="L59"><a href="#L59">59</a></th><td>syn match scalaLineComment "//.*" contains=scalaTodo</td></tr><tr><th id="L60"><a href="#L60">60</a></th><td>syn region scalaComment start="/\*" end="\*/" contains=scalaTodo</td></tr><tr><th id="L61"><a href="#L61">61</a></th><td>syn case ignore</td></tr><tr><th id="L62"><a href="#L62">62</a></th><td>syn include @scalaHtml syntax/html.vim</td></tr><tr><th id="L63"><a href="#L63">63</a></th><td>unlet b:current_syntax</td></tr><tr><th id="L64"><a href="#L64">64</a></th><td>syn case match</td></tr><tr><th id="L65"><a href="#L65">65</a></th><td>syn region scalaDocComment start="/\*\*" end="\*/" contains=scalaDocTags,scalaTodo,@scalaHtml keepend</td></tr><tr><th id="L66"><a href="#L66">66</a></th><td>syn region scalaDocTags start="{@\(link\|linkplain\|inherit[Dd]oc\|doc[rR]oot\|value\)" end="}" contained</td></tr><tr><th id="L67"><a href="#L67">67</a></th><td>syn match scalaDocTags "@[a-z]\+" contained</td></tr><tr><th id="L68"><a href="#L68">68</a></th><td></td></tr><tr><th id="L69"><a href="#L69">69</a></th><td>syn match scalaEmptyString "\"\""</td></tr><tr><th id="L70"><a href="#L70">70</a></th><td></td></tr><tr><th id="L71"><a href="#L71">71</a></th><td>" multi-line string literals</td></tr><tr><th id="L72"><a href="#L72">72</a></th><td>syn region scalaMultiLineString start="\"\"\"" end="\"\"\"" contains=scalaUnicode</td></tr><tr><th id="L73"><a href="#L73">73</a></th><td>syn match scalaUnicode "\\u[0-9a-fA-F]\{4}" contained</td></tr><tr><th id="L74"><a href="#L74">74</a></th><td></td></tr><tr><th id="L75"><a href="#L75">75</a></th><td>" string literals with escapes</td></tr><tr><th id="L76"><a href="#L76">76</a></th><td>syn region scalaString start="\"[^"]" skip="\\\"" end="\"" contains=scalaStringEscape " TODO end \n or not?</td></tr><tr><th id="L77"><a href="#L77">77</a></th><td>syn match scalaStringEscape "\\u[0-9a-fA-F]\{4}" contained</td></tr><tr><th id="L78"><a href="#L78">78</a></th><td>syn match scalaStringEscape "\\[nrfvb\\\"]" contained</td></tr><tr><th id="L79"><a href="#L79">79</a></th><td></td></tr><tr><th id="L80"><a href="#L80">80</a></th><td>" symbol and character literals</td></tr><tr><th id="L81"><a href="#L81">81</a></th><td>syn match scalaSymbol "'[_a-zA-Z0-9][_a-zA-Z0-9]*\&gt;"</td></tr><tr><th id="L82"><a href="#L82">82</a></th><td>syn match scalaChar "'[^'\\]'\|'\\.'\|'\\u[0-9a-fA-F]\{4}'"</td></tr><tr><th id="L83"><a href="#L83">83</a></th><td></td></tr><tr><th id="L84"><a href="#L84">84</a></th><td>" number literals</td></tr><tr><th id="L85"><a href="#L85">85</a></th><td>syn match scalaNumber "\&lt;\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\&gt;"</td></tr><tr><th id="L86"><a href="#L86">86</a></th><td>syn match scalaNumber "\(\&lt;\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="</td></tr><tr><th id="L87"><a href="#L87">87</a></th><td>syn match scalaNumber "\&lt;\d\+[eE][-+]\=\d\+[fFdD]\=\&gt;"</td></tr><tr><th id="L88"><a href="#L88">88</a></th><td>syn match scalaNumber "\&lt;\d\+\([eE][-+]\=\d\+\)\=[fFdD]\&gt;"</td></tr><tr><th id="L89"><a href="#L89">89</a></th><td></td></tr><tr><th id="L90"><a href="#L90">90</a></th><td>" xml literals</td></tr><tr><th id="L91"><a href="#L91">91</a></th><td>syn match scalaXmlTag "&lt;[a-zA-Z]\_[^&gt;]*/&gt;" contains=scalaXmlQuote,scalaXmlEscape,scalaXmlString</td></tr><tr><th id="L92"><a href="#L92">92</a></th><td>syn region scalaXmlString start="\"" end="\"" contained</td></tr><tr><th id="L93"><a href="#L93">93</a></th><td>syn match scalaXmlStart "&lt;[a-zA-Z]\_[^&gt;]*&gt;" contained contains=scalaXmlQuote,scalaXmlEscape,scalaXmlString</td></tr><tr><th id="L94"><a href="#L94">94</a></th><td>syn region scalaXml start="&lt;\([a-zA-Z]\_[^&gt;]*\_[^/]\|[a-zA-Z]\)&gt;" matchgroup=scalaXmlStart end="&lt;/\_[^&gt;]\+&gt;" contains=scalaXmlEscape,scalaXmlQuote,scalaXml,scalaXmlStart,scalaXmlComment</td></tr><tr><th id="L95"><a href="#L95">95</a></th><td>syn region scalaXmlEscape matchgroup=scalaXmlEscapeSpecial start="{" matchgroup=scalaXmlEscapeSpecial end="}" contained contains=TOP</td></tr><tr><th id="L96"><a href="#L96">96</a></th><td>syn match scalaXmlQuote "&amp;[^;]\+;" contained</td></tr><tr><th id="L97"><a href="#L97">97</a></th><td>syn match scalaXmlComment "&lt;!--\_[^&gt;]*--&gt;" contained</td></tr><tr><th id="L98"><a href="#L98">98</a></th><td></td></tr><tr><th id="L99"><a href="#L99">99</a></th><td>syn sync fromstart</td></tr><tr><th id="L100"><a href="#L100">100</a></th><td></td></tr><tr><th id="L101"><a href="#L101">101</a></th><td>" map Scala groups to standard groups</td></tr><tr><th id="L102"><a href="#L102">102</a></th><td>hi link scalaKeyword Keyword</td></tr><tr><th id="L103"><a href="#L103">103</a></th><td>hi link scalaPackage Include</td></tr><tr><th id="L104"><a href="#L104">104</a></th><td>hi link scalaImport Include</td></tr><tr><th id="L105"><a href="#L105">105</a></th><td>hi link scalaBoolean Boolean</td></tr><tr><th id="L106"><a href="#L106">106</a></th><td>hi link scalaOperator Normal</td></tr><tr><th id="L107"><a href="#L107">107</a></th><td>hi link scalaNumber Number</td></tr><tr><th id="L108"><a href="#L108">108</a></th><td>hi link scalaEmptyString String</td></tr><tr><th id="L109"><a href="#L109">109</a></th><td>hi link scalaString String</td></tr><tr><th id="L110"><a href="#L110">110</a></th><td>hi link scalaChar String</td></tr><tr><th id="L111"><a href="#L111">111</a></th><td>hi link scalaMultiLineString String</td></tr><tr><th id="L112"><a href="#L112">112</a></th><td>hi link scalaStringEscape Special</td></tr><tr><th id="L113"><a href="#L113">113</a></th><td>hi link scalaSymbol Special</td></tr><tr><th id="L114"><a href="#L114">114</a></th><td>hi link scalaUnicode Special</td></tr><tr><th id="L115"><a href="#L115">115</a></th><td>hi link scalaComment Comment</td></tr><tr><th id="L116"><a href="#L116">116</a></th><td>hi link scalaLineComment Comment</td></tr><tr><th id="L117"><a href="#L117">117</a></th><td>hi link scalaDocComment Comment</td></tr><tr><th id="L118"><a href="#L118">118</a></th><td>hi link scalaDocTags Special</td></tr><tr><th id="L119"><a href="#L119">119</a></th><td>hi link scalaTodo Todo</td></tr><tr><th id="L120"><a href="#L120">120</a></th><td>hi link scalaType Type</td></tr><tr><th id="L121"><a href="#L121">121</a></th><td>hi link scalaTypeSpecializer scalaType</td></tr><tr><th id="L122"><a href="#L122">122</a></th><td>hi link scalaXml String</td></tr><tr><th id="L123"><a href="#L123">123</a></th><td>hi link scalaXmlTag Include</td></tr><tr><th id="L124"><a href="#L124">124</a></th><td>hi link scalaXmlString String</td></tr><tr><th id="L125"><a href="#L125">125</a></th><td>hi link scalaXmlStart Include</td></tr><tr><th id="L126"><a href="#L126">126</a></th><td>hi link scalaXmlEscape Normal</td></tr><tr><th id="L127"><a href="#L127">127</a></th><td>hi link scalaXmlEscapeSpecial Special</td></tr><tr><th id="L128"><a href="#L128">128</a></th><td>hi link scalaXmlQuote Special</td></tr><tr><th id="L129"><a href="#L129">129</a></th><td>hi link scalaXmlComment Comment</td></tr><tr><th id="L130"><a href="#L130">130</a></th><td>hi link scalaDef Keyword</td></tr><tr><th id="L131"><a href="#L131">131</a></th><td>hi link scalaVar Keyword</td></tr><tr><th id="L132"><a href="#L132">132</a></th><td>hi link scalaVal Keyword</td></tr><tr><th id="L133"><a href="#L133">133</a></th><td>hi link scalaClass Keyword</td></tr><tr><th id="L134"><a href="#L134">134</a></th><td>hi link scalaObject Keyword</td></tr><tr><th id="L135"><a href="#L135">135</a></th><td>hi link scalaTrait Keyword</td></tr><tr><th id="L136"><a href="#L136">136</a></th><td>hi link scalaDefName Function</td></tr><tr><th id="L137"><a href="#L137">137</a></th><td>hi link scalaDefSpecializer Function</td></tr><tr><th id="L138"><a href="#L138">138</a></th><td>hi link scalaClassName Special</td></tr><tr><th id="L139"><a href="#L139">139</a></th><td>hi link scalaClassSpecializer Special</td></tr><tr><th id="L140"><a href="#L140">140</a></th><td>hi link scalaConstructor Special</td></tr><tr><th id="L141"><a href="#L141">141</a></th><td>hi link scalaConstructorSpecializer scalaConstructor</td></tr><tr><th id="L142"><a href="#L142">142</a></th><td></td></tr><tr><th id="L143"><a href="#L143">143</a></th><td>let b:current_syntax = "scala"</td></tr><tr><th id="L144"><a href="#L144">144</a></th><td></td></tr><tr><th id="L145"><a href="#L145">145</a></th><td>" you might like to put these lines in your .vimrc</td></tr><tr><th id="L146"><a href="#L146">146</a></th><td>"</td></tr><tr><th id="L147"><a href="#L147">147</a></th><td>" customize colors a little bit (should be a different file)</td></tr><tr><th id="L148"><a href="#L148">148</a></th><td>" hi scalaNew gui=underline</td></tr><tr><th id="L149"><a href="#L149">149</a></th><td>" hi scalaMethodCall gui=italic</td></tr><tr><th id="L150"><a href="#L150">150</a></th><td>" hi scalaValName gui=underline</td></tr><tr><th id="L151"><a href="#L151">151</a></th><td>" hi scalaVarName gui=underline</td></tr></tbody></table>
      </div>
      <div id="help">
        <strong>Note:</strong> See <a href="/trac/scala/wiki/TracBrowser">TracBrowser</a>
        for help on using the browser.
      </div>
      <div id="anydiff">
        <form action="/trac/scala/diff" method="get">
          <div class="buttons">
            <input type="hidden" name="new_path" value="/scala-tool-support/trunk/src/vim/syntax/scala.vim" />
            <input type="hidden" name="old_path" value="/scala-tool-support/trunk/src/vim/syntax/scala.vim" />
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
          <a rel="nofollow" href="/trac/scala/export/24986/scala-tool-support/trunk/src/vim/syntax/scala.vim">Original Format</a>
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