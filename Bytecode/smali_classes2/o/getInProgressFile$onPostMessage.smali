.class public final Lo/getInProgressFile$onPostMessage;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getInProgressFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/getInProgressFile;",
        "Lo/getInProgressFile$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 316
    invoke-static {}, Lo/getInProgressFile;->asBinder()Lo/getInProgressFile;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 309
    invoke-direct {p0}, Lo/getInProgressFile$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/Iterable;)Lo/getInProgressFile$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lo/writeRawMessageSetExtension;",
            ">;)",
            "Lo/getInProgressFile$onPostMessage;"
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Lo/getInProgressFile$onPostMessage;->copyOnWrite()V

    .line 462
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getInProgressFile;

    invoke-static {v0, p1}, Lo/getInProgressFile;->extraCallback(Lo/getInProgressFile;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final onNavigationEvent(Z)Lo/getInProgressFile$onPostMessage;
    .locals 1

    .line 518
    invoke-virtual {p0}, Lo/getInProgressFile$onPostMessage;->copyOnWrite()V

    .line 519
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getInProgressFile;

    invoke-static {v0, p1}, Lo/getInProgressFile;->onNavigationEvent(Lo/getInProgressFile;Z)V

    return-object p0
.end method
