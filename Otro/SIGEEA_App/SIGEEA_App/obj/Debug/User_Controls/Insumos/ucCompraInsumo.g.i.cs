﻿#pragma checksum "..\..\..\..\User_Controls\Insumos\ucCompraInsumo.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "8C39FD0C97022735C10AD8AF0CF9D957"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using SIGEEA_App.User_Controls.Insumos;
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


namespace SIGEEA_App.User_Controls.Insumos {
    
    
    /// <summary>
    /// ucCompraInsumo
    /// </summary>
    public partial class ucCompraInsumo : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 30 "..\..\..\..\User_Controls\Insumos\ucCompraInsumo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock txtNombre;
        
        #line default
        #line hidden
        
        
        #line 31 "..\..\..\..\User_Controls\Insumos\ucCompraInsumo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock txtDescripcion;
        
        #line default
        #line hidden
        
        
        #line 34 "..\..\..\..\User_Controls\Insumos\ucCompraInsumo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock txtDisponibles;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\..\..\User_Controls\Insumos\ucCompraInsumo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock txtUMedida;
        
        #line default
        #line hidden
        
        
        #line 38 "..\..\..\..\User_Controls\Insumos\ucCompraInsumo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtCantidad;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\..\..\User_Controls\Insumos\ucCompraInsumo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cmbUMedida;
        
        #line default
        #line hidden
        
        
        #line 41 "..\..\..\..\User_Controls\Insumos\ucCompraInsumo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtPrecioUnidad;
        
        #line default
        #line hidden
        
        
        #line 43 "..\..\..\..\User_Controls\Insumos\ucCompraInsumo.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock txtTotal;
        
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
            System.Uri resourceLocater = new System.Uri("/SIGEEA_App;component/user_controls/insumos/uccomprainsumo.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\User_Controls\Insumos\ucCompraInsumo.xaml"
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
            this.txtNombre = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 2:
            this.txtDescripcion = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 3:
            this.txtDisponibles = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 4:
            this.txtUMedida = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 5:
            this.txtCantidad = ((System.Windows.Controls.TextBox)(target));
            
            #line 38 "..\..\..\..\User_Controls\Insumos\ucCompraInsumo.xaml"
            this.txtCantidad.PreviewTextInput += new System.Windows.Input.TextCompositionEventHandler(this.txtCantidad_PreviewTextInput);
            
            #line default
            #line hidden
            
            #line 38 "..\..\..\..\User_Controls\Insumos\ucCompraInsumo.xaml"
            this.txtCantidad.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.txtCantidad_TextChanged);
            
            #line default
            #line hidden
            return;
            case 6:
            this.cmbUMedida = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 7:
            this.txtPrecioUnidad = ((System.Windows.Controls.TextBox)(target));
            
            #line 41 "..\..\..\..\User_Controls\Insumos\ucCompraInsumo.xaml"
            this.txtPrecioUnidad.PreviewTextInput += new System.Windows.Input.TextCompositionEventHandler(this.txtPrecioUnidad_PreviewTextInput);
            
            #line default
            #line hidden
            
            #line 41 "..\..\..\..\User_Controls\Insumos\ucCompraInsumo.xaml"
            this.txtPrecioUnidad.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.txtPrecioUnidad_TextChanged);
            
            #line default
            #line hidden
            return;
            case 8:
            this.txtTotal = ((System.Windows.Controls.TextBlock)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

