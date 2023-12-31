﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Drawing.Design;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using VSShellInterop = global::Microsoft.VisualStudio.Shell.Interop;
using VSShell = global::Microsoft.VisualStudio.Shell;
using DslShell = global::Microsoft.VisualStudio.Modeling.Shell;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using DslModeling = global::Microsoft.VisualStudio.Modeling;

namespace Company.RICT
{
	/// <summary>
	/// This class implements the VS package that integrates this DSL into Visual Studio.
	/// </summary>
	[VSShell::PackageRegistration(RegisterUsing = VSShell::RegistrationMethod.Assembly, UseManagedResourcesOnly = true, AllowsBackgroundLoading = true)]
	[VSShell::ProvideToolWindow(typeof(RICTExplorerToolWindow), MultiInstances = false, Style = VSShell::VsDockStyle.Tabbed, Orientation = VSShell::ToolWindowOrientation.Right, Window = "{3AE79031-E1BC-11D0-8F78-00A0C9110057}")]
	[VSShell::ProvideToolWindowVisibility(typeof(RICTExplorerToolWindow), Constants.RICTEditorFactoryId)]
	[VSShell::ProvideStaticToolboxGroup("@RICTToolboxTab;Company.RICT.Dsl.dll", "Company.RICT.RICTToolboxTab")]
	[VSShell::ProvideStaticToolboxItem("Company.RICT.RICTToolboxTab",
					"@SocialConcernToolboxItem;Company.RICT.Dsl.dll", 
					"Company.RICT.SocialConcernToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"CreateExampleClassF1Keyword", 
					"@SocialConcernToolboxBitmap;Company.RICT.Dsl.dll", 
					0xff00ff,
					Index = 0)]
	[VSShell::ProvideStaticToolboxItem("Company.RICT.RICTToolboxTab",
					"@UndecidedEffectConcernToolboxItem;Company.RICT.Dsl.dll", 
					"Company.RICT.UndecidedEffectConcernToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"ConnectExampleRelationF1Keyword", 
					"@UndecidedEffectConcernToolboxBitmap;Company.RICT.Dsl.dll", 
					0xff00ff,
					Index = 1)]
	[VSShell::ProvideStaticToolboxItem("Company.RICT.RICTToolboxTab",
					"@SystemicLevelToolboxItem;Company.RICT.Dsl.dll", 
					"Company.RICT.SystemicLevelToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"SystemicLevel", 
					"@SystemicLevelToolboxBitmap;Company.RICT.Dsl.dll", 
					0xff00ff,
					Index = 2)]
	[VSShell::ProvideStaticToolboxItem("Company.RICT.RICTToolboxTab",
					"@EnablingLevelToolboxItem;Company.RICT.Dsl.dll", 
					"Company.RICT.EnablingLevelToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"EnablingLevel", 
					"@EnablingLevelToolboxBitmap;Company.RICT.Dsl.dll", 
					0xff00ff,
					Index = 3)]
	[VSShell::ProvideStaticToolboxItem("Company.RICT.RICTToolboxTab",
					"@ImmediateLevelToolboxItem;Company.RICT.Dsl.dll", 
					"Company.RICT.ImmediateLevelToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"ImmediateLevel", 
					"@ImmediateLevelToolboxBitmap;Company.RICT.Dsl.dll", 
					0xff00ff,
					Index = 4)]
	[VSShell::ProvideStaticToolboxItem("Company.RICT.RICTToolboxTab",
					"@SoftwareArchitectureToolboxItem;Company.RICT.Dsl.dll", 
					"Company.RICT.SoftwareArchitectureToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"SoftwareArchitecture", 
					"@SoftwareArchitectureToolboxBitmap;Company.RICT.Dsl.dll", 
					0xff00ff,
					Index = 5)]
	[VSShell::ProvideStaticToolboxItem("Company.RICT.RICTToolboxTab",
					"@TechnicalConcernToolboxItem;Company.RICT.Dsl.dll", 
					"Company.RICT.TechnicalConcernToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"TechnicalConcern", 
					"@TechnicalConcernToolboxBitmap;Company.RICT.Dsl.dll", 
					0xff00ff,
					Index = 6)]
	[VSShell::ProvideStaticToolboxItem("Company.RICT.RICTToolboxTab",
					"@EnvironmentalConcernToolboxItem;Company.RICT.Dsl.dll", 
					"Company.RICT.EnvironmentalConcernToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"EnvironmentalConcern", 
					"@EnvironmentalConcernToolboxBitmap;Company.RICT.Dsl.dll", 
					0xff00ff,
					Index = 7)]
	[VSShell::ProvideStaticToolboxItem("Company.RICT.RICTToolboxTab",
					"@EconomicConcernToolboxItem;Company.RICT.Dsl.dll", 
					"Company.RICT.EconomicConcernToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"EconomicConcern", 
					"@EconomicConcernToolboxBitmap;Company.RICT.Dsl.dll", 
					0xff00ff,
					Index = 8)]
	[VSShell::ProvideStaticToolboxItem("Company.RICT.RICTToolboxTab",
					"@PositiveEffectConcernToolboxItem;Company.RICT.Dsl.dll", 
					"Company.RICT.PositiveEffectConcernToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"PositiveEffectConcern", 
					"@PositiveEffectConcernToolboxBitmap;Company.RICT.Dsl.dll", 
					0xff00ff,
					Index = 9)]
	[VSShell::ProvideStaticToolboxItem("Company.RICT.RICTToolboxTab",
					"@NegativeEffectConcernToolboxItem;Company.RICT.Dsl.dll", 
					"Company.RICT.NegativeEffectConcernToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"NegativeEffectConcern", 
					"@NegativeEffectConcernToolboxBitmap;Company.RICT.Dsl.dll", 
					0xff00ff,
					Index = 10)]
	[VSShell::ProvideStaticToolboxItem("Company.RICT.RICTToolboxTab",
					"@UndecidedEffectSAToolboxItem;Company.RICT.Dsl.dll", 
					"Company.RICT.UndecidedEffectSAToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"UndecidedEffectSA", 
					"@UndecidedEffectSAToolboxBitmap;Company.RICT.Dsl.dll", 
					0xff00ff,
					Index = 11)]
	[VSShell::ProvideStaticToolboxItem("Company.RICT.RICTToolboxTab",
					"@PositiveEffectSAToolboxItem;Company.RICT.Dsl.dll", 
					"Company.RICT.PositiveEffectSAToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"PositiveEffectSA", 
					"@PositiveEffectSAToolboxBitmap;Company.RICT.Dsl.dll", 
					0xff00ff,
					Index = 12)]
	[VSShell::ProvideStaticToolboxItem("Company.RICT.RICTToolboxTab",
					"@NegativeEffectSAToolboxItem;Company.RICT.Dsl.dll", 
					"Company.RICT.NegativeEffectSAToolboxItem", 
					"CF_TOOLBOXITEMCONTAINER,CF_TOOLBOXITEMCONTAINER_HASH,CF_TOOLBOXITEMCONTAINER_CONTENTS", 
					"NegativeEffectSA", 
					"@NegativeEffectSAToolboxBitmap;Company.RICT.Dsl.dll", 
					0xff00ff,
					Index = 13)]
	[VSShell::ProvideEditorFactory(typeof(RICTEditorFactory), 103, TrustLevel = VSShellInterop::__VSEDITORTRUSTLEVEL.ETL_AlwaysTrusted)]
	[VSShell::ProvideEditorExtension(typeof(RICTEditorFactory), "." + Constants.DesignerFileExtension, 50)]
	[VSShell::ProvideEditorLogicalView(typeof(RICTEditorFactory), "{7651A702-06E5-11D1-8EBD-00A0C90F26EA}")] // Designer logical view GUID i.e. VSConstants.LOGVIEWID_Designer
	[DslShell::ProvideRelatedFile("." + Constants.DesignerFileExtension, Constants.DefaultDiagramExtension,
		ProjectSystem = DslShell::ProvideRelatedFileAttribute.CSharpProjectGuid,
		FileOptions = DslShell::RelatedFileType.FileName)]
	[DslShell::ProvideRelatedFile("." + Constants.DesignerFileExtension, Constants.DefaultDiagramExtension,
		ProjectSystem = DslShell::ProvideRelatedFileAttribute.VisualBasicProjectGuid,
		FileOptions = DslShell::RelatedFileType.FileName)]
	[DslShell::RegisterAsDslToolsEditor]
	[global::System.Runtime.InteropServices.ComVisible(true)]
	[DslShell::ProvideBindingPath]
	[DslShell::ProvideXmlEditorChooserBlockSxSWithXmlEditor(@"RICT", typeof(RICTEditorFactory))]

