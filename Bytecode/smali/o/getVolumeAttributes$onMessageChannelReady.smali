.class public final Lo/getVolumeAttributes$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getVolumeAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getVolumeAttributes$ICustomTabsCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 858
    new-instance v0, Lo/getVolumeAttributes$extraCallback;

    invoke-direct {v0}, Lo/getVolumeAttributes$extraCallback;-><init>()V

    iput-object v0, p0, Lo/getVolumeAttributes$onMessageChannelReady;->ICustomTabsCallback:Lo/getVolumeAttributes$ICustomTabsCallback;

    return-void

    .line 859
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 860
    new-instance v0, Lo/getVolumeAttributes$onNavigationEvent;

    invoke-direct {v0}, Lo/getVolumeAttributes$onNavigationEvent;-><init>()V

    iput-object v0, p0, Lo/getVolumeAttributes$onMessageChannelReady;->ICustomTabsCallback:Lo/getVolumeAttributes$ICustomTabsCallback;

    return-void

    .line 862
    :cond_1
    new-instance v0, Lo/getVolumeAttributes$ICustomTabsCallback;

    invoke-direct {v0}, Lo/getVolumeAttributes$ICustomTabsCallback;-><init>()V

    iput-object v0, p0, Lo/getVolumeAttributes$onMessageChannelReady;->ICustomTabsCallback:Lo/getVolumeAttributes$ICustomTabsCallback;

    return-void
.end method

.method public constructor <init>(Lo/getVolumeAttributes;)V
    .locals 2

    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 873
    new-instance v0, Lo/getVolumeAttributes$extraCallback;

    invoke-direct {v0, p1}, Lo/getVolumeAttributes$extraCallback;-><init>(Lo/getVolumeAttributes;)V

    iput-object v0, p0, Lo/getVolumeAttributes$onMessageChannelReady;->ICustomTabsCallback:Lo/getVolumeAttributes$ICustomTabsCallback;

    return-void

    .line 874
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 875
    new-instance v0, Lo/getVolumeAttributes$onNavigationEvent;

    invoke-direct {v0, p1}, Lo/getVolumeAttributes$onNavigationEvent;-><init>(Lo/getVolumeAttributes;)V

    iput-object v0, p0, Lo/getVolumeAttributes$onMessageChannelReady;->ICustomTabsCallback:Lo/getVolumeAttributes$ICustomTabsCallback;

    return-void

    .line 877
    :cond_1
    new-instance v0, Lo/getVolumeAttributes$ICustomTabsCallback;

    invoke-direct {v0, p1}, Lo/getVolumeAttributes$ICustomTabsCallback;-><init>(Lo/getVolumeAttributes;)V

    iput-object v0, p0, Lo/getVolumeAttributes$onMessageChannelReady;->ICustomTabsCallback:Lo/getVolumeAttributes$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getLong;)Lo/getVolumeAttributes$onMessageChannelReady;
    .locals 1

    .line 970
    iget-object v0, p0, Lo/getVolumeAttributes$onMessageChannelReady;->ICustomTabsCallback:Lo/getVolumeAttributes$ICustomTabsCallback;

    invoke-virtual {v0, p1}, Lo/getVolumeAttributes$ICustomTabsCallback;->ICustomTabsCallback(Lo/getLong;)V

    return-object p0
.end method

.method public final ICustomTabsCallback()Lo/getVolumeAttributes;
    .locals 1

    .line 996
    iget-object v0, p0, Lo/getVolumeAttributes$onMessageChannelReady;->ICustomTabsCallback:Lo/getVolumeAttributes$ICustomTabsCallback;

    invoke-virtual {v0}, Lo/getVolumeAttributes$ICustomTabsCallback;->onPostMessage()Lo/getVolumeAttributes;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Lo/getLong;)Lo/getVolumeAttributes$onMessageChannelReady;
    .locals 1

    .line 893
    iget-object v0, p0, Lo/getVolumeAttributes$onMessageChannelReady;->ICustomTabsCallback:Lo/getVolumeAttributes$ICustomTabsCallback;

    invoke-virtual {v0, p1}, Lo/getVolumeAttributes$ICustomTabsCallback;->onNavigationEvent(Lo/getLong;)V

    return-object p0
.end method
