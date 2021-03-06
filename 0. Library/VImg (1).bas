﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.3
@EndOfDesignText@
'Custom BANano View class: VImg
#IgnoreWarnings:12
#Event: error (argument As Object)
#Event: load (argument As Object)


#DesignerProperty: Key: Alt, DisplayName: Alt, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: AspectRatio, DisplayName: AspectRatio, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: Caption, DisplayName: Caption, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: Contain, DisplayName: Contain, Description: , FieldType: Boolean, DefaultValue: False
#DesignerProperty: Key: Disabled, DisplayName: Disabled, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: Eager, DisplayName: Eager, Description: , FieldType: Boolean, DefaultValue: False
#DesignerProperty: Key: Gradient, DisplayName: Gradient, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: Height, DisplayName: Height, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: Key, DisplayName: Key, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: LazySrc, DisplayName: LazySrc, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: MaxHeight, DisplayName: MaxHeight, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: MaxWidth, DisplayName: MaxWidth, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: MinHeight, DisplayName: MinHeight, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: MinWidth, DisplayName: MinWidth, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: Position, DisplayName: Position, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: Readonly, DisplayName: Readonly, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: Ref, DisplayName: Ref, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: Required, DisplayName: Required, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: Sizes, DisplayName: Sizes, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: Srcset, DisplayName: Srcset, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: Transition, DisplayName: Transition, Description: , List: slide-x-transition|slide-x-reverse-transition|slide-y-transition|slide-y-reverse-transition|scroll-x-transition|scroll-x-reverse-transition|scroll-y-transition|scroll-y-reverse-transition|scale-transition|fade-transition|fab-transition, FieldType: String, DefaultValue: 
#DesignerProperty: Key: VBindClass, DisplayName: VBindClass, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: VBindStyle, DisplayName: VBindStyle, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: VCloak, DisplayName: VCloak, Description: , FieldType: Boolean, DefaultValue: False
#DesignerProperty: Key: VElse, DisplayName: VElse, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: VFor, DisplayName: VFor, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: VHtml, DisplayName: VHtml, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: VIf, DisplayName: VIf, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: VModel, DisplayName: VModel, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: VOnce, DisplayName: VOnce, Description: , FieldType: Boolean, DefaultValue: False
#DesignerProperty: Key: VPre, DisplayName: VPre, Description: , FieldType: Boolean, DefaultValue: False
#DesignerProperty: Key: VShow, DisplayName: VShow, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: VText, DisplayName: VText, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: Width, DisplayName: Width, Description: , FieldType: String, DefaultValue: 
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag. 
#DesignerProperty: Key: Style, DisplayName: Style, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String.

Sub Class_Globals 
	Private BANano As BANano 'ignore 
	Private data As Map 
	private appLink As VueApp 'ignore 
	Public mName As String 'ignore 
	Private mEventName As String 'ignore 
	Private mCallBack As Object 'ignore 
	Private mTarget As BANanoElement 'ignore 
	Private mElement As BANanoElement 'ignore

Private properties As Map
Private styles As Map
Private classList As Map
Private mClasses As String = "" 
	Private mStyle As String = ""

Private mTagName As String = "v-img" 
	Public bindings As Map 
	Public methods As Map
Private sAlt As String = ""
Private sAspectRatio As String = ""
Private sCaption As String = ""
Private bContain As Boolean = False
Private sDisabled As String = ""
Private bEager As Boolean = False
Private sGradient As String = ""
Private sHeight As String = ""
Private sKey As String = ""
Private sLazySrc As String = ""
Private sMaxHeight As String = ""
Private sMaxWidth As String = ""
Private sMinHeight As String = ""
Private sMinWidth As String = ""
Private sPosition As String = ""
Private sReadonly As String = ""
Private sRef As String = ""
Private sRequired As String = ""
Private sSizes As String = ""
Private sSrcset As String = ""
Private sTransition As String = ""
Private sVBindClass As String = ""
Private sVBindStyle As String = ""
Private bVCloak As Boolean = False
Private sVElse As String = ""
Private sVFor As String = ""
Private sVHtml As String = ""
Private sVIf As String = ""
Private sVModel As String = ""
Private bVOnce As Boolean = False
Private bVPre As Boolean = False
Private sVShow As String = ""
Private sVText As String = ""
Private sWidth As String = ""

