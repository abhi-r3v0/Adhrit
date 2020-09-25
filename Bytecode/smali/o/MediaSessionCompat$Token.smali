.class Lo/MediaSessionCompat$Token;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaSessionCompat$Token$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field protected onMessageChannelReady:Lo/MediaSessionCompat$Token$ICustomTabsCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lo/MediaSessionCompat$Token$ICustomTabsCallback;

    invoke-direct {v0, p1, p2, p3, p0}, Lo/MediaSessionCompat$Token$ICustomTabsCallback;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lo/MediaSessionCompat$Token;)V

    iput-object v0, p0, Lo/MediaSessionCompat$Token;->onMessageChannelReady:Lo/MediaSessionCompat$Token$ICustomTabsCallback;

    return-void
.end method

.method static ICustomTabsCallback(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020002

    if-ne v0, v1, :cond_1

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 55
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    .line 57
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static onMessageChannelReady(Landroid/view/View;)Lo/MediaSessionCompat$Token;
    .locals 5

    .line 65
    invoke-static {p0}, Lo/MediaSessionCompat$Token;->ICustomTabsCallback(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 69
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 70
    instance-of v4, v3, Lo/MediaSessionCompat$Token$ICustomTabsCallback;

    if-eqz v4, :cond_0

    .line 71
    check-cast v3, Lo/MediaSessionCompat$Token$ICustomTabsCallback;

    iget-object p0, v3, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->onMessageChannelReady:Lo/MediaSessionCompat$Token;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_1
    new-instance v1, Lo/MediaSessionCompat$SessionFlags;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lo/MediaSessionCompat$SessionFlags;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
