.class public Landroidx/preference/SwitchPreference;
.super Landroidx/preference/TwoStatePreference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SwitchPreference$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroidx/preference/SwitchPreference$ICustomTabsCallback;

.field private extraCallback:Ljava/lang/CharSequence;

.field private onNavigationEvent:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 129
    sget v0, Lo/onFastForward$ICustomTabsCallback;->switchPreferenceStyle:I

    .line 5354
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 5355
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 5356
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x101036d

    .line 129
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 1

    const/4 p4, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    new-instance v0, Landroidx/preference/SwitchPreference$ICustomTabsCallback;

    invoke-direct {v0, p0}, Landroidx/preference/SwitchPreference$ICustomTabsCallback;-><init>(Landroidx/preference/SwitchPreference;)V

    iput-object v0, p0, Landroidx/preference/SwitchPreference;->ICustomTabsCallback:Landroidx/preference/SwitchPreference$ICustomTabsCallback;

    .line 85
    sget-object v0, Lo/onFastForward$asBinder;->SwitchPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 88
    sget p2, Lo/onFastForward$asBinder;->SwitchPreference_summaryOn:I

    sget p3, Lo/onFastForward$asBinder;->SwitchPreference_android_summaryOn:I

    .line 1310
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1312
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 88
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->onNavigationEvent(Ljava/lang/CharSequence;)V

    .line 91
    sget p2, Lo/onFastForward$asBinder;->SwitchPreference_summaryOff:I

    sget p3, Lo/onFastForward$asBinder;->SwitchPreference_android_summaryOff:I

    .line 2310
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 2312
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 91
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->ICustomTabsCallback$Stub(Ljava/lang/CharSequence;)V

    .line 94
    sget p2, Lo/onFastForward$asBinder;->SwitchPreference_switchTextOn:I

    sget p3, Lo/onFastForward$asBinder;->SwitchPreference_android_switchTextOn:I

    .line 3310
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 3312
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4158
    :cond_2
    iput-object p2, p0, Landroidx/preference/SwitchPreference;->extraCallback:Ljava/lang/CharSequence;

    .line 4159
    invoke-virtual {p0}, Landroidx/preference/SwitchPreference;->onNavigationEvent()V

    .line 98
    sget p2, Lo/onFastForward$asBinder;->SwitchPreference_switchTextOff:I

    sget p3, Lo/onFastForward$asBinder;->SwitchPreference_android_switchTextOff:I

    .line 4310
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 4312
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 5169
    :cond_3
    iput-object p2, p0, Landroidx/preference/SwitchPreference;->onNavigationEvent:Ljava/lang/CharSequence;

    .line 5170
    invoke-virtual {p0}, Landroidx/preference/SwitchPreference;->onNavigationEvent()V

    .line 102
    sget p2, Lo/onFastForward$asBinder;->SwitchPreference_disableDependentsState:I

    sget p3, Lo/onFastForward$asBinder;->SwitchPreference_android_disableDependentsState:I

    .line 5264
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 5265
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 102
    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->onMessageChannelReady(Z)V

    .line 106
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private onNavigationEvent(Landroid/view/View;)V
    .locals 3

    .line 233
    instance-of v0, p1, Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 234
    move-object v1, p1

    check-cast v1, Landroid/widget/Switch;

    const/4 v2, 0x0

    .line 235
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 237
    :cond_0
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    .line 238
    move-object v1, p1

    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Landroidx/preference/TwoStatePreference;->onMessageChannelReady:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 241
    check-cast p1, Landroid/widget/Switch;

    .line 242
    iget-object v0, p0, Landroidx/preference/SwitchPreference;->extraCallback:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Landroidx/preference/SwitchPreference;->onNavigationEvent:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Landroidx/preference/SwitchPreference;->ICustomTabsCallback:Landroidx/preference/SwitchPreference$ICustomTabsCallback;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected extraCallback(Landroid/view/View;)V
    .locals 2

    .line 213
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->extraCallback(Landroid/view/View;)V

    .line 6220
    invoke-virtual {p0}, Landroidx/preference/Preference;->IPostMessageService$Stub()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 6221
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1020040

    .line 6225
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6226
    invoke-direct {p0, v0}, Landroidx/preference/SwitchPreference;->onNavigationEvent(Landroid/view/View;)V

    const v0, 0x1020010

    .line 6228
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 6229
    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->ICustomTabsCallback(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onMessageChannelReady(Lo/onPlayFromMediaId;)V
    .locals 1

    .line 145
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->onMessageChannelReady(Lo/onPlayFromMediaId;)V

    const v0, 0x1020040

    .line 146
    invoke-virtual {p1, v0}, Lo/onPlayFromMediaId;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    .line 147
    invoke-direct {p0, v0}, Landroidx/preference/SwitchPreference;->onNavigationEvent(Landroid/view/View;)V

    .line 148
    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->onNavigationEvent(Lo/onPlayFromMediaId;)V

    return-void
.end method
