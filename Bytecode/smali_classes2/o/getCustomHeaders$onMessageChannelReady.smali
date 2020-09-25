.class public final Lo/getCustomHeaders$onMessageChannelReady;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCustomHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/getCustomHeaders;",
        "Lo/getCustomHeaders$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 326
    invoke-static {}, Lo/getCustomHeaders;->onTransact()Lo/getCustomHeaders;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 319
    invoke-direct {p0}, Lo/getCustomHeaders$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)Lo/getCustomHeaders$onMessageChannelReady;
    .locals 1

    .line 404
    invoke-virtual {p0}, Lo/getCustomHeaders$onMessageChannelReady;->copyOnWrite()V

    .line 405
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCustomHeaders;

    invoke-static {v0, p1}, Lo/getCustomHeaders;->ICustomTabsCallback(Lo/getCustomHeaders;I)V

    return-object p0
.end method

.method public final extraCallback(J)Lo/getCustomHeaders$onMessageChannelReady;
    .locals 1

    .line 356
    invoke-virtual {p0}, Lo/getCustomHeaders$onMessageChannelReady;->copyOnWrite()V

    .line 357
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getCustomHeaders;

    invoke-static {v0, p1, p2}, Lo/getCustomHeaders;->ICustomTabsCallback(Lo/getCustomHeaders;J)V

    return-object p0
.end method
