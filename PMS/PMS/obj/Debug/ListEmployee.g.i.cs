﻿#pragma checksum "..\..\ListEmployee.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "D966E217BCA27271B65008DA1EC840B75E4D941B4416EF1E6A10981B4157F74D"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using PMS;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
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


namespace PMS {
    
    
    /// <summary>
    /// ListEmployee
    /// </summary>
    public partial class ListEmployee : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 14 "..\..\ListEmployee.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.RowDefinition ColumnChange;
        
        #line default
        #line hidden
        
        
        #line 20 "..\..\ListEmployee.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ColumnDefinition EmployeeColumnChangeSecond;
        
        #line default
        #line hidden
        
        
        #line 21 "..\..\ListEmployee.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ColumnDefinition EmployeeColumnChange;
        
        #line default
        #line hidden
        
        
        #line 27 "..\..\ListEmployee.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button accountButton;
        
        #line default
        #line hidden
        
        
        #line 30 "..\..\ListEmployee.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button exitButton;
        
        #line default
        #line hidden
        
        
        #line 38 "..\..\ListEmployee.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button AddEmployee;
        
        #line default
        #line hidden
        
        
        #line 55 "..\..\ListEmployee.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid AccountGrid;
        
        #line default
        #line hidden
        
        
        #line 83 "..\..\ListEmployee.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label EmployeeLabel;
        
        #line default
        #line hidden
        
        
        #line 87 "..\..\ListEmployee.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox FIO;
        
        #line default
        #line hidden
        
        
        #line 93 "..\..\ListEmployee.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox EmployeeDepartment;
        
        #line default
        #line hidden
        
        
        #line 105 "..\..\ListEmployee.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox EmployeeRank;
        
        #line default
        #line hidden
        
        
        #line 128 "..\..\ListEmployee.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button AddEmployeeButton;
        
        #line default
        #line hidden
        
        
        #line 130 "..\..\ListEmployee.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button AddEmployeeRollbackButton;
        
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
            System.Uri resourceLocater = new System.Uri("/PMS;component/listemployee.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\ListEmployee.xaml"
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
            this.ColumnChange = ((System.Windows.Controls.RowDefinition)(target));
            return;
            case 2:
            this.EmployeeColumnChangeSecond = ((System.Windows.Controls.ColumnDefinition)(target));
            return;
            case 3:
            this.EmployeeColumnChange = ((System.Windows.Controls.ColumnDefinition)(target));
            return;
            case 4:
            this.accountButton = ((System.Windows.Controls.Button)(target));
            
            #line 27 "..\..\ListEmployee.xaml"
            this.accountButton.Click += new System.Windows.RoutedEventHandler(this.accountButton_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.exitButton = ((System.Windows.Controls.Button)(target));
            
            #line 30 "..\..\ListEmployee.xaml"
            this.exitButton.Click += new System.Windows.RoutedEventHandler(this.exitButton_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.AddEmployee = ((System.Windows.Controls.Button)(target));
            
            #line 38 "..\..\ListEmployee.xaml"
            this.AddEmployee.Click += new System.Windows.RoutedEventHandler(this.AddEmployee_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            
            #line 41 "..\..\ListEmployee.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.CopyButton_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            
            #line 44 "..\..\ListEmployee.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.DeleteButtonBoat_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            
            #line 47 "..\..\ListEmployee.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.EditButton_Click);
            
            #line default
            #line hidden
            return;
            case 10:
            this.AccountGrid = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 11:
            this.EmployeeLabel = ((System.Windows.Controls.Label)(target));
            return;
            case 12:
            this.FIO = ((System.Windows.Controls.TextBox)(target));
            return;
            case 13:
            this.EmployeeDepartment = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 14:
            this.EmployeeRank = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 15:
            this.AddEmployeeButton = ((System.Windows.Controls.Button)(target));
            
            #line 129 "..\..\ListEmployee.xaml"
            this.AddEmployeeButton.Click += new System.Windows.RoutedEventHandler(this.AddEmployeeButton_Click);
            
            #line default
            #line hidden
            return;
            case 16:
            this.AddEmployeeRollbackButton = ((System.Windows.Controls.Button)(target));
            
            #line 131 "..\..\ListEmployee.xaml"
            this.AddEmployeeRollbackButton.Click += new System.Windows.RoutedEventHandler(this.AddEmployeeRollbackButton_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

