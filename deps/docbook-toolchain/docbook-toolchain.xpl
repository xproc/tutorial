<p:declare-step version='1.0' xmlns:p="http://www.w3.org/ns/xproc">
  <p:input port="source"/>
  <p:input port="parameters" kind="parameter"/>
  <p:output port="result">
    <p:pipe step="generate-asciidoc" port="result"/>
  </p:output>

  <p:serialization port="result" media-type="text/plain" method="text" /> 

  <p:xinclude/>
  
  <p:xslt name="generate-asciidoc">
    <p:input port="stylesheet">
      <p:document href="deps/d2a/d2a.xsl"/>
    </p:input>
  </p:xslt>

  <p:sink/>
  
  <!--p:for-each>
        <p:iteration-source>
            <p:pipe step="generate-asciidoc" port="secondary"/>
        </p:iteration-source>

        <p:store method="text" media-type="text/text">
            <p:with-option name="href" select="p:base-uri()"/>
        </p:store>
  </p:for-each-->

</p:declare-step>
