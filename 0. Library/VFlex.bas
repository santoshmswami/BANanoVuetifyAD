﻿B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=8.3
@EndOfDesignText@
'Custom BANano View class: VFlex
#IgnoreWarnings:12


#DesignerProperty: Key: Size112, DisplayName: Size112, Description: , DefaultValue: false, FieldType: Boolean
#DesignerProperty: Key: AlignSelfBaseline, DisplayName: AlignSelfBaseline, Description: , DefaultValue: false, FieldType: Boolean
#DesignerProperty: Key: AlignSelfCenter, DisplayName: AlignSelfCenter, Description: , DefaultValue: false, FieldType: Boolean
#DesignerProperty: Key: AlignSelfEnd, DisplayName: AlignSelfEnd, Description: , DefaultValue: false, FieldType: Boolean
#DesignerProperty: Key: AlignSelfStart, DisplayName: AlignSelfStart, Description: , DefaultValue: false, FieldType: Boolean
#DesignerProperty: Key: Caption, DisplayName: Caption, Description: , DefaultValue: , FieldType: String
#DesignerProperty: Key: Enabled, DisplayName: Enabled, Description: , DefaultValue: , FieldType: String
#DesignerProperty: Key: Grow, DisplayName: Grow, Description: , DefaultValue: false, FieldType: Boolean
#DesignerProperty: Key: Key, DisplayName: Key, Description: , DefaultValue: , FieldType: String
#DesignerProperty: Key: OffsetSize012, DisplayName: OffsetSize012, Description: , DefaultValue: false, FieldType: Boolean
#DesignerProperty: Key: OrderSize112, DisplayName: OrderSize112, Description: , DefaultValue: false, FieldType: Boolean
#DesignerProperty: Key: Readonly, DisplayName: Readonly, Description: , DefaultValue: , FieldType: String
#DesignerProperty: Key: Ref, DisplayName: Ref, Description: , DefaultValue: , FieldType: String
#DesignerProperty: Key: Required, DisplayName: Required, Description: , DefaultValue: , FieldType: String
#DesignerProperty: Key: Shrink, DisplayName: Shrink, Description: , DefaultValue: false, FieldType: Boolean
#DesignerProperty: Key: Tag, DisplayName: Tag, Description: , DefaultValue: div, FieldType: String
#DesignerProperty: Key: VCloak, DisplayName: VCloak, Description: , DefaultValue: False, FieldType: Boolean
#DesignerProperty: Key: VElse, DisplayName: VElse, Description: , DefaultValue: , FieldType: String
#DesignerProperty: Key: VFor, DisplayName: VFor, Description: , DefaultValue: , FieldType: String
#DesignerProperty: Key: VHtml, DisplayName: VHtml, Description: , DefaultValue: , FieldType: String
#DesignerProperty: Key: VIf, DisplayName: VIf, Description: , DefaultValue: , FieldType: String
#DesignerProperty: Key: VModel, DisplayName: VModel, Description: , DefaultValue: , FieldType: String
#DesignerProperty: Key: VOnce, DisplayName: VOnce, Description: , DefaultValue: False, FieldType: Boolean
#DesignerProperty: Key: VPre, DisplayName: VPre, Description: , DefaultValue: False, FieldType: Boolean
#DesignerProperty: Key: VShow, DisplayName: VShow, Description: , DefaultValue: , FieldType: String
#DesignerProperty: Key: VText, DisplayName: VText, Description: , DefaultValue: , FieldType: String
#DesignerProperty: Key: Classes, DisplayName: Classes, FieldType: String, DefaultValue: , Description: Classes added to the HTML tag. 
#DesignerProperty: Key: Style, DisplayName: Style, FieldType: String, DefaultValue: , Description: Styles added to the HTML tag. Must be a json String.

Sub Class_Globals 
	Private BANano As BANano 'ignore 
	Private data As Map 
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

Private mTagName As String = "v-flex" 
	Public bindings As Map 
	Public methods As Map