End Sub

Public Sub Initialize (CallBack As Object, Name As String, EventName As String) As VImg 
mName = Name 
mEventName = EventName.ToLowerCase 
mCallBack = CallBack 
bindings.Initialize 
methods.Initialize 
properties.Initialize 
styles.Initialize 
classList.Initialize 
Return Me 
End Sub

' this is the place where you create the view in html and run initialize javascript.  Must be Public!
Public Sub DesignerCreateView (Target As BANanoElement, props As Map) 
	mTarget = Target

If props <> Null Then
mClasses = props.Get("Classes") 
mStyle = props.Get("Style")
sAlt = props.Get("Alt")
sAspectRatio = props.Get("AspectRatio")
sCaption = props.Get("Caption")
bContain = props.Get("Contain")
sDisabled = props.Get("Disabled")
bEager = props.Get("Eager")
sGradient = props.Get("Gradient")
sHeight = props.Get("Height")
sKey = props.Get("Key")
sLazySrc = props.Get("LazySrc")
sMaxHeight = props.Get("MaxHeight")
sMaxWidth = props.Get("MaxWidth")
sMinHeight = props.Get("MinHeight")
sMinWidth = props.Get("MinWidth")
sPosition = props.Get("Position")
sReadonly = props.Get("Readonly")
sRef = props.Get("Ref")
sRequired = props.Get("Required")
sSizes = props.Get("Sizes")
sSrcset = props.Get("Srcset")
sTransition = props.Get("Transition")
sVBindClass = props.Get("VBindClass")
sVBindStyle = props.Get("VBindStyle")
bVCloak = props.Get("VCloak")
sVElse = props.Get("VElse")
sVFor = props.Get("VFor")
sVHtml = props.Get("VHtml")
sVIf = props.Get("VIf")
sVModel = props.Get("VModel")
bVOnce = props.Get("VOnce")
bVPre = props.Get("VPre")
sVShow = props.Get("VShow")
sVText = props.Get("VText")
sWidth = props.Get("Width")

End If
Dim strHTML As String = ToString
mElement = mTarget.Append(strHTML).Get("#" & mName)

' defining events is very simple. Note that it has to be run AFTER adding it to the HTML DOM! eventName must be lowercase!

'This activates when the event exists on the module
SetOnError
'This activates when the event exists on the module
SetOnLoad


End Sub

'set alt
Sub SetAlt(varAlt As String) As VImg
sAlt = varAlt
SetAttr("alt", sAlt)
Return Me
End Sub

'set aspect-ratio
Sub SetAspectRatio(varAspectRatio As String) As VImg
sAspectRatio = varAspectRatio
SetAttr("aspect-ratio", sAspectRatio)
Return Me
End Sub

'set contain
Sub SetContain(varContain As Boolean) As VImg
bContain = varContain
SetAttr("contain", bContain)
Return Me
End Sub

'set disabled
Sub SetDisabled(varDisabled As String) As VImg
sDisabled = varDisabled
SetAttr("disabled", sDisabled)
Return Me
End Sub

'set eager
Sub SetEager(varEager As Boolean) As VImg
bEager = varEager
SetAttr("eager", bEager)
Return Me
End Sub

'set gradient
Sub SetGradient(varGradient As String) As VImg
sGradient = varGradient
SetAttr("gradient", sGradient)
Return Me
End Sub

'set height
Sub SetHeight(varHeight As String) As VImg
sHeight = varHeight
SetAttr("height", sHeight)
Return Me
End Sub

'set key
Sub SetKey(varKey As String) As VImg
sKey = varKey
SetAttr("key", sKey)
Return Me
End Sub

'set lazy-src
Sub SetLazySrc(varLazySrc As String) As VImg
sLazySrc = varLazySrc
SetAttr("lazy-src", sLazySrc)
Return Me
End Sub

'set max-height
Sub SetMaxHeight(varMaxHeight As String) As VImg
sMaxHeight = varMaxHeight
SetAttr("max-height", sMaxHeight)
Return Me
End Sub

'set max-width
Sub SetMaxWidth(varMaxWidth As String) As VImg
sMaxWidth = varMaxWidth
SetAttr("max-width", sMaxWidth)
Return Me
End Sub

