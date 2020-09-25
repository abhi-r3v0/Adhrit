.class final Lo/downloadFile$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AxisTracker$ICustomTabsCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/downloadFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field private final extraCallback:I

.field private final onMessageChannelReady:Lo/getWaivers;

.field private final onNavigationEvent:Lo/DreamAppGlideModule;


# direct methods
.method public constructor <init>(ILo/getWaivers;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lo/downloadFile$extraCallback;->extraCallback:I

    .line 71
    iput-object p2, p0, Lo/downloadFile$extraCallback;->onMessageChannelReady:Lo/getWaivers;

    .line 72
    new-instance p1, Lo/DreamAppGlideModule;

    invoke-direct {p1}, Lo/DreamAppGlideModule;-><init>()V

    iput-object p1, p0, Lo/downloadFile$extraCallback;->onNavigationEvent:Lo/DreamAppGlideModule;

    return-void
.end method

.method private onNavigationEvent(Lo/DreamAppGlideModule;JJ)Lo/AxisTracker$onRelationshipValidationResult;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    .line 90
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v4

    const-wide/16 v5, -0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v9, v5

    move-wide v11, v7

    .line 96
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v13

    const/16 v14, 0xbc

    if-lt v13, v14, :cond_4

    .line 97
    iget-object v13, v1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 98
    invoke-virtual/range {p1 .. p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v14

    invoke-static {v13, v14, v4}, Lo/trackException;->onPostMessage([BII)I

    move-result v13

    add-int/lit16 v14, v13, 0xbc

    if-gt v14, v4, :cond_4

    .line 103
    iget v5, v0, Lo/downloadFile$extraCallback;->extraCallback:I

    invoke-static {v1, v13, v5}, Lo/trackException;->ICustomTabsCallback(Lo/DreamAppGlideModule;II)J

    move-result-wide v5

    cmp-long v15, v5, v7

    if-eqz v15, :cond_3

    .line 105
    iget-object v15, v0, Lo/downloadFile$extraCallback;->onMessageChannelReady:Lo/getWaivers;

    invoke-virtual {v15, v5, v6}, Lo/getWaivers;->extraCallback(J)J

    move-result-wide v5

    cmp-long v15, v5, p2

    if-lez v15, :cond_1

    cmp-long v1, v11, v7

    if-nez v1, :cond_0

    .line 109
    invoke-static {v5, v6, v2, v3}, Lo/AxisTracker$onRelationshipValidationResult;->onPostMessage(JJ)Lo/AxisTracker$onRelationshipValidationResult;

    move-result-object v1

    return-object v1

    :cond_0
    add-long v1, v2, v9

    .line 112
    invoke-static {v1, v2}, Lo/AxisTracker$onRelationshipValidationResult;->onNavigationEvent(J)Lo/AxisTracker$onRelationshipValidationResult;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/32 v9, 0x186a0

    add-long/2addr v9, v5

    cmp-long v11, v9, p2

    if-lez v11, :cond_2

    int-to-long v4, v13

    add-long v1, v2, v4

    .line 117
    invoke-static {v1, v2}, Lo/AxisTracker$onRelationshipValidationResult;->onNavigationEvent(J)Lo/AxisTracker$onRelationshipValidationResult;

    move-result-object v1

    return-object v1

    :cond_2
    int-to-long v9, v13

    move-wide v11, v5

    .line 123
    :cond_3
    invoke-virtual {v1, v14}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    int-to-long v5, v14

    goto :goto_0

    :cond_4
    cmp-long v1, v11, v7

    if-eqz v1, :cond_5

    add-long v1, v2, v5

    .line 129
    invoke-static {v11, v12, v1, v2}, Lo/AxisTracker$onRelationshipValidationResult;->onNavigationEvent(JJ)Lo/AxisTracker$onRelationshipValidationResult;

    move-result-object v1

    return-object v1

    .line 132
    :cond_5
    sget-object v1, Lo/AxisTracker$onRelationshipValidationResult;->onMessageChannelReady:Lo/AxisTracker$onRelationshipValidationResult;

    return-object v1
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/Event$Action;JLo/AxisTracker$extraCallback;)Lo/AxisTracker$onRelationshipValidationResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 79
    invoke-interface {p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v4

    .line 80
    invoke-interface {p1}, Lo/Event$Action;->onPostMessage()J

    move-result-wide v0

    sub-long/2addr v0, v4

    const-wide/32 v2, 0x1b8a0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p4, v0

    .line 82
    iget-object v0, p0, Lo/downloadFile$extraCallback;->onNavigationEvent:Lo/DreamAppGlideModule;

    invoke-virtual {v0, p4}, Lo/DreamAppGlideModule;->extraCallback(I)V

    .line 83
    iget-object v0, p0, Lo/downloadFile$extraCallback;->onNavigationEvent:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p4}, Lo/Event$Action;->extraCallback([BII)V

    .line 85
    iget-object v1, p0, Lo/downloadFile$extraCallback;->onNavigationEvent:Lo/DreamAppGlideModule;

    move-object v0, p0

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lo/downloadFile$extraCallback;->onNavigationEvent(Lo/DreamAppGlideModule;JJ)Lo/AxisTracker$onRelationshipValidationResult;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 138
    iget-object v0, p0, Lo/downloadFile$extraCallback;->onNavigationEvent:Lo/DreamAppGlideModule;

    sget-object v1, Lo/ThirdPartyAuthorizeRequest;->asBinder:[B

    invoke-virtual {v0, v1}, Lo/DreamAppGlideModule;->extraCallback([B)V

    return-void
.end method
