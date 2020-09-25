.class public Landroidx/preference/PreferenceCategory;
.super Landroidx/preference/PreferenceGroup;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 51
    sget v0, Lo/onFastForward$ICustomTabsCallback;->preferenceCategoryStyle:I

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
    const v0, 0x101008c

    .line 51
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IB)V
    .locals 0

    const/4 p4, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/getPlaybackState;)V
    .locals 7

    .line 79
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->ICustomTabsCallback(Lo/getPlaybackState;)V

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1

    .line 81
    invoke-virtual {p1}, Lo/getPlaybackState;->IPostMessageService$Stub()Lo/getPlaybackState$ICustomTabsCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {v0}, Lo/getPlaybackState$ICustomTabsCallback;->extraCallback()I

    move-result v1

    .line 88
    invoke-virtual {v0}, Lo/getPlaybackState$ICustomTabsCallback;->ICustomTabsCallback()I

    move-result v2

    .line 89
    invoke-virtual {v0}, Lo/getPlaybackState$ICustomTabsCallback;->onMessageChannelReady()I

    move-result v3

    .line 90
    invoke-virtual {v0}, Lo/getPlaybackState$ICustomTabsCallback;->onNavigationEvent()I

    move-result v4

    const/4 v5, 0x1

    .line 92
    invoke-virtual {v0}, Lo/getPlaybackState$ICustomTabsCallback;->onPostMessage()Z

    move-result v6

    .line 86
    invoke-static/range {v1 .. v6}, Lo/getPlaybackState$ICustomTabsCallback;->onMessageChannelReady(IIIIZZ)Lo/getPlaybackState$ICustomTabsCallback;

    move-result-object v0

    .line 93
    invoke-virtual {p1, v0}, Lo/getPlaybackState;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public ICustomTabsCallback()Z
    .locals 1

    .line 66
    invoke-super {p0}, Landroidx/preference/PreferenceGroup;->mayLaunchUrl()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mayLaunchUrl()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMessageChannelReady(Lo/onPlayFromMediaId;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroup;->onMessageChannelReady(Lo/onPlayFromMediaId;)V

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 73
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityHeading(Z)V

    :cond_0
    return-void
.end method