'set min-height
Sub SetMinHeight(varMinHeight As String) As VImg
sMinHeight = varMinHeight
SetAttr("min-height", sMinHeight)
Return Me
End Sub

'set min-width
Sub SetMinWidth(varMinWidth As String) As VImg
sMinWidth = varMinWidth
SetAttr("min-width", sMinWidth)
Return Me
End Sub

'set options
Sub SetOptions(varOptions As Object) As VImg
SetAttr("options", varOptions)
Return Me
End Sub

'set position
Sub SetPosition(varPosition As String) As VImg
sPosition = varPosition
SetAttr("position", sPosition)
Return Me
End Sub

'set readonly
Sub SetReadonly(varReadonly As String) As VImg
sReadonly = varReadonly
SetAttr("readonly", sReadonly)
Return Me
End Sub

'set ref
Sub SetRef(varRef As String) As VImg
sRef = varRef
SetAttr("ref", sRef)
Return Me
End Sub

'set required
Sub SetRequired(varRequired As String) As VImg
sRequired = varRequired
SetAttr("required", sRequired)
Return Me
End Sub

'set sizes
Sub SetSizes(varSizes As String) As VImg
sSizes = varSizes
SetAttr("sizes", sSizes)
Return Me
End Sub

'set src
Sub SetSrc(varSrc As Object) As VImg
SetAttr("src", varSrc)
Return Me
End Sub

'set srcset
Sub SetSrcset(varSrcset As String) As VImg
sSrcset = varSrcset
SetAttr("srcset", sSrcset)
Return Me
End Sub

'set transition
Sub SetTransition(varTransition As String) As VImg
sTransition = varTransition
SetAttr("transition", sTransition)
Return Me
End Sub

'set v-bind:class
Sub SetVBindClass(varVBindClass As String) As VImg
sVBindClass = varVBindClass
SetAttr("v-bind:class", sVBindClass)
Return Me
End Sub

'set v-bind:style
Sub SetVBindStyle(varVBindStyle As String) As VImg
sVBindStyle = varVBindStyle
SetAttr("v-bind:style", sVBindStyle)
Return Me
End Sub

'set v-cloak
Sub SetVCloak(varVCloak As Boolean) As VImg
bVCloak = varVCloak
SetAttr("v-cloak", bVCloak)
Return Me
End Sub

'set v-else
Sub SetVElse(varVElse As String) As VImg
sVElse = varVElse
SetAttr("v-else", sVElse)
Return Me
End Sub

'set v-for
Sub SetVFor(varVFor As String) As VImg
sVFor = varVFor
SetAttr("v-for", sVFor)
Return Me
End Sub

'set v-html
Sub SetVHtml(varVHtml As String) As VImg
sVHtml = varVHtml
SetAttr("v-html", sVHtml)
Return Me
End Sub

'set v-if
Sub SetVIf(varVIf As String) As VImg
sVIf = varVIf
SetAttr("v-if", sVIf)
Return Me
End Sub

'set v-model
Sub SetVModel(varVModel As String) As VImg
sVModel = varVModel
SetAttr("v-model", sVModel)
Return Me
End Sub

'set v-once
Sub SetVOnce(varVOnce As Boolean) As VImg
bVOnce = varVOnce
SetAttr("v-once", bVOnce)
Return Me
End Sub

'set v-pre
Sub SetVPre(varVPre As Boolean) As VImg
bVPre = varVPre
SetAttr("v-pre", bVPre)
Return Me
End Sub

'set v-show
Sub SetVShow(varVShow As String) As VImg
sVShow = varVShow
SetAttr("v-show", sVShow)
Return Me
End Sub

'set v-text
Sub SetVText(varVText As String) As VImg
sVText = varVText
SetAttr("v-text", sVText)
Return Me
End Sub

'set width
Sub SetWidth(varWidth As String) As VImg
sWidth = varWidth
SetAttr("width", sWidth)
Return Me
End Sub


'set on error event, updates the master events records
Sub SetOnError() As VImg
Dim sName As String = $"${mEventName}_error"$
sName = sName.tolowercase
If SubExists(mCallBack, sName) = False Then Return Me
SetAttr("v-on:error", sName)
Dim argument As Object 'ignore
Dim cb As BANanoObject = BANano.CallBack(mCallBack, sName, Array(argument))
methods.Put(sName, cb)
Return Me
End Sub

