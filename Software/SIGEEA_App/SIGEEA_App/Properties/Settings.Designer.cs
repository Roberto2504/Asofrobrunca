﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SIGEEA_App.Properties {
    
    
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "14.0.0.0")]
    internal sealed partial class Settings : global::System.Configuration.ApplicationSettingsBase {
        
        private static Settings defaultInstance = ((Settings)(global::System.Configuration.ApplicationSettingsBase.Synchronized(new Settings())));
        
        public static Settings Default {
            get {
                return defaultInstance;
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.ConnectionString)]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=DESKTOP-B08M2J3\\SQLEXPRESS;Initial Catalog=SIGEEA_BD;Integrated Secur" +
            "ity=True;")]
        public string SIGEEA_BDConnectionString {
            get {
                return ((string)(this["SIGEEA_BDConnectionString"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.ConnectionString)]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=DESKTOP-UNGN8I1\\SQLEXPRESS;Initial Catalog=SIGEEA_BD;Integrated Secur" +
            "ity=True")]
        public string SIGEEA_BDConnectionStringFacturacion {
            get {
                return ((string)(this["SIGEEA_BDConnectionStringFacturacion"]));
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.SpecialSettingAttribute(global::System.Configuration.SpecialSetting.ConnectionString)]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=LUIS-PC\\SQLEXPRESS;Initial Catalog=SIGEEA_BD;Integrated Security=True" +
            "")]
        public string SIGEEA_BDConnectionString1 {
            get {
                return ((string)(this["SIGEEA_BDConnectionString1"]));
            }
        }
    }
}
