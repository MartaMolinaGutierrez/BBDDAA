<?xml version="1.0" encoding="UTF-8"?>
<structure version="24" xsltversion="1" html-doctype="HTML4 Transitional" compatibility-view="IE9" html-outputextent="Complete" relativeto="*SPS" encodinghtml="UTF-8" encodingrtf="ISO-8859-1" encodingpdf="UTF-8" encodingtext="UTF-8" useimportschema="1" embed-images="1" pastemode="xml" enable-authentic-scripts="1" authentic-scripts-in-debug-mode-external="0" generated-file-location="DEFAULT">
	<parameters/>
	<schemasources>
		<namespaces/>
		<schemasources>
			<xsdschemasource name="XML" main="1" schemafile="FootballMatchesDataSet\xsd.xsd" workingxmlfile="partidos.xml"/>
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
				<document-properties/>
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
							<paragraph paragraphtag="h2">
								<children>
									<text fixtext="Partidos"/>
								</children>
							</paragraph>
							<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
								<properties border="1"/>
								<children>
									<tgridbody-cols>
										<children>
											<tgridcol/>
											<tgridcol/>
											<tgridcol/>
											<tgridcol/>
											<tgridcol/>
											<tgridcol/>
											<tgridcol/>
											<tgridcol/>
											<tgridcol/>
											<tgridcol/>
										</children>
									</tgridbody-cols>
									<tgridheader-rows>
										<children>
											<tgridrow>
												<styles background-color="#9acd32"/>
												<children>
													<tgridcell>
														<children>
															<text fixtext="Id Partido"/>
														</children>
													</tgridcell>
													<tgridcell>
														<children>
															<text fixtext="Temporada"/>
														</children>
													</tgridcell>
													<tgridcell>
														<children>
															<text fixtext="División"/>
														</children>
													</tgridcell>
													<tgridcell>
														<children>
															<text fixtext="Jornada"/>
														</children>
													</tgridcell>
													<tgridcell>
														<children>
															<text fixtext="Equipo Local"/>
														</children>
													</tgridcell>
													<tgridcell>
														<children>
															<text fixtext="Equipo Visitante"/>
														</children>
													</tgridcell>
													<tgridcell>
														<children>
															<text fixtext="Goles Local"/>
														</children>
													</tgridcell>
													<tgridcell>
														<children>
															<text fixtext="Goles Visitante"/>
														</children>
													</tgridcell>
													<tgridcell>
														<children>
															<text fixtext="Fecha"/>
														</children>
													</tgridcell>
													<tgridcell>
														<children>
															<text fixtext="Timestamp"/>
														</children>
													</tgridcell>
												</children>
											</tgridrow>
										</children>
									</tgridheader-rows>
									<tgridbody-rows>
										<children>
											<template subtype="element" match="partidos">
												<children>
													<template subtype="element" match="partido">
														<children>
															<tgridrow>
																<children>
																	<tgridcell>
																		<children>
																			<template subtype="attribute" match="idPartido">
																				<children>
																					<content subtype="regular"/>
																				</children>
																				<variables/>
																			</template>
																		</children>
																	</tgridcell>
																	<tgridcell>
																		<children>
																			<template subtype="attribute" match="temporada">
																				<children>
																					<content subtype="regular"/>
																				</children>
																				<variables/>
																			</template>
																		</children>
																	</tgridcell>
																	<tgridcell>
																		<children>
																			<template subtype="attribute" match="division">
																				<children>
																					<content subtype="regular"/>
																				</children>
																				<variables/>
																			</template>
																		</children>
																	</tgridcell>
																	<tgridcell>
																		<children>
																			<template subtype="attribute" match="jornada">
																				<children>
																					<content subtype="regular"/>
																				</children>
																				<variables/>
																			</template>
																		</children>
																	</tgridcell>
																	<tgridcell>
																		<children>
																			<template subtype="attribute" match="EquipoLocal">
																				<children>
																					<content subtype="regular"/>
																				</children>
																				<variables/>
																			</template>
																		</children>
																	</tgridcell>
																	<tgridcell>
																		<children>
																			<template subtype="attribute" match="EquipoVisitante">
																				<children>
																					<content subtype="regular"/>
																				</children>
																				<variables/>
																			</template>
																		</children>
																	</tgridcell>
																	<tgridcell>
																		<children>
																			<template subtype="attribute" match="golesLocal">
																				<children>
																					<content subtype="regular"/>
																				</children>
																				<variables/>
																			</template>
																		</children>
																	</tgridcell>
																	<tgridcell>
																		<children>
																			<template subtype="attribute" match="golesVisitante">
																				<children>
																					<content subtype="regular"/>
																				</children>
																				<variables/>
																			</template>
																		</children>
																	</tgridcell>
																	<tgridcell>
																		<children>
																			<template subtype="attribute" match="fecha">
																				<children>
																					<content subtype="regular"/>
																				</children>
																				<variables/>
																			</template>
																		</children>
																	</tgridcell>
																	<tgridcell>
																		<children>
																			<template subtype="attribute" match="timestamp">
																				<children>
																					<content subtype="regular"/>
																				</children>
																				<variables/>
																			</template>
																		</children>
																	</tgridcell>
																</children>
															</tgridrow>
														</children>
														<variables/>
													</template>
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