'set on load event, updates the master events records
Sub SetOnLoad() As VImg
Dim sName As String = $"${mEventName}_load"$
sName = sName.tolowercase
If SubExists(mCallBack, sName) = False Then Return Me
SetAttr("v-on:load", sName)
Dim argument As Object 'ignore
Dim cb As BANanoObject = BANano.CallBack(mCallBack, sName, Array(argument))
methods.Put(sName, cb)
Return Me
End Sub


'return the generated html
Sub ToString As String
AddAttr(sAlt, "alt")
AddAttr(sAspectRatio, "aspect-ratio")
AddAttr(sCaption, "caption")
AddAttr(bContain, "contain")
AddAttr(sDisabled, "disabled")
AddAttr(bEager, "eager")
AddAttr(sGradient, "gradient")
AddAttr(sHeight, "height")
AddAttr(sKey, "key")
AddAttr(sLazySrc, "lazy-src")
AddAttr(sMaxHeight, "max-height")
AddAttr(sMaxWidth, "max-width")
AddAttr(sMinHeight, "min-height")
AddAttr(sMinWidth, "min-width")
AddAttr(sPosition, "position")
AddAttr(sReadonly, "readonly")
AddAttr(sRef, "ref")
AddAttr(sRequired, "required")
AddAttr(sSizes, "sizes")
AddAttr(sSrcset, "srcset")
AddAttr(sTransition, "transition")
AddAttr(sVBindClass, "v-bind:class")
AddAttr(sVBindStyle, "v-bind:style")
AddAttr(bVCloak, "v-cloak")
AddAttr(sVElse, "v-else")
AddAttr(sVFor, "v-for")
AddAttr(sVHtml, "v-html")
AddAttr(sVIf, "v-if")
AddAttr(sVModel, "v-model")
AddAttr(bVOnce, "v-once")
AddAttr(bVPre, "v-pre")
AddAttr(sVShow, "v-show")
AddAttr(sVText, "v-text")
AddAttr(sWidth, "width")

'build the class list
Dim cKeys As String = BANanoShared.JoinMapKeys(classList, " ")
cKeys = cKeys & " " & mClasses
cKeys = cKeys.trim
AddAttr(cKeys, "class")
'build the style list
Dim sKeys As String = BANanoShared.BuildStyle(styles)
sKeys = sKeys & " " & mStyle
sKeys = sKeys.trim
AddAttr(sKeys, "style")
Dim exattr As String = BANanoShared.BuildAttributes(properties)

Dim strRes As String = $"<${mTagName} id="${mName}" ${exAttr}>${sCaption}</${mTagName}>"$
Return strRes
End Sub

'add a child component
Sub AddComponent(child As String) As VImg
	mElement.Append(child)
	sCaption = mElement.GetText
	Return Me
End Sub

'change the id of the element, ONLY execute this after a manual Initialize
Sub SetID(varText As String) As VImg
	mname = varText
	Return Me
End Sub

'get the text of the component
public Sub GetCaption() As String
	Return sCaption
End Sub

'add component to parent
public Sub AddToParent(targetID As String) As VImg
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
	Return Me
End Sub

'add component to app, this binds events and states
Sub AddToApp(va As VueApp) As VImg
	appLink = va
	data = va.data	
	'apply the binding for the control
	For Each k As String In bindings.Keys
		Dim v As String = bindings.Get(k)
		va.SetData(k, v)
	Next
	'apply the events
	For Each k As String In methods.Keys
		Dim cb As BANanoObject = methods.Get(k)
		va.SetCallBack(k, cb)
	Next
	Return Me
End Sub

'update the state
Sub SetData(prop as string, value as object) As VImg
	data.put(prop, value)
	Return Me
End Sub

'remove component
public Sub Remove()
	mElement.Empty
	BANano.SetMeToNull
End Sub

'trigger an event
public Sub Trigger(event As String, params() As String)
	If mElement <> Null Then
		mElement.Trigger(event, params)
	End If
End Sub

