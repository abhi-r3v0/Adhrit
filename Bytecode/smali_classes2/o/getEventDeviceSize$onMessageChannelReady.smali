.class public final Lo/getEventDeviceSize$onMessageChannelReady;
.super Lo/getEventAppExecutionSize$onNavigationEvent;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getEventDeviceSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "Lo/getEventDeviceSize;",
        "Lo/getEventDeviceSize$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 155
    invoke-static {}, Lo/getEventDeviceSize;->ICustomTabsCallback$Stub()Lo/getEventDeviceSize;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/getEventAppExecutionSize$onNavigationEvent;-><init>(Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 148
    invoke-direct {p0}, Lo/getEventDeviceSize$onMessageChannelReady;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(I)Lo/getEventDeviceSize$onMessageChannelReady;
    .locals 1

    .line 181
    invoke-virtual {p0}, Lo/getEventDeviceSize$onMessageChannelReady;->copyOnWrite()V

    .line 182
    iget-object v0, p0, Lo/getEventAppExecutionSize$onNavigationEvent;->instance:Lo/getEventAppExecutionSize;

    check-cast v0, Lo/getEventDeviceSize;

    invoke-static {v0, p1}, Lo/getEventDeviceSize;->extraCallback(Lo/getEventDeviceSize;I)V

    return-object p0
.end method
