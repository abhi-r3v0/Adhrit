.class final Lo/CreateReportSpiCall$extraCallback;
.super Lo/CreateReportSpiCall$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CreateReportSpiCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    .line 831
    invoke-direct {p0, p1}, Lo/CreateReportSpiCall$onNavigationEvent;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;J)F
    .locals 1

    .line 1554
    iget-object v0, p0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    .line 902
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final ICustomTabsCallback(Ljava/lang/Object;JF)V
    .locals 1

    .line 907
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    .line 1558
    iget-object v0, p0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/Object;J)B
    .locals 1

    .line 866
    sget-boolean v0, Lo/CreateReportSpiCall;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    .line 867
    invoke-static {p1, p2, p3}, Lo/CreateReportSpiCall;->onRelationshipValidationResult(Ljava/lang/Object;J)B

    move-result p1

    return p1

    .line 869
    :cond_0
    invoke-static {p1, p2, p3}, Lo/CreateReportSpiCall;->asInterface(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public final extraCallback(Ljava/lang/Object;JD)V
    .locals 6

    .line 917
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 1566
    iget-object v0, p0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;J)D
    .locals 1

    .line 1562
    iget-object v0, p0, Lo/CreateReportSpiCall$onNavigationEvent;->onPostMessage:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    .line 912
    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public final onMessageChannelReady(J[BJJ)V
    .locals 0

    .line 922
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;JZ)V
    .locals 1

    .line 893
    sget-boolean v0, Lo/CreateReportSpiCall;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    .line 894
    invoke-static {p1, p2, p3, p4}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JZ)V

    return-void

    .line 896
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lo/CreateReportSpiCall;->ICustomTabsCallback(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Object;JB)V
    .locals 1

    .line 875
    sget-boolean v0, Lo/CreateReportSpiCall;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    .line 876
    invoke-static {p1, p2, p3, p4}, Lo/CreateReportSpiCall;->onNavigationEvent(Ljava/lang/Object;JB)V

    return-void

    .line 878
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lo/CreateReportSpiCall;->onPostMessage(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final onPostMessage(J)B
    .locals 0

    .line 836
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final onPostMessage(Ljava/lang/Object;J)Z
    .locals 1

    .line 884
    sget-boolean v0, Lo/CreateReportSpiCall;->ICustomTabsCallback:Z

    if-eqz v0, :cond_0

    .line 885
    invoke-static {p1, p2, p3}, Lo/CreateReportSpiCall;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 887
    :cond_0
    invoke-static {p1, p2, p3}, Lo/CreateReportSpiCall;->onTransact(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method
