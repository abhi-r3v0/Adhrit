.class public Lo/AxisTracker$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UpiSdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AxisTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:J

.field private final asBinder:J

.field private final extraCallback:J

.field private final onMessageChannelReady:J

.field private final onNavigationEvent:Lo/AxisTracker$onMessageChannelReady;

.field private final onPostMessage:J

.field private final onTransact:J


# direct methods
.method public constructor <init>(Lo/AxisTracker$onMessageChannelReady;JJJJJJ)V
    .locals 0

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-object p1, p0, Lo/AxisTracker$ICustomTabsCallback;->onNavigationEvent:Lo/AxisTracker$onMessageChannelReady;

    .line 533
    iput-wide p2, p0, Lo/AxisTracker$ICustomTabsCallback;->onPostMessage:J

    .line 534
    iput-wide p4, p0, Lo/AxisTracker$ICustomTabsCallback;->onMessageChannelReady:J

    .line 535
    iput-wide p6, p0, Lo/AxisTracker$ICustomTabsCallback;->extraCallback:J

    .line 536
    iput-wide p8, p0, Lo/AxisTracker$ICustomTabsCallback;->ICustomTabsCallback:J

    .line 537
    iput-wide p10, p0, Lo/AxisTracker$ICustomTabsCallback;->onTransact:J

    .line 538
    iput-wide p12, p0, Lo/AxisTracker$ICustomTabsCallback;->asBinder:J

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/AxisTracker$ICustomTabsCallback;)J
    .locals 2

    .line 514
    iget-wide v0, p0, Lo/AxisTracker$ICustomTabsCallback;->onTransact:J

    return-wide v0
.end method

.method static synthetic extraCallback(Lo/AxisTracker$ICustomTabsCallback;)J
    .locals 2

    .line 514
    iget-wide v0, p0, Lo/AxisTracker$ICustomTabsCallback;->asBinder:J

    return-wide v0
.end method

.method static synthetic onMessageChannelReady(Lo/AxisTracker$ICustomTabsCallback;)J
    .locals 2

    .line 514
    iget-wide v0, p0, Lo/AxisTracker$ICustomTabsCallback;->onMessageChannelReady:J

    return-wide v0
.end method

.method static synthetic onNavigationEvent(Lo/AxisTracker$ICustomTabsCallback;)J
    .locals 2

    .line 514
    iget-wide v0, p0, Lo/AxisTracker$ICustomTabsCallback;->extraCallback:J

    return-wide v0
.end method

.method static synthetic onPostMessage(Lo/AxisTracker$ICustomTabsCallback;)J
    .locals 2

    .line 514
    iget-wide v0, p0, Lo/AxisTracker$ICustomTabsCallback;->ICustomTabsCallback:J

    return-wide v0
.end method


# virtual methods
.method public ICustomTabsCallback(J)J
    .locals 1

    .line 566
    iget-object v0, p0, Lo/AxisTracker$ICustomTabsCallback;->onNavigationEvent:Lo/AxisTracker$onMessageChannelReady;

    invoke-interface {v0, p1, p2}, Lo/AxisTracker$onMessageChannelReady;->onPostMessage(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
