.class final Lo/downloadFile;
.super Lo/AxisTracker;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/downloadFile$extraCallback;
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/getWaivers;JJI)V
    .locals 16

    .line 42
    new-instance v1, Lo/AxisTracker$onNavigationEvent;

    invoke-direct {v1}, Lo/AxisTracker$onNavigationEvent;-><init>()V

    new-instance v2, Lo/downloadFile$extraCallback;

    move-object/from16 v0, p1

    move/from16 v3, p6

    invoke-direct {v2, v3, v0}, Lo/downloadFile$extraCallback;-><init>(ILo/getWaivers;)V

    const-wide/16 v3, 0x1

    add-long v7, p2, v3

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0xbc

    const/16 v15, 0x3ac

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v0 .. v15}, Lo/AxisTracker;-><init>(Lo/AxisTracker$onMessageChannelReady;Lo/AxisTracker$ICustomTabsCallback$Stub;JJJJJJI)V

    return-void
.end method
