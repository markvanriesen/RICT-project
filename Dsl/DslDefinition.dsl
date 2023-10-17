<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="1379d070-16cd-40f8-a3c8-392a792ba57a" Description="Description for Company.RICT.RICT" Name="RICT" DisplayName="RICT" Namespace="Company.RICT" ProductName="RICT" CompanyName="Company" PackageGuid="c7b3220a-5c52-4811-abbb-367090ad33d5" PackageNamespace="Company.RICT" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="1f5e42a5-f546-4fc7-880f-5170770994c4" Description="The root in which all other elements are embedded. Appears as a diagram." Name="SoSA" DisplayName="So SA" Namespace="Company.RICT">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="ImpactLevel" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>SoSAHasImpactLevels.ImpactLevels</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="fc20961a-f391-4eef-8f02-909cc93bb20b" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="Concern" DisplayName="Concern" Namespace="Company.RICT">
      <Properties>
        <DomainProperty Id="16f6a3c1-20ba-41c1-90bd-dfc1a028c5c3" Description="Description for Company.RICT.Concern.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="91abdf95-dc58-4229-8d83-30d72f734219" Description="Description for Company.RICT.ImpactLevel" Name="ImpactLevel" DisplayName="Impact Level" Namespace="Company.RICT">
      <Properties>
        <DomainProperty Id="866df40d-ad2f-422f-8304-99f2e482742e" Description="Description for Company.RICT.ImpactLevel.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Concern" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ImpactLevelHasConcerns.Concerns</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="b20b5fd1-bad4-4bfb-a974-b76acd70ae1c" Description="Description for Company.RICT.SystemicLevel" Name="SystemicLevel" DisplayName="Systemic Level" Namespace="Company.RICT">
      <BaseClass>
        <DomainClassMoniker Name="ImpactLevel" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="6d9e5726-c1e9-4eb5-8ba5-6b1a49c179e3" Description="Description for Company.RICT.EnablingLevel" Name="EnablingLevel" DisplayName="Enabling Level" Namespace="Company.RICT">
      <BaseClass>
        <DomainClassMoniker Name="ImpactLevel" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="2db9c41c-046a-478a-87ce-bbc4f83a12bd" Description="Description for Company.RICT.ImmediateLevel" Name="ImmediateLevel" DisplayName="Immediate Level" Namespace="Company.RICT">
      <BaseClass>
        <DomainClassMoniker Name="ImpactLevel" />
      </BaseClass>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="SoftwareArchitecture" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ImmediateLevelHasSoftwareArchitectures.SoftwareArchitectures</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="640c12fc-f7fd-459e-a364-e9de0b57d608" Description="Description for Company.RICT.SoftwareArchitecture" Name="SoftwareArchitecture" DisplayName="Software Architecture" Namespace="Company.RICT">
      <Properties>
        <DomainProperty Id="44cb497a-15dc-4c51-b4d9-06ef797603b2" Description="Description for Company.RICT.SoftwareArchitecture.Name" Name="Name" DisplayName="Name" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="d28f3fba-523d-4a9b-8efb-42e6e3ef9415" Description="Description for Company.RICT.SocialConcern" Name="SocialConcern" DisplayName="Social Concern" Namespace="Company.RICT">
      <BaseClass>
        <DomainClassMoniker Name="Concern" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="007940fb-50ac-4d5a-875a-dc968988a2ff" Description="Description for Company.RICT.TechnicalConcern" Name="TechnicalConcern" DisplayName="Technical Concern" Namespace="Company.RICT">
      <BaseClass>
        <DomainClassMoniker Name="Concern" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="a9cdb2c7-84d2-4748-a919-b1cac7c5cb32" Description="Description for Company.RICT.EnvironmentalConcern" Name="EnvironmentalConcern" DisplayName="Environmental Concern" Namespace="Company.RICT">
      <BaseClass>
        <DomainClassMoniker Name="Concern" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="971f3e52-84ba-4c7e-b9c0-e2b9fc0399cf" Description="Description for Company.RICT.EconomicConcern" Name="EconomicConcern" DisplayName="Economic Concern" Namespace="Company.RICT">
      <BaseClass>
        <DomainClassMoniker Name="Concern" />
      </BaseClass>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="25180afa-b3a5-4e5d-9d58-f844e5b147ee" Description="Reference relationship between Elements." Name="UndecidedEffectConcern" DisplayName="Undecided Effect Concern" Namespace="Company.RICT">
      <Source>
        <DomainRole Id="c4b489e3-c9f7-45ab-b1bb-3c313a752f2c" Description="Description for Company.RICT.ExampleRelationship.Target" Name="Source" DisplayName="Source" PropertyName="TargetConcerns1" PropertyDisplayName="Target Concerns1">
          <RolePlayer>
            <DomainClassMoniker Name="Concern" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="05ccb5f8-d074-479e-8950-7a2e2f7aff54" Description="Description for Company.RICT.ExampleRelationship.Source" Name="Target" DisplayName="Target" PropertyName="SourceConcerns1" PropertyDisplayName="Source Concerns1">
          <RolePlayer>
            <DomainClassMoniker Name="Concern" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="bec2ba71-2214-44c0-af04-10e1375ef444" Description="Description for Company.RICT.SoSAHasImpactLevels" Name="SoSAHasImpactLevels" DisplayName="So SAHas Impact Levels" Namespace="Company.RICT" IsEmbedding="true">
      <Source>
        <DomainRole Id="0c7c70fc-5dae-4d08-a896-68cda7e3412e" Description="Description for Company.RICT.SoSAHasImpactLevels.SoSA" Name="SoSA" DisplayName="So SA" PropertyName="ImpactLevels" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Impact Levels">
          <RolePlayer>
            <DomainClassMoniker Name="SoSA" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="460d573f-8b3a-4002-871c-4fcddf77f937" Description="Description for Company.RICT.SoSAHasImpactLevels.ImpactLevel" Name="ImpactLevel" DisplayName="Impact Level" PropertyName="SoSA" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="So SA">
          <RolePlayer>
            <DomainClassMoniker Name="ImpactLevel" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="52f5f2b5-5ad2-4597-adba-1b510ea78290" Description="Description for Company.RICT.ImpactLevelHasConcerns" Name="ImpactLevelHasConcerns" DisplayName="Impact Level Has Concerns" Namespace="Company.RICT" IsEmbedding="true">
      <Source>
        <DomainRole Id="8f47dcf5-5ada-41fd-91c6-827a9709c7f4" Description="Description for Company.RICT.ImpactLevelHasConcerns.ImpactLevel" Name="ImpactLevel" DisplayName="Impact Level" PropertyName="Concerns" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Concerns">
          <RolePlayer>
            <DomainClassMoniker Name="ImpactLevel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="e2970d9b-92b6-49f9-8964-9f29e65774f6" Description="Description for Company.RICT.ImpactLevelHasConcerns.Concern" Name="Concern" DisplayName="Concern" PropertyName="ImpactLevel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Impact Level">
          <RolePlayer>
            <DomainClassMoniker Name="Concern" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="9c3e6a21-1e3f-47d6-a7b7-1853f90edfed" Description="Description for Company.RICT.ImmediateLevelHasSoftwareArchitectures" Name="ImmediateLevelHasSoftwareArchitectures" DisplayName="Immediate Level Has Software Architectures" Namespace="Company.RICT" IsEmbedding="true">
      <Source>
        <DomainRole Id="569cdd24-0f6a-4aa9-9143-3b174ea25c57" Description="Description for Company.RICT.ImmediateLevelHasSoftwareArchitectures.ImmediateLevel" Name="ImmediateLevel" DisplayName="Immediate Level" PropertyName="SoftwareArchitectures" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Software Architectures">
          <RolePlayer>
            <DomainClassMoniker Name="ImmediateLevel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="fcf8cc34-d0f1-46ab-907f-81c84df7a13a" Description="Description for Company.RICT.ImmediateLevelHasSoftwareArchitectures.SoftwareArchitecture" Name="SoftwareArchitecture" DisplayName="Software Architecture" PropertyName="ImmediateLevel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Immediate Level">
          <RolePlayer>
            <DomainClassMoniker Name="SoftwareArchitecture" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="c159c5db-0ee6-4321-8738-4839cfe9770e" Description="Description for Company.RICT.PositiveEffectConcern" Name="PositiveEffectConcern" DisplayName="Positive Effect Concern" Namespace="Company.RICT">
      <Source>
        <DomainRole Id="a35ab03c-c8f3-4f7b-b65e-961dd94c1a72" Description="Description for Company.RICT.PositiveEffectConcern.SourceConcern" Name="SourceConcern" DisplayName="Source Concern" PropertyName="TargetConcerns2" PropertyDisplayName="Target Concerns2">
          <RolePlayer>
            <DomainClassMoniker Name="Concern" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="56c388fc-d864-484c-bd1b-4ad2958ce0af" Description="Description for Company.RICT.PositiveEffectConcern.TargetConcern" Name="TargetConcern" DisplayName="Target Concern" PropertyName="SourceConcerns2" PropertyDisplayName="Source Concerns2">
          <RolePlayer>
            <DomainClassMoniker Name="Concern" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="92feb723-e979-44c5-a354-052ad1297699" Description="Description for Company.RICT.NegativeEffectConcern" Name="NegativeEffectConcern" DisplayName="Negative Effect Concern" Namespace="Company.RICT">
      <Source>
        <DomainRole Id="1b7c24ea-2aec-41f6-b1e4-0450db1b3414" Description="Description for Company.RICT.NegativeEffectConcern.SourceConcern" Name="SourceConcern" DisplayName="Source Concern" PropertyName="TargetConcerns3" PropertyDisplayName="Target Concerns3">
          <RolePlayer>
            <DomainClassMoniker Name="Concern" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="4bb4e4dc-50bf-4fe3-8366-37b3e310cea9" Description="Description for Company.RICT.NegativeEffectConcern.TargetConcern" Name="TargetConcern" DisplayName="Target Concern" PropertyName="SourceConcerns3" PropertyDisplayName="Source Concerns3">
          <RolePlayer>
            <DomainClassMoniker Name="Concern" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="827d6c8a-8d69-4990-8ea9-2a79c5f87cc7" Description="Description for Company.RICT.UndecidedEffectSA" Name="UndecidedEffectSA" DisplayName="Undecided Effect SA" Namespace="Company.RICT">
      <Source>
        <DomainRole Id="59873ec1-c467-41c8-a2ec-1ea1f082791e" Description="Description for Company.RICT.UndecidedEffectSA.SoftwareArchitecture" Name="SoftwareArchitecture" DisplayName="Software Architecture" PropertyName="TargetConcerns4" PropertyDisplayName="Target Concerns4">
          <RolePlayer>
            <DomainClassMoniker Name="SoftwareArchitecture" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="1379ba8d-a888-44e6-a130-5cf97bf2b18f" Description="Description for Company.RICT.UndecidedEffectSA.Concern" Name="Concern" DisplayName="Concern" PropertyName="SoftwareArchitecture1" Multiplicity="One" PropertyDisplayName="Software Architecture1">
          <RolePlayer>
            <DomainClassMoniker Name="Concern" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="da23ad4e-bce4-4dcf-bfd4-b265208bf37d" Description="Description for Company.RICT.PositiveEffectSA" Name="PositiveEffectSA" DisplayName="Positive Effect SA" Namespace="Company.RICT">
      <Source>
        <DomainRole Id="cff35663-b68c-4bf0-bef7-d2cbace574dc" Description="Description for Company.RICT.PositiveEffectSA.SoftwareArchitecture" Name="SoftwareArchitecture" DisplayName="Software Architecture" PropertyName="TargetConcerns5" PropertyDisplayName="Target Concerns5">
          <RolePlayer>
            <DomainClassMoniker Name="SoftwareArchitecture" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="5cc629b0-00de-4913-94fa-a202699edb69" Description="Description for Company.RICT.PositiveEffectSA.Concern" Name="Concern" DisplayName="Concern" PropertyName="SoftwareArchitecture2" Multiplicity="One" PropertyDisplayName="Software Architecture2">
          <RolePlayer>
            <DomainClassMoniker Name="Concern" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="4d794c74-dfa3-4ef2-8f84-2c62c2e881e5" Description="Description for Company.RICT.NegativeEffectSA" Name="NegativeEffectSA" DisplayName="Negative Effect SA" Namespace="Company.RICT">
      <Source>
        <DomainRole Id="f82f29bf-f633-4f9d-8090-6ee4849f6d99" Description="Description for Company.RICT.NegativeEffectSA.SoftwareArchitecture" Name="SoftwareArchitecture" DisplayName="Software Architecture" PropertyName="TargetConcerns6" PropertyDisplayName="Target Concerns6">
          <RolePlayer>
            <DomainClassMoniker Name="SoftwareArchitecture" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="a388e045-e1da-4195-9ca9-a16c264b841e" Description="Description for Company.RICT.NegativeEffectSA.Concern" Name="Concern" DisplayName="Concern" PropertyName="SoftwareArchitecture3" Multiplicity="One" PropertyDisplayName="Software Architecture3">
          <RolePlayer>
            <DomainClassMoniker Name="Concern" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
  </Types>
  <Shapes>
    <GeometryShape Id="112a707e-6ae7-4741-995c-2812a2c07ad3" Description="Shape used to represent ExampleElements on a Diagram." Name="sConcern" DisplayName="SConcern" Namespace="Company.RICT" FixedTooltipText="SConcern" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialHeight="0.5" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <Notes>The shape has a text decorator used to display the Name property of the mapped ExampleElement.</Notes>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="ConcernName" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="b691dbb1-cf02-4617-af67-b09a0f589364" Description="Description for Company.RICT.sSystematicLevel" Name="sSystematicLevel" DisplayName="SSystematic Level" Namespace="Company.RICT" FixedTooltipText="SSystematic Level" FillColor="Silver" InitialWidth="12" InitialHeight="6" OutlineThickness="0" FillGradientMode="None" Geometry="Ellipse">
      <ShapeHasDecorators Position="InnerBottomCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="SystemicLevelName" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="2a04034a-dac1-47fb-8ace-ee5856b52a8d" Description="Description for Company.RICT.sEnablingLevel" Name="sEnablingLevel" DisplayName="SEnabling Level" Namespace="Company.RICT" FixedTooltipText="SEnabling Level" FillColor="DarkGray" InitialWidth="11" InitialHeight="4" OutlineThickness="0" FillGradientMode="None" Geometry="Ellipse">
      <ShapeHasDecorators Position="InnerBottomCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="EnablingLevelName" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="77f8b141-5e80-4e82-945c-93d2b12138e1" Description="Description for Company.RICT.sImmediateLevel" Name="sImmediateLevel" DisplayName="SImmediate Level" Namespace="Company.RICT" FixedTooltipText="SImmediate Level" FillColor="Gray" InitialWidth="10" InitialHeight="2" OutlineThickness="0" FillGradientMode="None" Geometry="Ellipse">
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="ImmediateLevelName" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="ab84bf9e-8701-4cab-bb29-e09147ec0e90" Description="Description for Company.RICT.sSoftwareArchitecture" Name="sSoftwareArchitecture" DisplayName="SSoftware Architecture" Namespace="Company.RICT" FixedTooltipText="SSoftware Architecture" InitialHeight="1.5" OutlineThickness="0.01" FillGradientMode="None" Geometry="Circle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="SoftwareArchitectureName" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="d9e49122-5025-4bf7-af87-e23614f7727f" Description="Description for Company.RICT.sSocialConcern" Name="sSocialConcern" DisplayName="SSocial Concern" Namespace="Company.RICT" FixedTooltipText="SSocial Concern" FillColor="Yellow" InitialHeight="0.5" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="sConcern" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="fb2666ee-e961-44a7-9335-e4cf7c45cdef" Description="Description for Company.RICT.sTechnicalConcern" Name="sTechnicalConcern" DisplayName="STechnical Concern" Namespace="Company.RICT" FixedTooltipText="STechnical Concern" FillColor="LightSteelBlue" InitialHeight="0.5" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="sConcern" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="a5a54e47-714c-49bb-8da8-0a5f9a83db31" Description="Description for Company.RICT.sEnvironmentalConcern" Name="sEnvironmentalConcern" DisplayName="SEnvironmental Concern" Namespace="Company.RICT" FixedTooltipText="SEnvironmental Concern" FillColor="PaleGreen" InitialHeight="0.5" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="sConcern" />
      </BaseGeometryShape>
    </GeometryShape>
    <GeometryShape Id="2dbccd7c-f328-4521-a3e7-3a2136c3e607" Description="Description for Company.RICT.sEconomicConcern" Name="sEconomicConcern" DisplayName="SEconomic Concern" Namespace="Company.RICT" FixedTooltipText="SEconomic Concern" FillColor="LightCoral" InitialHeight="0.5" OutlineThickness="0.01" FillGradientMode="None" Geometry="Rectangle">
      <BaseGeometryShape>
        <GeometryShapeMoniker Name="sConcern" />
      </BaseGeometryShape>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="2e1fef96-410f-4c73-afbf-9051acaac0ea" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="sUndecidedEffect" DisplayName="SUndecided Effect" Namespace="Company.RICT" FixedTooltipText="SUndecided Effect" DashStyle="Dash" TargetEndStyle="FilledArrow" Thickness="0.01" RoutingStyle="Straight" />
    <Connector Id="f2f7df85-f149-47f1-a16a-b722027acdbd" Description="Description for Company.RICT.sPositiveEffect" Name="sPositiveEffect" DisplayName="SPositive Effect" Namespace="Company.RICT" FixedTooltipText="SPositive Effect" TargetEndStyle="FilledArrow" Thickness="0.01" RoutingStyle="Straight">
      <ConnectorHasDecorators Position="TargetTop" OffsetFromShape="0" OffsetFromLine="0">
        <IconDecorator Name="IconDecorator" DisplayName="Icon Decorator" DefaultIcon="Resources\PlusSymbol.png" />
      </ConnectorHasDecorators>
    </Connector>
    <Connector Id="345638a9-e0ff-4ffe-97ce-29d382e91784" Description="Description for Company.RICT.sNegativeEffect" Name="sNegativeEffect" DisplayName="SNegative Effect" Namespace="Company.RICT" FixedTooltipText="SNegative Effect" TargetEndStyle="FilledArrow" Thickness="0.01" RoutingStyle="Straight">
      <ConnectorHasDecorators Position="TargetTop" OffsetFromShape="0" OffsetFromLine="0">
        <IconDecorator Name="IconDecorator" DisplayName="Icon Decorator" DefaultIcon="Resources\MinusSymbol.png" />
      </ConnectorHasDecorators>
    </Connector>
  </Connectors>
  <XmlSerializationBehavior Name="RICTSerializationBehavior" Namespace="Company.RICT">
    <ClassData>
      <XmlClassData TypeName="SoSA" MonikerAttributeName="" SerializeId="true" MonikerElementName="soSAMoniker" ElementName="soSA" MonikerTypeName="SoSAMoniker">
        <DomainClassMoniker Name="SoSA" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="impactLevels">
            <DomainRelationshipMoniker Name="SoSAHasImpactLevels" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Concern" MonikerAttributeName="name" SerializeId="true" MonikerElementName="concernMoniker" ElementName="concern" MonikerTypeName="ConcernMoniker">
        <DomainClassMoniker Name="Concern" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="Concern/Name" />
          </XmlPropertyData>
          <XmlRelationshipData RoleElementName="targetConcerns1">
            <DomainRelationshipMoniker Name="UndecidedEffectConcern" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="targetConcerns2">
            <DomainRelationshipMoniker Name="PositiveEffectConcern" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="targetConcerns3">
            <DomainRelationshipMoniker Name="NegativeEffectConcern" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="UndecidedEffectConcern" MonikerAttributeName="" SerializeId="true" MonikerElementName="undecidedEffectConcernMoniker" ElementName="undecidedEffectConcern" MonikerTypeName="UndecidedEffectConcernMoniker">
        <DomainRelationshipMoniker Name="UndecidedEffectConcern" />
      </XmlClassData>
      <XmlClassData TypeName="SConcern" MonikerAttributeName="" SerializeId="true" MonikerElementName="sConcernMoniker" ElementName="sConcern" MonikerTypeName="SConcernMoniker">
        <GeometryShapeMoniker Name="sConcern" />
      </XmlClassData>
      <XmlClassData TypeName="SUndecidedEffect" MonikerAttributeName="" SerializeId="true" MonikerElementName="sUndecidedEffectMoniker" ElementName="sUndecidedEffect" MonikerTypeName="SUndecidedEffectMoniker">
        <ConnectorMoniker Name="sUndecidedEffect" />
      </XmlClassData>
      <XmlClassData TypeName="RICTDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="rICTDiagramMoniker" ElementName="rICTDiagram" MonikerTypeName="RICTDiagramMoniker">
        <DiagramMoniker Name="RICTDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="SSystematicLevel" MonikerAttributeName="" SerializeId="true" MonikerElementName="sSystematicLevelMoniker" ElementName="sSystematicLevel" MonikerTypeName="SSystematicLevelMoniker">
        <GeometryShapeMoniker Name="sSystematicLevel" />
      </XmlClassData>
      <XmlClassData TypeName="ImpactLevel" MonikerAttributeName="" SerializeId="true" MonikerElementName="impactLevelMoniker" ElementName="impactLevel" MonikerTypeName="ImpactLevelMoniker">
        <DomainClassMoniker Name="ImpactLevel" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="concerns">
            <DomainRelationshipMoniker Name="ImpactLevelHasConcerns" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="ImpactLevel/Name" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="SoSAHasImpactLevels" MonikerAttributeName="" SerializeId="true" MonikerElementName="soSAHasImpactLevelsMoniker" ElementName="soSAHasImpactLevels" MonikerTypeName="SoSAHasImpactLevelsMoniker">
        <DomainRelationshipMoniker Name="SoSAHasImpactLevels" />
      </XmlClassData>
      <XmlClassData TypeName="ImpactLevelHasConcerns" MonikerAttributeName="" SerializeId="true" MonikerElementName="impactLevelHasConcernsMoniker" ElementName="impactLevelHasConcerns" MonikerTypeName="ImpactLevelHasConcernsMoniker">
        <DomainRelationshipMoniker Name="ImpactLevelHasConcerns" />
      </XmlClassData>
      <XmlClassData TypeName="SystemicLevel" MonikerAttributeName="" SerializeId="true" MonikerElementName="systemicLevelMoniker" ElementName="systemicLevel" MonikerTypeName="SystemicLevelMoniker">
        <DomainClassMoniker Name="SystemicLevel" />
      </XmlClassData>
      <XmlClassData TypeName="EnablingLevel" MonikerAttributeName="" SerializeId="true" MonikerElementName="enablingLevelMoniker" ElementName="enablingLevel" MonikerTypeName="EnablingLevelMoniker">
        <DomainClassMoniker Name="EnablingLevel" />
      </XmlClassData>
      <XmlClassData TypeName="ImmediateLevel" MonikerAttributeName="" SerializeId="true" MonikerElementName="immediateLevelMoniker" ElementName="immediateLevel" MonikerTypeName="ImmediateLevelMoniker">
        <DomainClassMoniker Name="ImmediateLevel" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="softwareArchitectures">
            <DomainRelationshipMoniker Name="ImmediateLevelHasSoftwareArchitectures" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="SEnablingLevel" MonikerAttributeName="" SerializeId="true" MonikerElementName="sEnablingLevelMoniker" ElementName="sEnablingLevel" MonikerTypeName="SEnablingLevelMoniker">
        <GeometryShapeMoniker Name="sEnablingLevel" />
      </XmlClassData>
      <XmlClassData TypeName="SImmediateLevel" MonikerAttributeName="" SerializeId="true" MonikerElementName="sImmediateLevelMoniker" ElementName="sImmediateLevel" MonikerTypeName="SImmediateLevelMoniker">
        <GeometryShapeMoniker Name="sImmediateLevel" />
      </XmlClassData>
      <XmlClassData TypeName="SoftwareArchitecture" MonikerAttributeName="" SerializeId="true" MonikerElementName="softwareArchitectureMoniker" ElementName="softwareArchitecture" MonikerTypeName="SoftwareArchitectureMoniker">
        <DomainClassMoniker Name="SoftwareArchitecture" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="SoftwareArchitecture/Name" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="targetConcerns4">
            <DomainRelationshipMoniker Name="UndecidedEffectSA" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="targetConcerns5">
            <DomainRelationshipMoniker Name="PositiveEffectSA" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="targetConcerns6">
            <DomainRelationshipMoniker Name="NegativeEffectSA" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="SSoftwareArchitecture" MonikerAttributeName="" SerializeId="true" MonikerElementName="sSoftwareArchitectureMoniker" ElementName="sSoftwareArchitecture" MonikerTypeName="SSoftwareArchitectureMoniker">
        <GeometryShapeMoniker Name="sSoftwareArchitecture" />
      </XmlClassData>
      <XmlClassData TypeName="ImmediateLevelHasSoftwareArchitectures" MonikerAttributeName="" SerializeId="true" MonikerElementName="immediateLevelHasSoftwareArchitecturesMoniker" ElementName="immediateLevelHasSoftwareArchitectures" MonikerTypeName="ImmediateLevelHasSoftwareArchitecturesMoniker">
        <DomainRelationshipMoniker Name="ImmediateLevelHasSoftwareArchitectures" />
      </XmlClassData>
      <XmlClassData TypeName="SocialConcern" MonikerAttributeName="" SerializeId="true" MonikerElementName="socialConcernMoniker" ElementName="socialConcern" MonikerTypeName="SocialConcernMoniker">
        <DomainClassMoniker Name="SocialConcern" />
      </XmlClassData>
      <XmlClassData TypeName="TechnicalConcern" MonikerAttributeName="" SerializeId="true" MonikerElementName="technicalConcernMoniker" ElementName="technicalConcern" MonikerTypeName="TechnicalConcernMoniker">
        <DomainClassMoniker Name="TechnicalConcern" />
      </XmlClassData>
      <XmlClassData TypeName="EnvironmentalConcern" MonikerAttributeName="" SerializeId="true" MonikerElementName="environmentalConcernMoniker" ElementName="environmentalConcern" MonikerTypeName="EnvironmentalConcernMoniker">
        <DomainClassMoniker Name="EnvironmentalConcern" />
      </XmlClassData>
      <XmlClassData TypeName="EconomicConcern" MonikerAttributeName="" SerializeId="true" MonikerElementName="economicConcernMoniker" ElementName="economicConcern" MonikerTypeName="EconomicConcernMoniker">
        <DomainClassMoniker Name="EconomicConcern" />
      </XmlClassData>
      <XmlClassData TypeName="SSocialConcern" MonikerAttributeName="" SerializeId="true" MonikerElementName="sSocialConcernMoniker" ElementName="sSocialConcern" MonikerTypeName="SSocialConcernMoniker">
        <GeometryShapeMoniker Name="sSocialConcern" />
      </XmlClassData>
      <XmlClassData TypeName="STechnicalConcern" MonikerAttributeName="" SerializeId="true" MonikerElementName="sTechnicalConcernMoniker" ElementName="sTechnicalConcern" MonikerTypeName="STechnicalConcernMoniker">
        <GeometryShapeMoniker Name="sTechnicalConcern" />
      </XmlClassData>
      <XmlClassData TypeName="SEnvironmentalConcern" MonikerAttributeName="" SerializeId="true" MonikerElementName="sEnvironmentalConcernMoniker" ElementName="sEnvironmentalConcern" MonikerTypeName="SEnvironmentalConcernMoniker">
        <GeometryShapeMoniker Name="sEnvironmentalConcern" />
      </XmlClassData>
      <XmlClassData TypeName="SEconomicConcern" MonikerAttributeName="" SerializeId="true" MonikerElementName="sEconomicConcernMoniker" ElementName="sEconomicConcern" MonikerTypeName="SEconomicConcernMoniker">
        <GeometryShapeMoniker Name="sEconomicConcern" />
      </XmlClassData>
      <XmlClassData TypeName="PositiveEffectConcern" MonikerAttributeName="" SerializeId="true" MonikerElementName="positiveEffectConcernMoniker" ElementName="positiveEffectConcern" MonikerTypeName="PositiveEffectConcernMoniker">
        <DomainRelationshipMoniker Name="PositiveEffectConcern" />
      </XmlClassData>
      <XmlClassData TypeName="NegativeEffectConcern" MonikerAttributeName="" SerializeId="true" MonikerElementName="negativeEffectConcernMoniker" ElementName="negativeEffectConcern" MonikerTypeName="NegativeEffectConcernMoniker">
        <DomainRelationshipMoniker Name="NegativeEffectConcern" />
      </XmlClassData>
      <XmlClassData TypeName="UndecidedEffectSA" MonikerAttributeName="" SerializeId="true" MonikerElementName="undecidedEffectSAMoniker" ElementName="undecidedEffectSA" MonikerTypeName="UndecidedEffectSAMoniker">
        <DomainRelationshipMoniker Name="UndecidedEffectSA" />
      </XmlClassData>
      <XmlClassData TypeName="PositiveEffectSA" MonikerAttributeName="" SerializeId="true" MonikerElementName="positiveEffectSAMoniker" ElementName="positiveEffectSA" MonikerTypeName="PositiveEffectSAMoniker">
        <DomainRelationshipMoniker Name="PositiveEffectSA" />
      </XmlClassData>
      <XmlClassData TypeName="NegativeEffectSA" MonikerAttributeName="" SerializeId="true" MonikerElementName="negativeEffectSAMoniker" ElementName="negativeEffectSA" MonikerTypeName="NegativeEffectSAMoniker">
        <DomainRelationshipMoniker Name="NegativeEffectSA" />
      </XmlClassData>
      <XmlClassData TypeName="SPositiveEffect" MonikerAttributeName="" SerializeId="true" MonikerElementName="sPositiveEffectMoniker" ElementName="sPositiveEffect" MonikerTypeName="SPositiveEffectMoniker">
        <ConnectorMoniker Name="sPositiveEffect" />
      </XmlClassData>
      <XmlClassData TypeName="SNegativeEffect" MonikerAttributeName="" SerializeId="true" MonikerElementName="sNegativeEffectMoniker" ElementName="sNegativeEffect" MonikerTypeName="SNegativeEffectMoniker">
        <ConnectorMoniker Name="sNegativeEffect" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="RICTExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="UndecidedEffectConcernBuilder">
      <Notes>Provides for the creation of an ExampleRelationship by pointing at two ExampleElements.</Notes>
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="UndecidedEffectConcern" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Concern" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Concern" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="PositiveEffectConcernBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="PositiveEffectConcern" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Concern" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Concern" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="NegativeEffectConcernBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="NegativeEffectConcern" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Concern" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Concern" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="UndecidedEffectSABuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="UndecidedEffectSA" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="SoftwareArchitecture" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Concern" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="PositiveEffectSABuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="PositiveEffectSA" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="SoftwareArchitecture" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Concern" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="NegativeEffectSABuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="NegativeEffectSA" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="SoftwareArchitecture" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Concern" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="56a9e2ff-a21e-462c-972e-d268befba243" Description="Description for Company.RICT.RICTDiagram" Name="RICTDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.RICT">
    <Class>
      <DomainClassMoniker Name="SoSA" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="Concern" />
        <ParentElementPath>
          <DomainPath>ImpactLevelHasConcerns.ImpactLevel/!ImpactLevel/SoSAHasImpactLevels.SoSA/!SoSA</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="sConcern/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Concern/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="sImmediateLevel/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Concern/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="sEnablingLevel/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Concern/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="sConcern" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="SystemicLevel" />
        <ParentElementPath>
          <DomainPath>SoSAHasImpactLevels.SoSA/!SoSA</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="sImmediateLevel/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ImpactLevel/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="sEnablingLevel/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ImpactLevel/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="sSystematicLevel/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ImpactLevel/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="sSystematicLevel" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="EnablingLevel" />
        <ParentElementPath>
          <DomainPath>SoSAHasImpactLevels.SoSA/!SoSA</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="sImmediateLevel/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ImpactLevel/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="sEnablingLevel/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ImpactLevel/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="sEnablingLevel" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="SoftwareArchitecture" />
        <ParentElementPath>
          <DomainPath>ImmediateLevelHasSoftwareArchitectures.ImmediateLevel/!ImmediateLevel/SoSAHasImpactLevels.SoSA/!SoSA</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="sSoftwareArchitecture/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="SoftwareArchitecture/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="sImmediateLevel/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="SoftwareArchitecture/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="sEnablingLevel/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="SoftwareArchitecture/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="sSoftwareArchitecture" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="ImmediateLevel" />
        <ParentElementPath>
          <DomainPath>SoSAHasImpactLevels.SoSA/!SoSA</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="sImmediateLevel/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ImpactLevel/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="sEnablingLevel/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="ImpactLevel/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="sImmediateLevel" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="SocialConcern" />
        <ParentElementPath>
          <DomainPath>ImpactLevelHasConcerns.ImpactLevel/!ImpactLevel/SoSAHasImpactLevels.SoSA/!SoSA</DomainPath>
        </ParentElementPath>
        <GeometryShapeMoniker Name="sSocialConcern" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="TechnicalConcern" />
        <ParentElementPath>
          <DomainPath>ImpactLevelHasConcerns.ImpactLevel/!ImpactLevel/SoSAHasImpactLevels.SoSA/!SoSA</DomainPath>
        </ParentElementPath>
        <GeometryShapeMoniker Name="sTechnicalConcern" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="EnvironmentalConcern" />
        <ParentElementPath>
          <DomainPath>ImpactLevelHasConcerns.ImpactLevel/!ImpactLevel/SoSAHasImpactLevels.SoSA/!SoSA</DomainPath>
        </ParentElementPath>
        <GeometryShapeMoniker Name="sEnvironmentalConcern" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="EconomicConcern" />
        <ParentElementPath>
          <DomainPath>ImpactLevelHasConcerns.ImpactLevel/!ImpactLevel/SoSAHasImpactLevels.SoSA/!SoSA</DomainPath>
        </ParentElementPath>
        <GeometryShapeMoniker Name="sEconomicConcern" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="sUndecidedEffect" />
        <DomainRelationshipMoniker Name="UndecidedEffectConcern" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="sUndecidedEffect" />
        <DomainRelationshipMoniker Name="UndecidedEffectSA" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="sPositiveEffect" />
        <DomainRelationshipMoniker Name="PositiveEffectSA" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="sNegativeEffect" />
        <DomainRelationshipMoniker Name="NegativeEffectSA" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="sPositiveEffect" />
        <DomainRelationshipMoniker Name="PositiveEffectConcern" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="sNegativeEffect" />
        <DomainRelationshipMoniker Name="NegativeEffectConcern" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="RICT" EditorGuid="37c615f5-af59-45bb-b179-d29833a24d69">
    <RootClass>
      <DomainClassMoniker Name="SoSA" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="RICTSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="RICT">
      <ElementTool Name="SocialConcern" ToolboxIcon="Resources\socialConcernSymbol.bmp" Caption="SocialConcern" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="SocialConcern" />
      </ElementTool>
      <ConnectionTool Name="UndecidedEffectConcern" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="UndecidedEffectConcern" Tooltip="Drag between ExampleElements to create an ExampleRelationship" HelpKeyword="ConnectExampleRelationF1Keyword">
        <ConnectionBuilderMoniker Name="RICT/UndecidedEffectConcernBuilder" />
      </ConnectionTool>
      <ElementTool Name="SystemicLevel" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="SystemicLevel" Tooltip="Systemic Level" HelpKeyword="SystemicLevel">
        <DomainClassMoniker Name="SystemicLevel" />
      </ElementTool>
      <ElementTool Name="EnablingLevel" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="EnablingLevel" Tooltip="Enabling Level" HelpKeyword="EnablingLevel">
        <DomainClassMoniker Name="EnablingLevel" />
      </ElementTool>
      <ElementTool Name="ImmediateLevel" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="ImmediateLevel" Tooltip="Immediate Level" HelpKeyword="ImmediateLevel">
        <DomainClassMoniker Name="ImmediateLevel" />
      </ElementTool>
      <ElementTool Name="SoftwareArchitecture" ToolboxIcon="Resources\softwareArchitectureSymbol.bmp" Caption="SoftwareArchitecture" Tooltip="Software Architecture" HelpKeyword="SoftwareArchitecture">
        <DomainClassMoniker Name="SoftwareArchitecture" />
      </ElementTool>
      <ElementTool Name="TechnicalConcern" ToolboxIcon="Resources\technicalConcernSymbol.bmp" Caption="TechnicalConcern" Tooltip="Technical Concern" HelpKeyword="TechnicalConcern">
        <DomainClassMoniker Name="TechnicalConcern" />
      </ElementTool>
      <ElementTool Name="EnvironmentalConcern" ToolboxIcon="Resources\environmentalConcernSymbol.bmp" Caption="EnvironmentalConcern" Tooltip="Environmental Concern" HelpKeyword="EnvironmentalConcern">
        <DomainClassMoniker Name="EnvironmentalConcern" />
      </ElementTool>
      <ElementTool Name="EconomicConcern" ToolboxIcon="Resources\economicConcernSymbol.bmp" Caption="EconomicConcern" Tooltip="Economic Concern" HelpKeyword="EconomicConcern">
        <DomainClassMoniker Name="EconomicConcern" />
      </ElementTool>
      <ConnectionTool Name="PositiveEffectConcern" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="PositiveEffectConcern" Tooltip="Positive Effect Concern" HelpKeyword="PositiveEffectConcern">
        <ConnectionBuilderMoniker Name="RICT/PositiveEffectConcernBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="NegativeEffectConcern" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="NegativeEffectConcern" Tooltip="Negative Effect Concern" HelpKeyword="NegativeEffectConcern">
        <ConnectionBuilderMoniker Name="RICT/NegativeEffectConcernBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="UndecidedEffectSA" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="UndecidedEffectSA" Tooltip="Undecided Effect SA" HelpKeyword="UndecidedEffectSA">
        <ConnectionBuilderMoniker Name="RICT/UndecidedEffectSABuilder" />
      </ConnectionTool>
      <ConnectionTool Name="PositiveEffectSA" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="PositiveEffectSA" Tooltip="Positive Effect SA" HelpKeyword="PositiveEffectSA">
        <ConnectionBuilderMoniker Name="RICT/PositiveEffectSABuilder" />
      </ConnectionTool>
      <ConnectionTool Name="NegativeEffectSA" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="NegativeEffectSA" Tooltip="Negative Effect SA" HelpKeyword="NegativeEffectSA">
        <ConnectionBuilderMoniker Name="RICT/NegativeEffectSABuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="RICTDiagram" />
  </Designer>
  <Explorer ExplorerGuid="75f0fd49-f745-4474-ba1e-ed6c9353d9ee" Title="RICT Explorer">
    <ExplorerBehaviorMoniker Name="RICT/RICTExplorer" />
  </Explorer>
</Dsl>