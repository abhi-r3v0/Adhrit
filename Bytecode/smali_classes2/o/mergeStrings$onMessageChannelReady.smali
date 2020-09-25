.class public final Lo/mergeStrings$onMessageChannelReady;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/mergeStrings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/mergeStrings;",
        "Lo/mergeStrings$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 199
    invoke-static {}, Lo/mergeStrings;->onTransact()Lo/mergeStrings;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 192
    invoke-direct {p0}, Lo/mergeStrings$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(D)Lo/mergeStrings$onMessageChannelReady;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lo/mergeStrings$onMessageChannelReady;->copyOnWrite()V

    .line 226
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/mergeStrings;

    invoke-static {v0, p1, p2}, Lo/mergeStrings;->ICustomTabsCallback(Lo/mergeStrings;D)V

    return-object p0
.end method

.method public final extraCallback(D)Lo/mergeStrings$onMessageChannelReady;
    .locals 1

    .line 265
    invoke-virtual {p0}, Lo/mergeStrings$onMessageChannelReady;->copyOnWrite()V

    .line 266
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/mergeStrings;

    invoke-static {v0, p1, p2}, Lo/mergeStrings;->extraCallback(Lo/mergeStrings;D)V

    return-object p0
.end method
