.class public final Lo/writeString$extraCallback$onPostMessage;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeString$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeString$extraCallback;",
        "Lo/writeString$extraCallback$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 943
    invoke-static {}, Lo/writeString$extraCallback;->asBinder()Lo/writeString$extraCallback;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 936
    invoke-direct {p0}, Lo/writeString$extraCallback$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;)Lo/writeString$extraCallback$onPostMessage;
    .locals 1

    .line 1010
    invoke-virtual {p0}, Lo/writeString$extraCallback$onPostMessage;->copyOnWrite()V

    .line 1011
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeString$extraCallback;

    invoke-static {v0, p1}, Lo/writeString$extraCallback;->ICustomTabsCallback(Lo/writeString$extraCallback;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onPostMessage(Lo/writeEnum$onPostMessage;)Lo/writeString$extraCallback$onPostMessage;
    .locals 1

    .line 1096
    invoke-virtual {p0}, Lo/writeString$extraCallback$onPostMessage;->copyOnWrite()V

    .line 1097
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeString$extraCallback;

    invoke-virtual {p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->build()Lo/getEventAppExecutionSize;

    move-result-object p1

    check-cast p1, Lo/writeEnum;

    invoke-static {v0, p1}, Lo/writeString$extraCallback;->extraCallback(Lo/writeString$extraCallback;Lo/writeEnum;)V

    return-object p0
.end method
