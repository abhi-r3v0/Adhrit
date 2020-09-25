.class public final Lo/cB$onMessageChannelReady$onMessageChannelReady;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cB$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cB$onMessageChannelReady;",
        "Lo/cB$onMessageChannelReady$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cB$onMessageChannelReady;->ICustomTabsCallback$Stub()Lo/cB$onMessageChannelReady;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/f$a;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lo/cB$onMessageChannelReady$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)Lo/cB$onMessageChannelReady$onMessageChannelReady;
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
    iget-object v0, p0, Lo/cB$onMessageChannelReady$onMessageChannelReady;->onPostMessage:Lo/fa;

    check-cast v0, Lo/cB$onMessageChannelReady;

    invoke-static {v0, p1}, Lo/cB$onMessageChannelReady;->ICustomTabsCallback(Lo/cB$onMessageChannelReady;Ljava/lang/String;)V

    return-object p0
.end method