	internal abstract partial class RICTPackageBase : DslShell::AsyncModelingPackage
	{
		protected global::Company.RICT.RICTToolboxHelper toolboxHelper;	
		
		/// <summary>
		/// Initialization method called by the package base class when this package is loaded.
		/// </summary>
		protected async override System.Threading.Tasks.Task InitializeAsync(CancellationToken cancellationToken, IProgress<VSShell.ServiceProgressData> progress)
		{
			await base.InitializeAsync(cancellationToken, progress);

			// Register the editor factory used to create the DSL editor.
			this.RegisterEditorFactory(new RICTEditorFactory(this));
			
			// Initialize the toolbox helper
			toolboxHelper = new global::Company.RICT.RICTToolboxHelper(this);

			// Create the command set that handles menu commands provided by this package.
			RICTCommandSet commandSet = new RICTCommandSet(this);
			await commandSet.InitializeAsync(cancellationToken);
			
			// Create the command set that handles cut/copy/paste commands provided by this package.
			RICTClipboardCommandSet clipboardCommandSet = new RICTClipboardCommandSet(this);
			await clipboardCommandSet.InitializeAsync(cancellationToken);
			
			// Register the model explorer tool window for this DSL.
			this.AddToolWindow(typeof(RICTExplorerToolWindow));

			if (cancellationToken.IsCancellationRequested)
			{
				return;
			}

			await JoinableTaskFactory.SwitchToMainThreadAsync();

			// Initialize Extension Registars
			// this is a partial method call
			this.InitializeExtensions();

			// Add dynamic toolbox items
			await this.SetupDynamicToolboxAsync(cancellationToken);
		}

