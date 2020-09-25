.class public final Lo/cH$onPostMessage$onNavigationEvent;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cH$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cH$onPostMessage;",
        "Lo/cH$onPostMessage$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cH$onPostMessage;->onPostMessage()Lo/cH$onPostMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/cI;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/cH$onPostMessage$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(J)Lo/cH$onPostMessage$onNavigationEvent;
    .locals 1

    .line 10
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 13
    :cond_0
    iget-object v0, p0, Lo/cH$onPostMessage$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onPostMessage;

    invoke-static {v0, p1, p2}, Lo/cH$onPostMessage;->onPostMessage(Lo/cH$onPostMessage;J)V

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Lo/cH$onPostMessage$onNavigationEvent;
    .locals 1

    .line 4
    iget-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lo/fa$onNavigationEvent;->validateRelationship()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lo/fa$onNavigationEvent;->extraCallback:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lo/cH$onPostMessage$onNavigationEvent;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cH$onPostMessage;

    invoke-static {v0, p1}, Lo/cH$onPostMessage;->onNavigationEvent(Lo/cH$onPostMessage;Ljava/lang/String;)V

    return-object p0
.end method
