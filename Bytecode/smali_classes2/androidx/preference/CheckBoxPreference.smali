.class public Landroidx/preference/CheckBoxPreference;
.super Landroidx/preference/TwoStatePreference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/CheckBoxPreference$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final onPostMessage:Landroidx/preference/CheckBoxPreference$onMessageChannelReady;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 86
    sget v0, Lo/onFastForward$ICustomTabsCallback;->checkBoxPreferenceStyle:I

    .line 3354
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 3355
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3356
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x101008f

    .line 86
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 1

    const/4 p4, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    new-instance v0, Landroidx/preference/CheckBoxPreference$onMessageChannelReady;

    invoke-direct {v0, p0}, Landroidx/preference/CheckBoxPreference$onMessageChannelReady;-><init>(Landroidx/preference/CheckBoxPreference;)V

    iput-object v0, p0, Landroidx/preference/CheckBoxPreference;->onPostMessage:Landroidx/preference/CheckBoxPreference$onMessageChannelReady;

    .line 69
    sget-object v0, Lo/onFastForward$asBinder;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 72
    sget p2, Lo/onFastForward$asBinder;->CheckBoxPreference_summaryOn:I

    sget p3, Lo/onFastForward$asBinder;->CheckBoxPreference_android_summaryOn:I

    .line 1310
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1312
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 72
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->onNavigationEvent(Ljava/lang/CharSequence;)V

    .line 75
    sget p2, Lo/onFastForward$asBinder;->CheckBoxPreference_summaryOff:I

    sget p3, Lo/onFastForward$asBinder;->CheckBoxPreference_android_summaryOff:I

    .line 2310
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 2312
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 75
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->ICustomTabsCallback$Stub(Ljava/lang/CharSequence;)V

    .line 78
    sget p2, Lo/onFastForward$asBinder;->CheckBoxPreference_disableDependentsState:I

    sget p3, Lo/onFastForward$asBinder;->CheckBoxPreference_android_disableDependentsState:I

    .line 3264
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 3265
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 78
    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->onMessageChannelReady(Z)V

    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private onMessageChannelReady(Landroid/view/View;)V
    .locals 3

    .line 128
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 129
    move-object v1, p1

    check-cast v1, Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    :cond_0
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    .line 132
    move-object v1, p1

    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Landroidx/preference/TwoStatePreference;->onMessageChannelReady:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 135
    check-cast p1, Landroid/widget/CompoundButton;

    iget-object v0, p0, Landroidx/preference/CheckBoxPreference;->onPostMessage:Landroidx/preference/CheckBoxPreference$onMessageChannelReady;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected extraCallback(Landroid/view/View;)V
    .locals 2

    .line 109
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->extraCallback(Landroid/view/View;)V

    .line 4115
    invoke-virtual {p0}, Landroidx/preference/Preference;->IPostMessageService$Stub()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 4116
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1020001

    .line 4120
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4121
    invoke-direct {p0, v0}, Landroidx/preference/CheckBoxPreference;->onMessageChannelReady(Landroid/view/View;)V

    const v0, 0x1020010

    .line 4123
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 4124
    invoke-virtual {p0, p1}, Landroidx/preference/CheckBoxPreference;->ICustomTabsCallback(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onMessageChannelReady(Lo/onPlayFromMediaId;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->onMessageChannelReady(Lo/onPlayFromMediaId;)V

    const v0, 0x1020001

    .line 98
    invoke-virtual {p1, v0}, Lo/onPlayFromMediaId;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/preference/CheckBoxPreference;->onMessageChannelReady(Landroid/view/View;)V

    .line 100
    invoke-virtual {p0, p1}, Landroidx/preference/CheckBoxPreference;->onNavigationEvent(Lo/onPlayFromMediaId;)V

    return-void
.end method