		/// <summary>
		/// Partial method to initialize ExtensionRegistrars (if any) in the DslPackage
		/// </summary>
		partial void InitializeExtensions();
		
		/// <summary>
		/// Returns any dynamic tool items for the designer
		/// </summary>
		/// <remarks>The default implementation is to return the list of items from the generated toolbox helper.</remarks>
		protected override global::System.Collections.Generic.IList<DslDesign::ModelingToolboxItem> CreateToolboxItems()
		{
			try
			{
				Debug.Assert(toolboxHelper != null, "Toolbox helper is not initialized");
				return toolboxHelper.CreateToolboxItems();
			}
			catch (global::System.Exception e)
			{
				global::System.Diagnostics.Debug.Fail("Exception thrown during toolbox item creation.  This may result in Package Load Failure:\r\n\r\n" + e);
				throw;
			}
		}
		
		
		/// <summary>
		/// Given a toolbox item "unique ID" and a data format identifier, returns the content of
		/// the data format. 
		/// </summary>
		/// <param name="itemId">The unique ToolboxItem to retrieve data for</param>
		/// <param name="format">The desired format of the resulting data</param>
		protected override object GetToolboxItemData(string itemId, DataFormats.Format format)
		{
			Debug.Assert(toolboxHelper != null, "Toolbox helper is not initialized");
		
			// Retrieve the specified ToolboxItem from the DSL
			return toolboxHelper.GetToolboxItemData(itemId, format);
		}

		public override VSShellInterop::IVsAsyncToolWindowFactory GetAsyncToolWindowFactory(Guid toolWindowType)
		{
			if (toolWindowType == typeof(RICTExplorerToolWindow).GUID)
			{
				return this;
			}

			return base.GetAsyncToolWindowFactory(toolWindowType);
		}
	}
}

//
// Package attributes which may need to change are placed on the partial class below, rather than in the main include file.
//
namespace Company.RICT
{
	/// <summary>
	/// Double-derived class to allow easier code customization.
	/// </summary>
	[VSShell::ProvideMenuResource("1000.ctmenu", 1)]
	[VSShell::ProvideToolboxItems(1)]
	[global::Microsoft.VisualStudio.TextTemplating.VSHost.ProvideDirectiveProcessor(typeof(global::Company.RICT.RICTDirectiveProcessor), global::Company.RICT.RICTDirectiveProcessor.RICTDirectiveProcessorName, "A directive processor that provides access to RICT files")]
	[global::System.Runtime.InteropServices.Guid(Constants.RICTPackageId)]
	internal sealed partial class RICTPackage : RICTPackageBase
	{
	}
}