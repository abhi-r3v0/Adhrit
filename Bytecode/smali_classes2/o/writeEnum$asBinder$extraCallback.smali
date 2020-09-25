.class public final Lo/writeEnum$asBinder$extraCallback;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeEnum$asBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/writeEnum$asBinder;",
        "Lo/writeEnum$asBinder$extraCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4499
    invoke-static {}, Lo/writeEnum$asBinder;->onRelationshipValidationResult()Lo/writeEnum$asBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 4492
    invoke-direct {p0}, Lo/writeEnum$asBinder$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/String;)Lo/writeEnum$asBinder$extraCallback;
    .locals 1

    .line 4527
    invoke-virtual {p0}, Lo/writeEnum$asBinder$extraCallback;->copyOnWrite()V

    .line 4528
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/writeEnum$asBinder;

    invoke-static {v0, p1}, Lo/writeEnum$asBinder;->extraCallback(Lo/writeEnum$asBinder;Ljava/lang/String;)V

    return-object p0
.end method
