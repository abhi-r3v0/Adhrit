.class public Landroidx/preference/EditTextPreference;
.super Landroidx/preference/DialogPreference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/EditTextPreference$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field public asInterface:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 51
    sget v0, Lo/onFastForward$ICustomTabsCallback;->editTextPreferenceStyle:I

    .line 1354
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1355
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1356
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x1010092

    .line 51
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 0

    const/4 p4, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()Z
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/preference/EditTextPreference;->asInterface:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/preference/DialogPreference;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsCallback()Z

    move-result v0

    .line 67
    iput-object p1, p0, Landroidx/preference/EditTextPreference;->asInterface:Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->onNavigationEvent(Ljava/lang/String;)Z

    .line 71
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsCallback()Z

    move-result p1

    if-eq p1, v0, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onPostMessage(Z)V

    :cond_0
    return-void
.end method

.method protected onNavigationEvent(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onNavigationEvent(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/EditTextPreference$ICustomTabsCallback;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    check-cast p1, Landroidx/preference/EditTextPreference$ICustomTabsCallback;

    .line 123
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/DialogPreference;->onNavigationEvent(Landroid/os/Parcelable;)V

    .line 124
    iget-object p1, p1, Landroidx/preference/EditTextPreference$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    .line 3065
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsCallback()Z

    move-result v0

    .line 3067
    iput-object p1, p0, Landroidx/preference/EditTextPreference;->asInterface:Ljava/lang/String;

    .line 3069
    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->onNavigationEvent(Ljava/lang/String;)Z

    .line 3071
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsCallback()Z

    move-result p1

    if-eq p1, v0, :cond_1

    .line 3073
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onPostMessage(Z)V

    :cond_1
    return-void

    .line 118
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/DialogPreference;->onNavigationEvent(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onPostMessage()Landroid/os/Parcelable;
    .locals 2

    .line 103
    invoke-super {p0}, Landroidx/preference/DialogPreference;->onPostMessage()Landroid/os/Parcelable;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Landroidx/preference/Preference;->requestPostMessageChannel()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 109
    :cond_0
    new-instance v1, Landroidx/preference/EditTextPreference$ICustomTabsCallback;

    invoke-direct {v1, v0}, Landroidx/preference/EditTextPreference$ICustomTabsCallback;-><init>(Landroid/os/Parcelable;)V

    .line 2083
    iget-object v0, p0, Landroidx/preference/EditTextPreference;->asInterface:Ljava/lang/String;

    .line 110
    iput-object v0, v1, Landroidx/preference/EditTextPreference$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    return-object v1
.end method
