.class public abstract Lo/getMcc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/component2;


# instance fields
.field private ICustomTabsCallback:J

.field private final onMessageChannelReady:J

.field private final onNavigationEvent:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lo/getMcc;->onNavigationEvent:J

    .line 40
    iput-wide p3, p0, Lo/getMcc;->onMessageChannelReady:J

    .line 41
    invoke-virtual {p0}, Lo/getMcc;->onNavigationEvent()V

    return-void
.end method


# virtual methods
.method public onNavigationEvent()V
    .locals 4

    .line 57
    iget-wide v0, p0, Lo/getMcc;->onNavigationEvent:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/getMcc;->ICustomTabsCallback:J

    return-void
.end method