'set an event
Sub SetVOn(event As String) As VImg
	Dim methodName As String = BANanoShared.BeautifyName(event)
	methodName = $"${mEventName}_${methodName}"$
	methodName = methodName.tolowercase
	If SubExists(mCallBack, methodName) = False Then Return Me
	SetAttr($"v-on:${event}"$, methodName)
	SetMethod(mCallBack, methodName)
	Return Me
End Sub

'change the text of the element
Sub SetCaption(varText As String) As VImg
	If mElement <> Null Then
		mElement.SetHTML(BANano.SF(varText))
	End If
	sCaption = varText
	Return Me
End Sub

'will add properties to attributes
private Sub AddAttr(varName As String, actProp As String) As VImg
	If actProp = "caption" Then Return Me
	Try
		If varName.StartsWith(":") Then
			'this is a binding
			'get the real name
			Dim rname As String = BANanoShared.MidString2(varName, 2)
			If rname.Contains(".") Then
				'we are linked to a for loop
				properties.Put($":${actProp}"$, rname)
			Else
				properties.Put($":${actProp}"$, rname)
				bindings.Put(rname, Null)
			End If
		Else
			If varName <> "" Then properties.put(actProp, varName)
			Select Case actProp
			Case "v-model", "v-show", "v-if", "required", "enabled", "readonly"
				bindings.Put(varName, False)
			End Select
		End If
	Catch
		Log("Error")
	End Try
	Return Me
End Sub

#Region Property Getters and Setters
public Sub SetClasses(Classes As String) As VImg
	If mElement <> Null Then
		mElement.AddClass(Classes)
	End If
	mClasses = Classes
	Return Me
End Sub

public Sub GetClasses() As String
	Return mClasses
End Sub

' must be a json string
' e.g. $"{ "width": "200px", "height": "200px", "background": "green", "border-radius": "5px" }"$
public Sub SetStyle(Style As String) As VImg
	If mElement <> Null Then
		mElement.SetStyle(Style)
	End If
	mStyle = Style
	Return Me
End Sub

'add a list of classes
Sub AddClass(classNames As List) As VImg
	For Each k As String In classNames
		classList.put(k, k)
	Next
	dim cm as string = BANanoShared.Join(" ", classnames)
	Setclasses(cm)
	Return Me
End Sub

'set styles from a map
Sub SetStyles(m As Map) As VImg
	for each k as string in m.Keys
		dim v as string = m.get(k)
		styles.put(k, v)
	next
	Dim jsonStyle As String = BANano.ToJson(m)
	SetStyle(jsonStyle)
	Return Me
End Sub

'set attributes from a map
Sub SetAttrs(props As Map) As VImg
	For Each k As String In props.Keys
		Dim v As String = props.Get(k)
		SetAttr(k, v)
	Next
	Return Me
End Sub

'set an attribute
Sub SetAttr(prop As String, value As String) As VImg
	properties.put(prop, value)
	If mElement <> Null Then 
		mElement.SetAttr(prop, value)
	End If
	Return Me
End Sub

'bind an attribute
Sub SetVBind(prop As String, value As String) As VImg
	prop = prop.ToLowerCase
	value = value.ToLowerCase
	prop = $"v-bind:${prop}"$
	SetAttr(prop,value)
	bindings.Put(value, Null)
	Return Me
End Sub

'set a single style
Sub SetStyleSingle(prop As String, value As String) As VImg
	styles.put(prop, value)
	dim m as map = createmap()
	m.put(prop, value)
	Dim jsonStyle As String = BANano.ToJson(m)
	SetStyle(jsonStyle)
	Return Me
End Sub

'build a structure using props, styleprops, classes and loose attributes
Sub Build(props As Map, styleProps As Map, classNames As List, loose As List) As VImg
	If loose <> Null Then
		For Each k As String In loose
			SetAttr(k, True)
		Next
	End If
	If props <> Null Then
		For Each k As String In props.Keys
			Dim v As String = props.Get(k)
			SetAttr(k, v)
		Next
	End If
	If styleProps <> Null Then
		for each k as string in styleprops.Keys
			dim v as string = styleprops.get(k)
			SetStyleSingle(k, v)
		next
	End If
	If classNames <> Null Then
		AddClass(classNames)
	End If
	Return Me
