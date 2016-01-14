<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
	<head>
		<title>克劳查经班诗歌库</title>
		<link rel="stylesheet" href="assets/css/lieder.css" />
	</head>
	<body>
		<h1>克劳查经班诗歌库</h1>
		<table>
			<tr bgcolor="#9acd32">
				<th>歌曲名</th>
				<th>PPT</th>
				<th>演唱者</th>
				<th>专辑</th>
			</tr>
			<tr>
				<td colspan="4">所有诗歌按照拼音顺序排列，按需下载，请善用搜索。</td>
			</tr>			
			<tr>
				<td><b>PPT模板</b></td>
				<td><a href="https://dl.dropboxusercontent.com/u/8843931/CCGC%E6%95%AC%E6%8B%9C%E6%A8%A1%E6%9D%BF%5B201511%5D.pptx">下载</a></td>
				<td>-</td>
				<td>-</td>
			</tr>
			<xsl:for-each select="root/info">
			<tr>
				<td><xsl:value-of select="title"/></td>
				<xsl:variable name="itemURL"><xsl:value-of select="url"/></xsl:variable>
				<td><a href="{$itemURL}">下载</a></td>
				<td><xsl:value-of select="artist"/></td>
				<td><xsl:value-of select="album"/></td>
			</tr>
		</xsl:for-each>
	</table>
	</body>
	</html>
</xsl:template>

</xsl:stylesheet>