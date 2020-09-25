.class final Lo/CreateReportSpiCall$ICustomTabsCallback;
.super Lo/CreateReportSpiCall$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CreateReportSpiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    .line 619
    invoke-direct {p0, p1}, Lo/CreateReportSpiCall$onNavigationEvent;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;J)F
    .locals 1

    .line 674
    iget-object v0, p0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result p1

    return p1
.end method

.method public final ICustomTabsCallback(Ljava/lang/Object;JF)V
    .locals 1

    .line 679
    iget-object v0, p0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/Object;J)B
    .locals 1

    .line 654
    iget-object v0, p0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public final extraCallback(Ljava/lang/Object;JD)V
    .locals 6

    .line 689
    iget-object v0, p0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;J)D
    .locals 1

    .line 684
    iget-object v0, p0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public final onMessageChannelReady(J[BJJ)V
    .locals 10

    move-object v0, p0

    .line 694
    iget-object v1, v0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    sget-wide v6, Lo/CreateReportSpiCall;->onPostMessage:J

    const/4 v2, 0x0

    move-wide v3, p1

    move-object v5, p3

    move-wide/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;JZ)V
    .locals 1

    .line 669
    iget-object v0, p0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Object;JB)V
    .locals 1

    .line 659
    iget-object v0, p0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final onPostMessage(J)B
    .locals 1

    .line 624
    iget-object v0, p0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    return p1
.end method

.method public final onPostMessage(Ljava/lang/Object;J)Z
    .locals 1

    .line 664
    iget-object v0, p0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method
