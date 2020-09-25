.class public final Lo/setAdSize$onPostMessage$extraCallback;
.super Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAdSize$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback<",
        "Lo/setAdSize$onPostMessage;",
        "Lo/setAdSize$onPostMessage$extraCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/setAdSize$onPostMessage;->onPostMessage()Lo/setAdSize$onPostMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;-><init>(Lo/isPlayServicesPossiblyUpdating;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/EGLSurfaceTexture$GlException;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/setAdSize$onPostMessage$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)Lo/setAdSize$onPostMessage$extraCallback;
    .locals 1

    .line 10
    iget-boolean v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->extraCallback()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onPostMessage:Z

    .line 13
    :cond_0
    iget-object v0, p0, Lo/setAdSize$onPostMessage$extraCallback;->onNavigationEvent:Lo/isPlayServicesPossiblyUpdating;

    check-cast v0, Lo/setAdSize$onPostMessage;

    invoke-static {v0, p1}, Lo/setAdSize$onPostMessage;->onMessageChannelReady(Lo/setAdSize$onPostMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/setAdSize$onPostMessage$extraCallback;
    .locals 1

    .line 4
    iget-boolean v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->extraCallback()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onPostMessage:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lo/setAdSize$onPostMessage$extraCallback;->onNavigationEvent:Lo/isPlayServicesPossiblyUpdating;

    check-cast v0, Lo/setAdSize$onPostMessage;

    invoke-static {v0, p1}, Lo/setAdSize$onPostMessage;->ICustomTabsCallback(Lo/setAdSize$onPostMessage;Ljava/lang/String;)V

    return-object p0
.end method