Private bSize112 As Boolean = false
Private bAlignSelfBaseline As Boolean = false
Private bAlignSelfCenter As Boolean = false
Private bAlignSelfEnd As Boolean = false
Private bAlignSelfStart As Boolean = false
Private sCaption As String = ""
Private sEnabled As String = ""
Private bGrow As Boolean = false
Private sKey As String = ""
Private bOffsetSize012 As Boolean = false
Private bOrderSize112 As Boolean = false
Private sReadonly As String = ""
Private sRef As String = ""
Private sRequired As String = ""
Private bShrink As Boolean = false
Private sTag As String = "div"
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

End Sub

Public Sub Initialize (CallBack As Object, Name As String, EventName As String) As VFlex 
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
bSize112 = props.Get("Size112")
bAlignSelfBaseline = props.Get("AlignSelfBaseline")
bAlignSelfCenter = props.Get("AlignSelfCenter")
bAlignSelfEnd = props.Get("AlignSelfEnd")
bAlignSelfStart = props.Get("AlignSelfStart")
sCaption = props.Get("Caption")
sEnabled = props.Get("Enabled")
bGrow = props.Get("Grow")
sKey = props.Get("Key")
bOffsetSize012 = props.Get("OffsetSize012")
bOrderSize112 = props.Get("OrderSize112")
sReadonly = props.Get("Readonly")
sRef = props.Get("Ref")
sRequired = props.Get("Required")
bShrink = props.Get("Shrink")
sTag = props.Get("Tag")
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

End If
Dim strHTML As String = ToString
mElement = mTarget.Append(strHTML).Get("#" & mName)

' defining events is very simple. Note that it has to be run AFTER adding it to the HTML DOM! eventName must be lowercase!



End Sub

'set (size)(1-12)
Sub SetSize112(varSize112 As Boolean) As VFlex
bSize112 = varSize112
SetAttr("(size)(1-12)", bSize112)
Return Me
End Sub

'set align-self-baseline
Sub SetAlignSelfBaseline(varAlignSelfBaseline As Boolean) As VFlex
bAlignSelfBaseline = varAlignSelfBaseline
SetAttr("align-self-baseline", bAlignSelfBaseline)
Return Me
End Sub

'set align-self-center
Sub SetAlignSelfCenter(varAlignSelfCenter As Boolean) As VFlex
bAlignSelfCenter = varAlignSelfCenter
SetAttr("align-self-center", bAlignSelfCenter)
Return Me
End Sub

'set align-self-end
Sub SetAlignSelfEnd(varAlignSelfEnd As Boolean) As VFlex
bAlignSelfEnd = varAlignSelfEnd
SetAttr("align-self-end", bAlignSelfEnd)
Return Me
End Sub

'set align-self-start
Sub SetAlignSelfStart(varAlignSelfStart As Boolean) As VFlex
bAlignSelfStart = varAlignSelfStart
SetAttr("align-self-start", bAlignSelfStart)
Return Me
End Sub

'set enabled
Sub SetEnabled(varEnabled As String) As VFlex
sEnabled = varEnabled
SetAttr("enabled", sEnabled)
Return Me
End Sub

'set grow
Sub SetGrow(varGrow As Boolean) As VFlex
bGrow = varGrow
SetAttr("grow", bGrow)
Return Me
End Sub

'set key
Sub SetKey(varKey As String) As VFlex
sKey = varKey
SetAttr("key", sKey)
Return Me
End Sub

'set offset-(size)(0-12)
Sub SetOffsetSize012(varOffsetSize012 As Boolean) As VFlex
bOffsetSize012 = varOffsetSize012
SetAttr("offset-(size)(0-12)", bOffsetSize012)
Return Me
End Sub

'set order-(size)(1-12)
Sub SetOrderSize112(varOrderSize112 As Boolean) As VFlex
bOrderSize112 = varOrderSize112
SetAttr("order-(size)(1-12)", bOrderSize112)
Return Me
End Sub

'set readonly
Sub SetReadonly(varReadonly As String) As VFlex
sReadonly = varReadonly
SetAttr("readonly", sReadonly)
Return Me
End Sub

'set ref
Sub SetRef(varRef As String) As VFlex
sRef = varRef
SetAttr("ref", sRef)
Return Me
End Sub

