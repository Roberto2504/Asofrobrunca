﻿#pragma checksum "..\..\..\..\User_Controls\Asociados\uc_ContenedorFamiliares.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "2A0555D971D534EAFBF7A6DE1ED51940"
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
using System.Windows.Forms.Integration;
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
    /// uc_ContenedorFamiliares
    /// </summary>
    public partial class uc_ContenedorFamiliares : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 17 "..\..\..\..\User_Controls\Asociados\uc_ContenedorFamiliares.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel stpContenedor;
        
        #line default
        #line hidden
        
        
        #line 20 "..\..\..\..\User_Controls\Asociados\uc_ContenedorFamiliares.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnGuardar;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\..\..\User_Controls\Asociados\uc_ContenedorFamiliares.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnNuevo;
        
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
            System.Uri resourceLocater = new System.Uri("/SIGEEA_App;component/user_controls/asociados/uc_contenedorfamiliares.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\User_Controls\Asociados\uc_ContenedorFamiliares.xaml"
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
            this.stpContenedor = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 2:
            this.btnGuardar = ((System.Windows.Controls.Button)(target));
            
            #line 20 "..\..\..\..\User_Controls\Asociados\uc_ContenedorFamiliares.xaml"
            this.btnGuardar.Click += new System.Windows.RoutedEventHandler(this.btnGuardar_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.btnNuevo = ((System.Windows.Controls.Button)(target));
            
            #line 29 "..\..\..\..\User_Controls\Asociados\uc_ContenedorFamiliares.xaml"
            this.btnNuevo.Click += new System.Windows.RoutedEventHandler(this.btnNuevo_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

