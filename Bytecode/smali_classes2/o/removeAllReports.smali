.class public Lo/removeAllReports;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/finalizeSessionWithNativeEvent;


# instance fields
.field private final baseClock:Lo/finalizeSessionWithNativeEvent;

.field private offset:J


# direct methods
.method public constructor <init>(Lo/finalizeSessionWithNativeEvent;J)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lo/removeAllReports;->offset:J

    .line 22
    iput-object p1, p0, Lo/removeAllReports;->baseClock:Lo/finalizeSessionWithNativeEvent;

    .line 23
    iput-wide p2, p0, Lo/removeAllReports;->offset:J

    return-void
.end method


# virtual methods
.method public millis()J
    .locals 4

    .line 32
    iget-object v0, p0, Lo/removeAllReports;->baseClock:Lo/finalizeSessionWithNativeEvent;

    invoke-interface {v0}, Lo/finalizeSessionWithNativeEvent;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lo/removeAllReports;->offset:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public setOffset(J)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lo/removeAllReports;->offset:J

    return-void
.end method
