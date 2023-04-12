<?xml version="1.0" encoding="UTF-8"?>
<structure version="24" xsltversion="1" html-doctype="HTML4 Transitional" compatibility-view="IE9" html-outputextent="Complete" relativeto="*SPS" encodinghtml="UTF-8" encodingrtf="ISO-8859-1" encodingpdf="UTF-8" encodingtext="UTF-8" useimportschema="1" embed-images="1" pastemode="xml" enable-authentic-scripts="1" authentic-scripts-in-debug-mode-external="0" generated-file-location="DEFAULT">
	<parameters/>
	<schemasources>
		<namespaces/>
		<schemasources>
			<xsdschemasource name="XML" main="1" schemafile="xsd.xsd" workingxmlfile="resultados.xml"/>
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
				<document-properties title="Máximo y mínimo goleador de cada temporada"/>
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
									<text fixtext="Máximo y mínimo goleador de cada temporada"/>
								</children>
							</paragraph>
							<template subtype="element" match="resultados">
								<children>
									<template subtype="element" match="resultado">
										<children>
											<paragraph paragraphtag="h2">
												<children>
													<text fixtext="En la temporada "/>
													<template subtype="attribute" match="temporada">
														<children>
															<content subtype="regular"/>
														</children>
														<variables/>
													</template>
													<text fixtext=":"/>
												</children>
											</paragraph>
											<paragraph paragraphtag="p">
												<children>
													<text fixtext="El máximo goleador fue el "/>
													<template subtype="attribute" match="equipo">
														<children>
															<content subtype="regular"/>
														</children>
														<variables/>
													</template>
													<text fixtext=" con "/>
													<template subtype="attribute" match="goles">
														<children>
															<content subtype="regular">
																<format basic-type="xsd" datatype="int"/>
															</content>
														</children>
														<variables/>
													</template>
													<text fixtext=" goles."/>
												</children>
											</paragraph>
											<paragraph paragraphtag="p">
												<children>
													<text fixtext="El equipo que menos goles metió fue el "/>
													<condition>
														<children>
															<conditionbranch xpath="position()=1">
																<children>
																	<template subtype="userdefined" match="..">
																		<children>
																			<template subtype="element" filter="position()=last()" match="resultado">
																				<children>
																					<template subtype="attribute" match="equipo">
																						<children>
																							<content subtype="regular"/>
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
															</conditionbranch>
															<conditionbranch>
																<children>
																	<template subtype="userdefined" match="..">
																		<children>
																			<template subtype="element" filter="1" match="resultado">
																				<children>
																					<template subtype="attribute" match="equipo">
																						<children>
																							<content subtype="regular"/>
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
															</conditionbranch>
														</children>
													</condition>
													<text fixtext=" con "/>
													<template subtype="userdefined" match="..">
														<children>
															<template subtype="element" filter="position()=last()" match="resultado">
																<children>
																	<template subtype="attribute" match="goles">
																		<children>
																			<content subtype="regular">
																				<format basic-type="xsd" datatype="int"/>
																			</content>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
														</children>
														<variables/>
													</template>
													<text fixtext=" goles."/>
													<newline/>
													<text fixtext="          "/>
												</children>
											</paragraph>
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
	<globalparts/>
	<designfragments/>
	<xmltables/>
	<authentic-custom-toolbar-buttons/>
</structure>
