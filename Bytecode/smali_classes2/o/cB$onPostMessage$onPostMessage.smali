.class public final Lo/cB$onPostMessage$onPostMessage;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cB$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cB$onPostMessage;",
        "Lo/cB$onPostMessage$onPostMessage;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cB$onPostMessage;->onTransact()Lo/cB$onPostMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/f$a;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lo/cB$onPostMessage$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/String;)Lo/cB$onPostMessage$onPostMessage;
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
    iget-object v0, p0, Lo/cB$onPostMessage$onPostMessage;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cB$onPostMessage;

    invoke-static {v0, p1}, Lo/cB$onPostMessage;->onNavigationEvent(Lo/cB$onPostMessage;Ljava/lang/String;)V

    return-object p0
.end method