'set required
Sub SetRequired(varRequired As String) As VFlex
sRequired = varRequired
SetAttr("required", sRequired)
Return Me
End Sub

'set shrink
Sub SetShrink(varShrink As Boolean) As VFlex
bShrink = varShrink
SetAttr("shrink", bShrink)
Return Me
End Sub

'set tag
Sub SetTag(varTag As String) As VFlex
sTag = varTag
SetAttr("tag", sTag)
Return Me
End Sub

'set v-cloak
Sub SetVCloak(varVCloak As Boolean) As VFlex
bVCloak = varVCloak
SetAttr("v-cloak", bVCloak)
Return Me
End Sub

'set v-else
Sub SetVElse(varVElse As String) As VFlex
sVElse = varVElse
SetAttr("v-else", sVElse)
Return Me
End Sub

'set v-for
Sub SetVFor(varVFor As String) As VFlex
sVFor = varVFor
SetAttr("v-for", sVFor)
Return Me
End Sub

'set v-html
Sub SetVHtml(varVHtml As String) As VFlex
sVHtml = varVHtml
SetAttr("v-html", sVHtml)
Return Me
End Sub

'set v-if
Sub SetVIf(varVIf As String) As VFlex
sVIf = varVIf
SetAttr("v-if", sVIf)
Return Me
End Sub

'set v-model
Sub SetVModel(varVModel As String) As VFlex
sVModel = varVModel
SetAttr("v-model", sVModel)
Return Me
End Sub

'set v-once
Sub SetVOnce(varVOnce As Boolean) As VFlex
bVOnce = varVOnce
SetAttr("v-once", bVOnce)
Return Me
End Sub

'set v-pre
Sub SetVPre(varVPre As Boolean) As VFlex
bVPre = varVPre
SetAttr("v-pre", bVPre)
Return Me
End Sub

'set v-show
Sub SetVShow(varVShow As String) As VFlex
sVShow = varVShow
SetAttr("v-show", sVShow)
Return Me
End Sub

'set v-text
Sub SetVText(varVText As String) As VFlex
sVText = varVText
SetAttr("v-text", sVText)
Return Me
End Sub



'return the generated html
Sub ToString As String
AddAttr(bSize112, "(size)(1-12)")
AddAttr(bAlignSelfBaseline, "align-self-baseline")
AddAttr(bAlignSelfCenter, "align-self-center")
AddAttr(bAlignSelfEnd, "align-self-end")
AddAttr(bAlignSelfStart, "align-self-start")
AddAttr(sCaption, "caption")
AddAttr(sEnabled, "enabled")
AddAttr(bGrow, "grow")
AddAttr(sKey, "key")
AddAttr(bOffsetSize012, "offset-(size)(0-12)")
AddAttr(bOrderSize112, "order-(size)(1-12)")
AddAttr(sReadonly, "readonly")
AddAttr(sRef, "ref")
AddAttr(sRequired, "required")
AddAttr(bShrink, "shrink")
AddAttr(sTag, "tag")
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
Sub AddComponent(child As String) As VFlex
	mElement.Append(child)
	sCaption = mElement.GetText
	Return Me
End Sub

'change the id of the element, ONLY execute this after a manual Initialize
Sub SetID(varText As String) As VFlex
	mname = varText
	Return Me
End Sub

'get the text of the component
public Sub GetCaption() As String
	Return sCaption
End Sub

'add component to parent
public Sub AddToParent(targetID As String) As VFlex
	mTarget = BANano.GetElement("#" & targetID.ToLowerCase)
	DesignerCreateView(mTarget, Null)
	Return Me
End Sub

'add component to app, this binds events and states
Sub AddToApp(va As VueApp) As VFlex
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
	data = va.data	
	Return Me
End Sub

'update the state
Sub SetData(prop as string, value as object)
	data.put(prop, value)
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
Sub SetVOn(event As String) As VFlex
	Dim methodName As String = BANanoShared.BeautifyName(event)
	methodName = $"${mEventName}_${methodName}"$
	methodName = methodName.tolowercase
	If SubExists(mCallBack, methodName) = False Then Return Me
	SetAttr($"v-on:${event}"$, methodName)
	SetMethod(mCallBack, methodName)
	Return Me
