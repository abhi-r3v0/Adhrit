.class public Landroidx/preference/SwitchPreferenceCompat;
.super Landroidx/preference/TwoStatePreference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SwitchPreferenceCompat$onNavigationEvent;
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/CharSequence;

.field private extraCallback:Ljava/lang/CharSequence;

.field private final onPostMessage:Landroidx/preference/SwitchPreferenceCompat$onNavigationEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 129
    sget v0, Lo/onFastForward$ICustomTabsCallback;->switchPreferenceCompatStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    new-instance v0, Landroidx/preference/SwitchPreferenceCompat$onNavigationEvent;

    invoke-direct {v0, p0}, Landroidx/preference/SwitchPreferenceCompat$onNavigationEvent;-><init>(Landroidx/preference/SwitchPreferenceCompat;)V

    iput-object v0, p0, Landroidx/preference/SwitchPreferenceCompat;->onPostMessage:Landroidx/preference/SwitchPreferenceCompat$onNavigationEvent;

    .line 85
    sget-object v0, Lo/onFastForward$asBinder;->SwitchPreferenceCompat:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 88
    sget p2, Lo/onFastForward$asBinder;->SwitchPreferenceCompat_summaryOn:I

    sget p3, Lo/onFastForward$asBinder;->SwitchPreferenceCompat_android_summaryOn:I

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
    sget p2, Lo/onFastForward$asBinder;->SwitchPreferenceCompat_summaryOff:I

    sget p3, Lo/onFastForward$asBinder;->SwitchPreferenceCompat_android_summaryOff:I

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
    sget p2, Lo/onFastForward$asBinder;->SwitchPreferenceCompat_switchTextOn:I

    sget p3, Lo/onFastForward$asBinder;->SwitchPreferenceCompat_android_switchTextOn:I

    .line 3310
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 3312
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 94
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/preference/SwitchPreferenceCompat;->onMessageChannelReady(Ljava/lang/CharSequence;)V

    .line 98
    sget p2, Lo/onFastForward$asBinder;->SwitchPreferenceCompat_switchTextOff:I

    sget p3, Lo/onFastForward$asBinder;->SwitchPreferenceCompat_android_switchTextOff:I

    .line 4310
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 4312
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 98
    :cond_3
    invoke-virtual {p0, p2}, Landroidx/preference/SwitchPreferenceCompat;->ICustomTabsCallback(Ljava/lang/CharSequence;)V

    .line 102
    sget p2, Lo/onFastForward$asBinder;->SwitchPreferenceCompat_disableDependentsState:I

    sget p3, Lo/onFastForward$asBinder;->SwitchPreferenceCompat_android_disableDependentsState:I

    const/4 p4, 0x0

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
    .locals 2

    .line 217
    invoke-virtual {p0}, Landroidx/preference/Preference;->IPostMessageService$Stub()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 218
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    sget v0, Lo/onFastForward$onPostMessage;->switchWidget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 223
    invoke-direct {p0, v0}, Landroidx/preference/SwitchPreferenceCompat;->onPostMessage(Landroid/view/View;)V

    const v0, 0x1020010

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 226
    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->ICustomTabsCallback(Landroid/view/View;)V

    return-void
.end method

.method private onPostMessage(Landroid/view/View;)V
    .locals 3

    .line 230
    instance-of v0, p1, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 231
    move-object v1, p1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    const/4 v2, 0x0

    .line 232
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 234
    :cond_0
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    .line 235
    move-object v1, p1

    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Landroidx/preference/TwoStatePreference;->onMessageChannelReady:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 238
    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 239
    iget-object v0, p0, Landroidx/preference/SwitchPreferenceCompat;->extraCallback:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Landroidx/preference/SwitchPreferenceCompat;->ICustomTabsCallback:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Landroidx/preference/SwitchPreferenceCompat;->onPostMessage:Landroidx/preference/SwitchPreferenceCompat$onNavigationEvent;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Ljava/lang/CharSequence;)V
    .locals 0

    .line 167
    iput-object p1, p0, Landroidx/preference/SwitchPreferenceCompat;->ICustomTabsCallback:Ljava/lang/CharSequence;

    .line 168
    invoke-virtual {p0}, Landroidx/preference/SwitchPreferenceCompat;->onNavigationEvent()V

    return-void
.end method

.method protected extraCallback(Landroid/view/View;)V
    .locals 0

    .line 211
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->extraCallback(Landroid/view/View;)V

    .line 212
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->onNavigationEvent(Landroid/view/View;)V

    return-void
.end method

.method public onMessageChannelReady(Ljava/lang/CharSequence;)V
    .locals 0

    .line 156
    iput-object p1, p0, Landroidx/preference/SwitchPreferenceCompat;->extraCallback:Ljava/lang/CharSequence;

    .line 157
    invoke-virtual {p0}, Landroidx/preference/SwitchPreferenceCompat;->onNavigationEvent()V

    return-void
.end method

.method public onMessageChannelReady(Lo/onPlayFromMediaId;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->onMessageChannelReady(Lo/onPlayFromMediaId;)V

    .line 144
    sget v0, Lo/onFastForward$onPostMessage;->switchWidget:I

    invoke-virtual {p1, v0}, Lo/onPlayFromMediaId;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    .line 145
    invoke-direct {p0, v0}, Landroidx/preference/SwitchPreferenceCompat;->onPostMessage(Landroid/view/View;)V

    .line 146
    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->onNavigationEvent(Lo/onPlayFromMediaId;)V

    return-void
.end method
