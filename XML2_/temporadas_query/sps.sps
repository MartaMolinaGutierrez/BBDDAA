<?xml version="1.0" encoding="UTF-8"?>
<structure version="24" xsltversion="1" html-doctype="HTML4 Transitional" compatibility-view="IE9" html-outputextent="Complete" relativeto="*SPS" encodinghtml="UTF-8" encodingrtf="ISO-8859-1" encodingpdf="UTF-8" encodingtext="UTF-8" useimportschema="1" embed-images="1" pastemode="xml" enable-authentic-scripts="1" authentic-scripts-in-debug-mode-external="0" generated-file-location="DEFAULT">
	<parameters/>
	<schemasources>
		<namespaces/>
		<schemasources>
			<xsdschemasource name="XML" main="1" schemafile="xsd.xsd" workingxmlfile="goles.xml"/>
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
	<globalstyles>
		<rules selector="table">
			<media>
				<media value="all"/>
			</media>
			<rule border-collapse="collapse" font-family="arial , sans-serif" width="100%"/>
		</rules>
		<rules selector="td, th">
			<media>
				<media value="all"/>
			</media>
			<rule border="1px solid #dddddd" padding="8px" text-align="left"/>
		</rules>
		<rules selector="th">
			<media>
				<media value="all"/>
			</media>
			<rule background-color="#dddddd"/>
		</rules>
		<rules selector=".rm">
			<media>
				<media value="all"/>
			</media>
			<rule background-color="#f2c53d"/>
		</rules>
		<rules selector=".bar">
			<media>
				<media value="all"/>
			</media>
			<rule background-color="#a50044"/>
		</rules>
	</globalstyles>
	<mainparts>
		<children>
			<globaltemplate subtype="main" match="/">
				<document-properties title="Goles Real Madrid vs Barcelona"/>
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
									<text fixtext="Goles del Real Madrid vs Barcelona por temporada"/>
								</children>
							</paragraph>
							<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
								<children>
									<tgridbody-cols>
										<children>
											<tgridcol/>
											<tgridcol/>
											<tgridcol/>
										</children>
									</tgridbody-cols>
									<tgridheader-rows>
										<children>
											<tgridrow>
												<children>
													<tgridcell>
														<children>
															<text fixtext="Temporada"/>
														</children>
													</tgridcell>
													<tgridcell>
														<children>
															<text fixtext="Real Madrid"/>
														</children>
													</tgridcell>
													<tgridcell>
														<children>
															<text fixtext="Barcelona"/>
														</children>
													</tgridcell>
												</children>
											</tgridrow>
										</children>
									</tgridheader-rows>
									<tgridbody-rows>
										<children>
											<template subtype="userdefined" match="//temporada">
												<children>
													<tgridrow>
														<children>
															<tgridcell>
																<children>
																	<template subtype="attribute" match="nombre">
																		<children>
																			<content subtype="regular"/>
																		</children>
																		<variables/>
																	</template>
																</children>
															</tgridcell>
															<tgridcell>
																<children>
																	<autocalc xpath="equipo[@nombre=&apos;Real Madrid&apos;]/@golesLocal + equipo[@nombre=&apos;Real Madrid&apos;]/@golesVisitante"/>
																</children>
															</tgridcell>
															<tgridcell>
																<children>
																	<autocalc xpath="equipo[@nombre=&apos;Barcelona&apos;]/@golesLocal + equipo[@nombre=&apos;Barcelona&apos;]/@golesVisitante"/>
																</children>
															</tgridcell>
														</children>
													</tgridrow>
												</children>
												<variables/>
											</template>
										</children>
									</tgridbody-rows>
								</children>
								<wizard-data-repeat>
									<children/>
								</wizard-data-repeat>
								<wizard-data-rows>
									<children/>
								</wizard-data-rows>
								<wizard-data-columns>
									<children/>
								</wizard-data-columns>
							</tgrid>
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
