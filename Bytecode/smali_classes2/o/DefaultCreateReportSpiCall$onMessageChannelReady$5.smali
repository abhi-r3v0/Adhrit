.class final enum Lo/DefaultCreateReportSpiCall$onMessageChannelReady$5;
.super Lo/DefaultCreateReportSpiCall$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DefaultCreateReportSpiCall$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/DefaultCreateReportSpiCall$extraCallback;)V
    .locals 6

    const/16 v2, 0x9

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 126
    invoke-direct/range {v0 .. v5}, Lo/DefaultCreateReportSpiCall$onMessageChannelReady;-><init>(Ljava/lang/String;ILo/DefaultCreateReportSpiCall$extraCallback;IB)V

    return-void
.end method
