.class public final Lo/cD$onPostMessage$ICustomTabsCallback;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cD$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cD$onPostMessage;",
        "Lo/cD$onPostMessage$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cD$onPostMessage;->asBinder()Lo/cD$onPostMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/fS;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/cD$onPostMessage$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lo/cD$onPostMessage$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cD$onPostMessage;

    invoke-virtual {v0}, Lo/cD$onPostMessage;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback()Z
    .locals 1

    .line 11
    iget-object v0, p0, Lo/cD$onPostMessage$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cD$onPostMessage;

    invoke-virtual {v0}, Lo/cD$onPostMessage;->onNavigationEvent()Z

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Lo/cD$onPostMessage$ICustomTabsCallback;
    .locals 1

    .line 5
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lo/cD$onPostMessage$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cD$onPostMessage;

    invoke-static {v0, p1}, Lo/cD$onPostMessage;->extraCallback(Lo/cD$onPostMessage;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 10
    iget-object v0, p0, Lo/cD$onPostMessage$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cD$onPostMessage;

    invoke-virtual {v0}, Lo/cD$onPostMessage;->extraCallback()Z

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 12
    iget-object v0, p0, Lo/cD$onPostMessage$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cD$onPostMessage;

    invoke-virtual {v0}, Lo/cD$onPostMessage;->onMessageChannelReady()Z

    move-result v0

    return v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 13
    iget-object v0, p0, Lo/cD$onPostMessage$ICustomTabsCallback;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cD$onPostMessage;

    invoke-virtual {v0}, Lo/cD$onPostMessage;->ICustomTabsCallback()I

    move-result v0

    return v0
.end method
