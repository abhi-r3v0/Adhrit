.class public final Lo/MediaBrowserCompat$MediaBrowserImplApi21$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaBrowserCompat$MediaBrowserImplApi21$1$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/putLong;

.field private final onNavigationEvent:Landroid/hardware/biometrics/BiometricManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 97
    invoke-static {p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$1$onPostMessage;->onPostMessage(Landroid/content/Context;)Landroid/hardware/biometrics/BiometricManager;

    move-result-object p1

    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$1;->onNavigationEvent:Landroid/hardware/biometrics/BiometricManager;

    .line 98
    iput-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$1;->ICustomTabsCallback:Lo/putLong;

    return-void

    .line 100
    :cond_0
    iput-object v1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$1;->onNavigationEvent:Landroid/hardware/biometrics/BiometricManager;

    .line 102
    invoke-static {p1}, Lo/putLong;->ICustomTabsCallback(Landroid/content/Context;)Lo/putLong;

    move-result-object p1

    iput-object p1, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$1;->ICustomTabsCallback:Lo/putLong;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()I
    .locals 2

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$1;->onNavigationEvent:Landroid/hardware/biometrics/BiometricManager;

    invoke-static {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$1$onPostMessage;->onMessageChannelReady(Landroid/hardware/biometrics/BiometricManager;)I

    move-result v0

    return v0

    .line 125
    :cond_0
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$1;->ICustomTabsCallback:Lo/putLong;

    invoke-virtual {v0}, Lo/putLong;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xc

    return v0

    .line 127
    :cond_1
    iget-object v0, p0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$1;->ICustomTabsCallback:Lo/putLong;

    invoke-virtual {v0}, Lo/putLong;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xb

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
