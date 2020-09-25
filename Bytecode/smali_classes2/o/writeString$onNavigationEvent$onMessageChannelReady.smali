.class public final Lo/writeString$onNavigationEvent$onMessageChannelReady;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeString$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeString$onNavigationEvent;",
        "Lo/writeString$onNavigationEvent$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 342
    invoke-static {}, Lo/writeString$onNavigationEvent;->onTransact()Lo/writeString$onNavigationEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 335
    invoke-direct {p0}, Lo/writeString$onNavigationEvent$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)Lo/writeString$onNavigationEvent$onMessageChannelReady;
    .locals 1

    .line 444
    invoke-virtual {p0}, Lo/writeString$onNavigationEvent$onMessageChannelReady;->copyOnWrite()V

    .line 445
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeString$onNavigationEvent;

    invoke-static {v0, p1}, Lo/writeString$onNavigationEvent;->extraCallback(Lo/writeString$onNavigationEvent;Ljava/lang/String;)V

    return-object p0
.end method
