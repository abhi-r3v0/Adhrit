.class public final Lo/writeUInt64$onPostMessage;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeUInt64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeUInt64;",
        "Lo/writeUInt64$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 261
    invoke-static {}, Lo/writeUInt64;->onRelationshipValidationResult()Lo/writeUInt64;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 254
    invoke-direct {p0}, Lo/writeUInt64$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/String;)Lo/writeUInt64$onPostMessage;
    .locals 1

    .line 351
    invoke-virtual {p0}, Lo/writeUInt64$onPostMessage;->copyOnWrite()V

    .line 352
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeUInt64;

    invoke-static {v0, p1}, Lo/writeUInt64;->onNavigationEvent(Lo/writeUInt64;Ljava/lang/String;)V

    return-object p0
.end method
