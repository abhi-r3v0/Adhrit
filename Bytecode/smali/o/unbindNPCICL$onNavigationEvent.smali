.class final Lo/unbindNPCICL$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/unbindNPCICL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final onMessageChannelReady:I

.field private final onNavigationEvent:J

.field private final onPostMessage:I


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .line 1445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1446
    iput p1, p0, Lo/unbindNPCICL$onNavigationEvent;->onMessageChannelReady:I

    .line 1447
    iput-wide p2, p0, Lo/unbindNPCICL$onNavigationEvent;->onNavigationEvent:J

    .line 1448
    iput p4, p0, Lo/unbindNPCICL$onNavigationEvent;->onPostMessage:I

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/unbindNPCICL$onNavigationEvent;)J
    .locals 2

    .line 1439
    iget-wide v0, p0, Lo/unbindNPCICL$onNavigationEvent;->onNavigationEvent:J

    return-wide v0
.end method

.method static synthetic onNavigationEvent(Lo/unbindNPCICL$onNavigationEvent;)I
    .locals 0

    .line 1439
    iget p0, p0, Lo/unbindNPCICL$onNavigationEvent;->onPostMessage:I

    return p0
.end method

.method static synthetic onPostMessage(Lo/unbindNPCICL$onNavigationEvent;)I
    .locals 0

    .line 1439
    iget p0, p0, Lo/unbindNPCICL$onNavigationEvent;->onMessageChannelReady:I

    return p0
.end method
