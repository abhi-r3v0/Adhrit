.class final Lo/getExtraBinder;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static onMessageChannelReady(Landroid/view/ViewGroup;Z)V
    .locals 2

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    return-void

    .line 58
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 1068
    sget-boolean v0, Lo/getExtraBinder;->ICustomTabsCallback:Z

    if-eqz v0, :cond_1

    .line 1072
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p0, 0x0

    .line 1074
    sput-boolean p0, Lo/getExtraBinder;->ICustomTabsCallback:Z

    :cond_1
    return-void

    .line 61
    :cond_2
    invoke-static {p0, p1}, Lo/getToken;->onMessageChannelReady(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method static onNavigationEvent(Landroid/view/ViewGroup;)Lo/performClick$extraCallback;
    .locals 2

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 47
    new-instance v0, Lo/hashCode;

    invoke-direct {v0, p0}, Lo/hashCode;-><init>(Landroid/view/ViewGroup;)V

    return-object v0

    .line 49
    :cond_0
    invoke-static {p0}, Lo/MediaSessionCompat$SessionFlags;->onMessageChannelReady(Landroid/view/ViewGroup;)Lo/MediaSessionCompat$SessionFlags;

    move-result-object p0

    return-object p0
.end method
