.class final Lo/handleInit;
.super Lo/AxisLogger;
.source ""

# interfaces
.implements Lo/FileUtil$onNavigationEvent;


# direct methods
.method public constructor <init>(JJLo/ApiResponse;)V
    .locals 7

    .line 35
    iget v5, p5, Lo/ApiResponse;->onRelationshipValidationResult:I

    iget v6, p5, Lo/ApiResponse;->ICustomTabsCallback:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lo/AxisLogger;-><init>(JJII)V

    return-void
.end method


# virtual methods
.method public final extraCallback()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final onNavigationEvent(J)J
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lo/AxisLogger;->onPostMessage(J)J

    move-result-wide p1

    return-wide p1
.end method