End Sub

'get html
Public Sub GetHtml() As String
	Return mElement.GetHtml
End Sub

'bind classes
Sub SetVClass(classObj as string) As VImg
	SetVBind("class", classObj)
	Return Me
End Sub

'bind styles
Sub SetVStyle(styleObj as string) As VImg
	SetVBind("style", styleObj)
	Return Me
End Sub

'set color
Sub SetColor1(varColor As String) As VImg
	Dim pp As String = $"${mName}color"$
	SetAttr(":color", pp)
	'store the bindings
	bindings.Put(pp, varColor)
	Return Me
End Sub

'set color intensity
Sub SetColorIntensity(varColor As String, varIntensity As String) As VImg
	Dim scolor As String = $"${varColor} ${varIntensity}"$
	Dim pp As String = $"${mName}color"$
	SetAttr(":color", pp)
	'store the bindings
	bindings.Put(pp, scolor)
	Return Me
End Sub

'set text color
Sub SetTextColor1(varColor As String) As VImg
	Dim sColor As String = $"${varColor}--text"$
	AddClass(array(sColor))
	Return Me
End Sub

'set text color intensity
Sub SetTextColorIntensity(varColor As String, varIntensity As String) As VImg
	Dim sColor As String = $"${varColor}--text"$
	Dim sIntensity As String = $"text--${varIntensity}"$
	Dim mcolor As String = $"${sColor} ${sIntensity}"$
	AddClass(array(mcolor))
	Return Me
End Sub

'set direct method
Sub SetMethod(Module As Object,methodName As String) As VImg
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) Then
		Dim e As BANanoEvent
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, Array(e))
		methods.Put(methodName, cb)
	End If
	Return Me
End Sub

'toggle
Sub Toggle As VImg
	If sVShow = "" Then
		Log($"VImg.Toggle - the v-show for ${mName} has not been set!"$)
		Return Me
	End If
	'get the current state
	Dim cs As Boolean = data.Get(sVShow)
	If cs = Null Then cs = False
	cs = Not(cs)
	data.Put(sVShow, cs)
	Return Me
End Sub

'hide
Sub Hide As VImg
	If sVShow = "" Then
		Log($"VImg.Hide - the v-show for ${mName} has not been set!"$)
		Return Me
	End If
	data.Put(sVShow, False)
	Return Me
End Sub

'show
Sub Show As VImg
	If sVShow = "" Then
		Log($"VImg.Show - the v-show for ${mName} has not been set!"$)
		Return Me
	End If
	data.Put(sVShow, True)
	Return Me
End Sub

'set a class on and off
Sub SetClassOnOff(clsName as string, clsValue As Boolean) As VImg
	if svBindClass = "" then
		Log($"VImg.VBindClass - the v-bind:class for ${mName} has not been set!"$)
		Return Me
	end if
	dim obj As Map = data.get(svBindClass)
	obj.put(clsName, clsValue)
	data.put(svBindClass, obj)
	Return Me
End Sub

'set style 
Sub SetStyleOnOff(styleName as string, styleValue As Boolean) As VImg
	if svBindStyle = "" then
		Log($"VImg.VBindCStyle - the v-bind:style for ${mName} has not been set!"$)
		Return Me
	end if
	dim obj As Map = data.get(svBindStyle)
	obj.put(styleName, styleValue)
	data.put(svBindStyle, obj)
	Return Me
End Sub

'required
Sub SetRequiredOnOff(b As Boolean) As VImg
	If sRequired = "" Then
		Log($"VImg.Required - the required for ${mName} has not been set!"$)
		Return Me
	End If
	data.Put(sRequired, b)
	Return Me
End Sub

'read only
Sub SetReadOnlyOnOff(b As Boolean) As VImg
	If sReadonly = "" Then
		Log($"VImg.ReadOnly - the readonly for ${mName} has not been set!"$)
		Return Me
	End If
	data.Put(sReadonly, b)
	Return Me
End Sub

'disabled
Sub SetDisabledOnOff(b As Boolean) As VImg
	If sDisabled = "" Then
		Log($"VImg.Disabled - the disabled for ${mName} has not been set!"$)
		Return Me
	End If
	data.Put(sDisabled, b)
	Return Me
End Sub




