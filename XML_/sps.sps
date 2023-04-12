<?xml version="1.0" encoding="UTF-8"?>
<structure version="24" xsltversion="1" html-doctype="HTML4 Transitional" compatibility-view="IE9" html-outputextent="Complete" relativeto="*SPS" encodinghtml="UTF-8" encodingrtf="ISO-8859-1" encodingpdf="UTF-8" encodingtext="UTF-8" useimportschema="1" embed-images="1" pastemode="xml" enable-authentic-scripts="1" authentic-scripts-in-debug-mode-external="0" generated-file-location="DEFAULT">
	<parameters/>
	<schemasources>
		<namespaces/>
		<schemasources>
			<xsdschemasource name="XML" main="1" schemafile="xsd.xsd" workingxmlfile="altova.xml"/>
		</schemasources>
	</schemasources>
	<modules/>
	<flags>
		<scripts/>
		<mainparts/>
		<globalparts/>
		<designfragments/>
		<pagelayouts/>
		<xpath-functions/>
	</flags>
	<scripts>
		<script language="javascript"/>
	</scripts>
	<script-project>
		<Project version="4" app="AuthenticView"/>
	</script-project>
	<importedxslt/>
	<globalstyles/>
	<mainparts>
		<children>
			<globaltemplate subtype="main" match="/">
				<document-properties title="XML to HTML"/>
				<children>
					<documentsection>
						<properties columncount="1" columngap="0.50in" headerfooterheight="fixed" pagemultiplepages="0" pagenumberingformat="1" pagenumberingstartat="auto" pagestart="next" paperheight="11in" papermarginbottom="0.79in" papermarginfooter="0.30in" papermarginheader="0.30in" papermarginleft="0.60in" papermarginright="0.60in" papermargintop="0.79in" paperwidth="8.50in"/>
						<watermark>
							<image transparency="50" fill-page="1" center-if-not-fill="1"/>
							<text transparency="50"/>
						</watermark>
					</documentsection>
					<template subtype="source" match="XML">
						<children>
							<paragraph paragraphtag="h1">
								<children>
									<text fixtext="XML to HTML"/>
								</children>
							</paragraph>
							<template subtype="element" match="ystfeed">
								<children>
									<template subtype="element" match="vespaadd">
										<children>
											<calltemplate subtype="element" match="document"/>
										</children>
										<variables/>
									</template>
								</children>
								<variables/>
							</template>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
		</children>
	</mainparts>
	<globalparts>
		<children>
			<globaltemplate subtype="element" match="document">
				<children>
					<template subtype="element" match="document">
						<children>
							<paragraph paragraphtag="h2">
								<children>
									<template subtype="element" match="subject">
										<children>
											<content subtype="regular"/>
										</children>
										<variables/>
									</template>
								</children>
							</paragraph>
							<paragraph paragraphtag="p">
								<children>
									<template subtype="element" match="content">
										<children>
											<content subtype="regular"/>
										</children>
										<variables/>
									</template>
								</children>
							</paragraph>
							<paragraph paragraphtag="h3">
								<children>
									<text fixtext="Best Answer:"/>
								</children>
							</paragraph>
							<paragraph paragraphtag="p">
								<children>
									<template subtype="element" match="bestanswer">
										<children>
											<content subtype="regular"/>
										</children>
										<variables/>
									</template>
								</children>
							</paragraph>
							<paragraph paragraphtag="h3">
								<children>
									<text fixtext="Other Answers:"/>
								</children>
							</paragraph>
							<list>
								<children>
									<template subtype="element" match="nbestanswers">
										<children>
											<template subtype="element" match="answer_item">
												<children>
													<userxmlelem openingtagtext="li">
														<children>
															<content subtype="regular"/>
														</children>
													</userxmlelem>
												</children>
												<variables/>
											</template>
										</children>
										<variables/>
									</template>
								</children>
							</list>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
		</children>
	</globalparts>
	<designfragments/>
	<xmltables/>
	<authentic-custom-toolbar-buttons/>
</structure>
