.class public final Lo/ByteString$Output$onNavigationEvent;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ByteString$Output;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/ByteString$Output;",
        "Lo/ByteString$Output$onNavigationEvent;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 668
    invoke-static {}, Lo/ByteString$Output;->asInterface()Lo/ByteString$Output;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 661
    invoke-direct {p0}, Lo/ByteString$Output$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)Lo/ByteString$Output$onNavigationEvent;
    .locals 1

    .line 856
    invoke-virtual {p0}, Lo/ByteString$Output$onNavigationEvent;->copyOnWrite()V

    .line 857
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/ByteString$Output;

    invoke-static {v0, p1}, Lo/ByteString$Output;->onNavigationEvent(Lo/ByteString$Output;Ljava/lang/String;)V

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/ByteString$Output$onNavigationEvent;
    .locals 1

    .line 723
    invoke-virtual {p0}, Lo/ByteString$Output$onNavigationEvent;->copyOnWrite()V

    .line 724
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/ByteString$Output;

    invoke-static {v0, p1}, Lo/ByteString$Output;->onMessageChannelReady(Lo/ByteString$Output;Ljava/lang/String;)V

    return-object p0
.end method
