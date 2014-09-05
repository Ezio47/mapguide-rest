<kml xmlns="http://www.opengis.net/kml/2.2">
  <Document>
    <name>Building - {$model->FeatId}</name>
    <Placemark>
      <name>{$model->FeatId}</name>
      <description><![CDATA[View building report for <a href="http://localhost/mapguide/rest/data/building/{$model->FeatId}.html">{$helper->EscapeForXml($model->FMTADDRESS)}</a>]]></description>
      <snippet/>
      <styleUrl>{$helper->GetAssetPath("building/style_property_v1.kml")}#georest-building-style</styleUrl>
      <ExtendedData>
          <SchemaData schemaUrl="{$helper->GetAssetPath("building/schema_property_v1.kml")}#georest-building-schema">
            <SimpleData name="FeatId">{$model->FeatId}</SimpleData>
            <SimpleData name="FMTADDRESS">{$helper->EscapeForXml($model->FMTADDRESS)}</SimpleData>
          </SchemaData>
      </ExtendedData>
      {$model->GeometryAsType("Geometry", "GeomKML")}    
      <atom:link href="http://localhost/mapguide/rest/data/building/{$model->FeatId}.html" />
    </Placemark>
    <atom:author>
      <atom:name>Melbourne Building Footprints</atom:name>    
      <atom:uri>https://data.melbourne.vic.gov.au/Property-and-Planning/Building-Foot-Prints/qe9w-cym8</atom:uri>    
    </atom:author>    
  </Document> 
</kml>