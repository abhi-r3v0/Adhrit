.class public final Lo/writeEnum$onTransact$onPostMessage;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeEnum$onTransact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeEnum$onTransact;",
        "Lo/writeEnum$onTransact$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4110
    invoke-static {}, Lo/writeEnum$onTransact;->onNavigationEvent()Lo/writeEnum$onTransact;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 4103
    invoke-direct {p0}, Lo/writeEnum$onTransact$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/writeEnum$asBinder;)Lo/writeEnum$onTransact$onPostMessage;
    .locals 1

    .line 4144
    invoke-virtual {p0}, Lo/writeEnum$onTransact$onPostMessage;->copyOnWrite()V

    .line 4145
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum$onTransact;

    invoke-static {v0, p1}, Lo/writeEnum$onTransact;->onNavigationEvent(Lo/writeEnum$onTransact;Lo/writeEnum$asBinder;)V

    return-object p0
.end method

.method public final onMessageChannelReady(Lo/writeEnum$onNavigationEvent;)Lo/writeEnum$onTransact$onPostMessage;
    .locals 1

    .line 4233
    invoke-virtual {p0}, Lo/writeEnum$onTransact$onPostMessage;->copyOnWrite()V

    .line 4234
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum$onTransact;

    invoke-static {v0, p1}, Lo/writeEnum$onTransact;->onPostMessage(Lo/writeEnum$onTransact;Lo/writeEnum$onNavigationEvent;)V

    return-object p0
.end method
