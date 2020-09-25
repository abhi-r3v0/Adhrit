.class public final Landroidx/preference/PreferenceScreen;
.super Landroidx/preference/PreferenceGroup;
.source ""


# instance fields
.field public onPostMessage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 90
    sget v0, Lo/onFastForward$ICustomTabsCallback;->preferenceScreenStyle:I

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
    const v0, 0x101008b

    .line 90
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput-boolean v3, p0, Landroidx/preference/PreferenceScreen;->onPostMessage:Z

    return-void
.end method


# virtual methods
.method protected final asInterface()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final extraCallback()V
    .locals 1

    .line 96
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsCallback$Stub()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsCallback$Stub$Proxy()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2189
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->IPostMessageService()Lo/onPlayFromUri;

    :cond_1
    :goto_0
    return-void
.end method