End Sub

'change the text of the element
Sub SetCaption(varText As String) As VFlex
	If mElement <> Null Then
		mElement.SetHTML(BANano.SF(varText))
	End If
	sCaption = varText
	Return Me
End Sub

'will add properties to attributes
private Sub AddAttr(varName As String, actProp As String) As VFlex
	If varName <> "" Then properties.put(actprop, varname)
	Select Case actProp
	Case "v-model", "v-show", "v-if", "required", "enabled", "readonly"
		bindings.Put(varName, False)
	End Select
	Return Me
End Sub

#Region Property Getters and Setters
public Sub SetClasses(Classes As String) As VFlex
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
public Sub SetStyle(Style As String) As VFlex
	If mElement <> Null Then
		mElement.SetStyle(Style)
	End If
	mStyle = Style
	Return Me
End Sub

'add a list of classes
Sub AddClass(classNames As List) As VFlex
	For Each k As String In classNames
		classList.put(k, k)
	Next
	dim cm as string = BANanoShared.Join(" ", classnames)
	Setclasses(cm)
	Return Me
End Sub

'set styles from a map
Sub SetStyles(m As Map) As VFlex
	for each k as string in m.Keys
		dim v as string = m.get(k)
		styles.put(k, v)
	next
	Dim jsonStyle As String = BANano.ToJson(m)
	SetStyle(jsonStyle)
	Return Me
End Sub

'set attributes from a map
Sub SetAttrs(props As Map) As VFlex
	For Each k As String In props.Keys
		Dim v As String = props.Get(k)
		SetAttr(k, v)
	Next
	Return Me
End Sub

'set an attribute
Sub SetAttr(prop As String, value As String) As VFlex
	properties.put(prop, value)
	If mElement <> Null Then 
		mElement.SetAttr(prop, value)
	End If
	Return Me
End Sub

'bind an attribute
Sub SetVBind(prop As String, value As String) As VFlex
	prop = prop.ToLowerCase
	value = value.ToLowerCase
	prop = $"v-bind:${prop}"$
	SetAttr(prop,value)
	bindings.Put(value, Null)
	Return Me
End Sub

'set a single style
Sub SetStyleSingle(prop As String, value As String) As VFlex
	styles.put(prop, value)
	dim m as map = createmap()
	m.put(prop, value)
	Dim jsonStyle As String = BANano.ToJson(m)
	SetStyle(jsonStyle)
	Return Me
End Sub

'build a structure using props, styleprops, classes and loose attributes
Sub Build(props As Map, styleProps As Map, classNames As List, loose As List) As VFlex
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

'set color
Sub SetColor1(varColor As String) As VFlex
	Dim pp As String = $"${mName}color"$
	SetAttr(":color", pp)
	'store the bindings
	bindings.Put(pp, varColor)
	Return Me
End Sub

'set color intensity
Sub SetColorIntensity(varColor As String, varIntensity As String) As VFlex
	Dim scolor As String = $"${varColor} ${varIntensity}"$
	Dim pp As String = $"${mName}color"$
	SetAttr(":color", pp)
	'store the bindings
	bindings.Put(pp, scolor)
	Return Me
End Sub

'set text color
Sub SetTextColor1(varColor As String) As VFlex
	Dim sColor As String = $"${varColor}--text"$
	AddClass(array(sColor))
	Return Me
End Sub

'set text color intensity
Sub SetTextColorIntensity(varColor As String, varIntensity As String) As VFlex
	Dim sColor As String = $"${varColor}--text"$
	Dim sIntensity As String = $"text--${varIntensity}"$
	Dim mcolor As String = $"${sColor} ${sIntensity}"$
	AddClass(array(mcolor))
	Return Me
End Sub

'set direct method
Sub SetMethod(Module As Object,methodName As String) As VFlex
	methodName = methodName.ToLowerCase
	If SubExists(Module, methodName) Then
		Dim e As BANanoEvent
		Dim cb As BANanoObject = BANano.CallBack(Module, methodName, Array(e))
		methods.Put(methodName, cb)
	End If
	Return Me
End Sub