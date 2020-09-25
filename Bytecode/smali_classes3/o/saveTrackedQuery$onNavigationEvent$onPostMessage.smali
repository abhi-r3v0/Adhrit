.class public final Lo/saveTrackedQuery$onNavigationEvent$onPostMessage;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/saveTrackedQuery$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/saveTrackedQuery$onNavigationEvent;",
        "Lo/saveTrackedQuery$onNavigationEvent$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 232
    invoke-static {}, Lo/saveTrackedQuery$onNavigationEvent;->ICustomTabsCallback()Lo/saveTrackedQuery$onNavigationEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 225
    invoke-direct {p0}, Lo/saveTrackedQuery$onNavigationEvent$onPostMessage;-><init>()V

    return-void
.end method
