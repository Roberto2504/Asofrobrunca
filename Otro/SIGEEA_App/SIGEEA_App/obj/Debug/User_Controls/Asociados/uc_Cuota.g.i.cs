﻿#pragma checksum "..\..\..\..\User_Controls\Asociados\uc_Cuota.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "42362D4354455B21C8DD0AB4501EC150"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using SIGEEA_App.User_Controls.Asociados;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace SIGEEA_App.User_Controls.Asociados {
    
    
    /// <summary>
    /// uc_Cuota
    /// </summary>
    public partial class uc_Cuota : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 9 "..\..\..\..\User_Controls\Asociados\uc_Cuota.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid grdPrincipal;
        
        #line default
        #line hidden
        
        
        #line 13 "..\..\..\..\User_Controls\Asociados\uc_Cuota.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label lblIdCuota;
        
        #line default
        #line hidden
        
        
        #line 14 "..\..\..\..\User_Controls\Asociados\uc_Cuota.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock lblNombre;
        
        #line default
        #line hidden
        
        
        #line 15 "..\..\..\..\User_Controls\Asociados\uc_Cuota.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock lblMonto;
        
        #line default
        #line hidden
        
        
        #line 16 "..\..\..\..\User_Controls\Asociados\uc_Cuota.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock lblRango;
        
        #line default
        #line hidden
        
        
        #line 17 "..\..\..\..\User_Controls\Asociados\uc_Cuota.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnSeleccionar;
        
        #line default
        #line hidden
        
        
        #line 18 "..\..\..\..\User_Controls\Asociados\uc_Cuota.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnEditar;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/SIGEEA_App;component/user_controls/asociados/uc_cuota.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\User_Controls\Asociados\uc_Cuota.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.grdPrincipal = ((System.Windows.Controls.Grid)(target));
            return;
            case 2:
            this.lblIdCuota = ((System.Windows.Controls.Label)(target));
            return;
            case 3:
            this.lblNombre = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 4:
            this.lblMonto = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 5:
            this.lblRango = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 6:
            this.btnSeleccionar = ((System.Windows.Controls.Button)(target));
            
            #line 17 "..\..\..\..\User_Controls\Asociados\uc_Cuota.xaml"
            this.btnSeleccionar.Click += new System.Windows.RoutedEventHandler(this.btnSeleccionar_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.btnEditar = ((System.Windows.Controls.Button)(target));
            
            #line 18 "..\..\..\..\User_Controls\Asociados\uc_Cuota.xaml"
            this.btnEditar.Click += new System.Windows.RoutedEventHandler(this.btnEditar_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

