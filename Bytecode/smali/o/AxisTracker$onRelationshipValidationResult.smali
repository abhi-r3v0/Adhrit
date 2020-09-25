.class public final Lo/AxisTracker$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AxisTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onRelationshipValidationResult"
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/AxisTracker$onRelationshipValidationResult;


# instance fields
.field private final extraCallback:J

.field private final onNavigationEvent:J

.field private final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 445
    new-instance v6, Lo/AxisTracker$onRelationshipValidationResult;

    const/4 v1, -0x3

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/AxisTracker$onRelationshipValidationResult;-><init>(IJJ)V

    sput-object v6, Lo/AxisTracker$onRelationshipValidationResult;->onMessageChannelReady:Lo/AxisTracker$onRelationshipValidationResult;

    return-void
.end method

.method private constructor <init>(IJJ)V
    .locals 0

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput p1, p0, Lo/AxisTracker$onRelationshipValidationResult;->onPostMessage:I

    .line 469
    iput-wide p2, p0, Lo/AxisTracker$onRelationshipValidationResult;->onNavigationEvent:J

    .line 470
    iput-wide p4, p0, Lo/AxisTracker$onRelationshipValidationResult;->extraCallback:J

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/AxisTracker$onRelationshipValidationResult;)J
    .locals 2

    .line 424
    iget-wide v0, p0, Lo/AxisTracker$onRelationshipValidationResult;->extraCallback:J

    return-wide v0
.end method

.method static synthetic onNavigationEvent(Lo/AxisTracker$onRelationshipValidationResult;)I
    .locals 0

    .line 424
    iget p0, p0, Lo/AxisTracker$onRelationshipValidationResult;->onPostMessage:I

    return p0
.end method

.method public static onNavigationEvent(J)Lo/AxisTracker$onRelationshipValidationResult;
    .locals 7

    .line 504
    new-instance v6, Lo/AxisTracker$onRelationshipValidationResult;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v6

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Lo/AxisTracker$onRelationshipValidationResult;-><init>(IJJ)V

    return-object v6
.end method

.method public static onNavigationEvent(JJ)Lo/AxisTracker$onRelationshipValidationResult;
    .locals 7

    .line 491
    new-instance v6, Lo/AxisTracker$onRelationshipValidationResult;

    const/4 v1, -0x2

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lo/AxisTracker$onRelationshipValidationResult;-><init>(IJJ)V

    return-object v6
.end method

.method static synthetic onPostMessage(Lo/AxisTracker$onRelationshipValidationResult;)J
    .locals 2

    .line 424
    iget-wide v0, p0, Lo/AxisTracker$onRelationshipValidationResult;->onNavigationEvent:J

    return-wide v0
.end method

.method public static onPostMessage(JJ)Lo/AxisTracker$onRelationshipValidationResult;
    .locals 7

    .line 480
    new-instance v6, Lo/AxisTracker$onRelationshipValidationResult;

    const/4 v1, -0x1

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lo/AxisTracker$onRelationshipValidationResult;-><init>(IJJ)V

    return-object v6
.end method
