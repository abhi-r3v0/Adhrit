.class public abstract Lo/AxisTracker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AxisTracker$ICustomTabsCallback;,
        Lo/AxisTracker$onRelationshipValidationResult;,
        Lo/AxisTracker$onPostMessage;,
        Lo/AxisTracker$onMessageChannelReady;,
        Lo/AxisTracker$onNavigationEvent;,
        Lo/AxisTracker$extraCallback;,
        Lo/AxisTracker$ICustomTabsCallback$Stub;
    }
.end annotation


# instance fields
.field protected final extraCallback:Lo/AxisTracker$ICustomTabsCallback$Stub;

.field protected onMessageChannelReady:Lo/AxisTracker$onPostMessage;

.field private final onNavigationEvent:I

.field protected final onPostMessage:Lo/AxisTracker$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Lo/AxisTracker$onMessageChannelReady;Lo/AxisTracker$ICustomTabsCallback$Stub;JJJJJJI)V
    .locals 16

    move-object/from16 v0, p0

    .line 149
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    .line 150
    iput-object v1, v0, Lo/AxisTracker;->extraCallback:Lo/AxisTracker$ICustomTabsCallback$Stub;

    move/from16 v1, p15

    .line 151
    iput v1, v0, Lo/AxisTracker;->onNavigationEvent:I

    .line 152
    new-instance v15, Lo/AxisTracker$ICustomTabsCallback;

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Lo/AxisTracker$ICustomTabsCallback;-><init>(Lo/AxisTracker$onMessageChannelReady;JJJJJJ)V

    iput-object v15, v0, Lo/AxisTracker;->onPostMessage:Lo/AxisTracker$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/UpiSdkCallback;
    .locals 1

    .line 165
    iget-object v0, p0, Lo/AxisTracker;->onPostMessage:Lo/AxisTracker$ICustomTabsCallback;

    return-object v0
.end method

.method protected final extraCallback(ZJ)V
    .locals 1

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lo/AxisTracker;->onMessageChannelReady:Lo/AxisTracker$onPostMessage;

    .line 262
    iget-object v0, p0, Lo/AxisTracker;->extraCallback:Lo/AxisTracker$ICustomTabsCallback$Stub;

    invoke-interface {v0}, Lo/AxisTracker$ICustomTabsCallback$Stub;->onNavigationEvent()V

    .line 263
    invoke-virtual {p0, p1, p2, p3}, Lo/AxisTracker;->onPostMessage(ZJ)V

    return-void
.end method

.method public final extraCallback()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lo/AxisTracker;->onMessageChannelReady:Lo/AxisTracker$onPostMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final onMessageChannelReady(Lo/Event$Action;JLo/SessionInfo;)I
    .locals 2

    .line 282
    invoke-interface {p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 285
    :cond_0
    iput-wide p2, p4, Lo/SessionInfo;->onNavigationEvent:J

    const/4 p1, 0x1

    return p1
.end method

.method protected onMessageChannelReady(J)Lo/AxisTracker$onPostMessage;
    .locals 17

    move-object/from16 v0, p0

    .line 250
    new-instance v16, Lo/AxisTracker$onPostMessage;

    iget-object v1, v0, Lo/AxisTracker;->onPostMessage:Lo/AxisTracker$ICustomTabsCallback;

    move-wide/from16 v2, p1

    .line 252
    invoke-virtual {v1, v2, v3}, Lo/AxisTracker$ICustomTabsCallback;->ICustomTabsCallback(J)J

    move-result-wide v4

    iget-object v1, v0, Lo/AxisTracker;->onPostMessage:Lo/AxisTracker$ICustomTabsCallback;

    .line 253
    invoke-static {v1}, Lo/AxisTracker$ICustomTabsCallback;->onMessageChannelReady(Lo/AxisTracker$ICustomTabsCallback;)J

    move-result-wide v6

    iget-object v1, v0, Lo/AxisTracker;->onPostMessage:Lo/AxisTracker$ICustomTabsCallback;

    .line 254
    invoke-static {v1}, Lo/AxisTracker$ICustomTabsCallback;->onNavigationEvent(Lo/AxisTracker$ICustomTabsCallback;)J

    move-result-wide v8

    iget-object v1, v0, Lo/AxisTracker;->onPostMessage:Lo/AxisTracker$ICustomTabsCallback;

    .line 255
    invoke-static {v1}, Lo/AxisTracker$ICustomTabsCallback;->onPostMessage(Lo/AxisTracker$ICustomTabsCallback;)J

    move-result-wide v10

    iget-object v1, v0, Lo/AxisTracker;->onPostMessage:Lo/AxisTracker$ICustomTabsCallback;

    .line 256
    invoke-static {v1}, Lo/AxisTracker$ICustomTabsCallback;->ICustomTabsCallback(Lo/AxisTracker$ICustomTabsCallback;)J

    move-result-wide v12

    iget-object v1, v0, Lo/AxisTracker;->onPostMessage:Lo/AxisTracker$ICustomTabsCallback;

    .line 257
    invoke-static {v1}, Lo/AxisTracker$ICustomTabsCallback;->extraCallback(Lo/AxisTracker$ICustomTabsCallback;)J

    move-result-wide v14

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lo/AxisTracker$onPostMessage;-><init>(JJJJJJJ)V

    return-object v16
.end method

.method public final onNavigationEvent(J)V
    .locals 3

    .line 174
    iget-object v0, p0, Lo/AxisTracker;->onMessageChannelReady:Lo/AxisTracker$onPostMessage;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo/AxisTracker$onPostMessage;->ICustomTabsCallback(Lo/AxisTracker$onPostMessage;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-virtual {p0, p1, p2}, Lo/AxisTracker;->onMessageChannelReady(J)Lo/AxisTracker$onPostMessage;

    move-result-object p1

    iput-object p1, p0, Lo/AxisTracker;->onMessageChannelReady:Lo/AxisTracker$onPostMessage;

    return-void
.end method

.method public onPostMessage(Lo/Event$Action;Lo/SessionInfo;Lo/AxisTracker$extraCallback;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lo/AxisTracker;->extraCallback:Lo/AxisTracker$ICustomTabsCallback$Stub;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AxisTracker$ICustomTabsCallback$Stub;

    .line 204
    :goto_0
    iget-object v1, p0, Lo/AxisTracker;->onMessageChannelReady:Lo/AxisTracker$onPostMessage;

    invoke-static {v1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AxisTracker$onPostMessage;

    .line 205
    invoke-static {v1}, Lo/AxisTracker$onPostMessage;->onNavigationEvent(Lo/AxisTracker$onPostMessage;)J

    move-result-wide v2

    .line 206
    invoke-static {v1}, Lo/AxisTracker$onPostMessage;->extraCallback(Lo/AxisTracker$onPostMessage;)J

    move-result-wide v4

    .line 207
    invoke-static {v1}, Lo/AxisTracker$onPostMessage;->onPostMessage(Lo/AxisTracker$onPostMessage;)J

    move-result-wide v6

    sub-long/2addr v4, v2

    .line 209
    iget v8, p0, Lo/AxisTracker;->onNavigationEvent:I

    int-to-long v8, v8

    const/4 v10, 0x0

    cmp-long v11, v4, v8

    if-gtz v11, :cond_0

    .line 211
    invoke-virtual {p0, v10, v2, v3}, Lo/AxisTracker;->extraCallback(ZJ)V

    .line 212
    invoke-virtual {p0, p1, v2, v3, p2}, Lo/AxisTracker;->onMessageChannelReady(Lo/Event$Action;JLo/SessionInfo;)I

    move-result p1

    return p1

    .line 214
    :cond_0
    invoke-virtual {p0, p1, v6, v7}, Lo/AxisTracker;->onPostMessage(Lo/Event$Action;J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 215
    invoke-virtual {p0, p1, v6, v7, p2}, Lo/AxisTracker;->onMessageChannelReady(Lo/Event$Action;JLo/SessionInfo;)I

    move-result p1

    return p1

    .line 218
    :cond_1
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    .line 221
    invoke-static {v1}, Lo/AxisTracker$onPostMessage;->onMessageChannelReady(Lo/AxisTracker$onPostMessage;)J

    move-result-wide v2

    .line 220
    invoke-interface {v0, p1, v2, v3, p3}, Lo/AxisTracker$ICustomTabsCallback$Stub;->ICustomTabsCallback(Lo/Event$Action;JLo/AxisTracker$extraCallback;)Lo/AxisTracker$onRelationshipValidationResult;

    move-result-object v2

    .line 223
    invoke-static {v2}, Lo/AxisTracker$onRelationshipValidationResult;->onNavigationEvent(Lo/AxisTracker$onRelationshipValidationResult;)I

    move-result v3

    const/4 v4, -0x3

    if-eq v3, v4, :cond_5

    const/4 v4, -0x2

    if-eq v3, v4, :cond_4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    if-nez v3, :cond_2

    const/4 p3, 0x1

    .line 234
    invoke-static {v2}, Lo/AxisTracker$onRelationshipValidationResult;->onMessageChannelReady(Lo/AxisTracker$onRelationshipValidationResult;)J

    move-result-wide v0

    .line 233
    invoke-virtual {p0, p3, v0, v1}, Lo/AxisTracker;->extraCallback(ZJ)V

    .line 235
    invoke-static {v2}, Lo/AxisTracker$onRelationshipValidationResult;->onMessageChannelReady(Lo/AxisTracker$onRelationshipValidationResult;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lo/AxisTracker;->onPostMessage(Lo/Event$Action;J)Z

    .line 237
    invoke-static {v2}, Lo/AxisTracker$onRelationshipValidationResult;->onMessageChannelReady(Lo/AxisTracker$onRelationshipValidationResult;)J

    move-result-wide v0

    .line 236
    invoke-virtual {p0, p1, v0, v1, p2}, Lo/AxisTracker;->onMessageChannelReady(Lo/Event$Action;JLo/SessionInfo;)I

    move-result p1

    return p1

    .line 244
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid case"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_3
    invoke-static {v2}, Lo/AxisTracker$onRelationshipValidationResult;->onPostMessage(Lo/AxisTracker$onRelationshipValidationResult;)J

    move-result-wide v3

    invoke-static {v2}, Lo/AxisTracker$onRelationshipValidationResult;->onMessageChannelReady(Lo/AxisTracker$onRelationshipValidationResult;)J

    move-result-wide v5

    .line 225
    invoke-static {v1, v3, v4, v5, v6}, Lo/AxisTracker$onPostMessage;->onMessageChannelReady(Lo/AxisTracker$onPostMessage;JJ)V

    goto :goto_0

    .line 230
    :cond_4
    invoke-static {v2}, Lo/AxisTracker$onRelationshipValidationResult;->onPostMessage(Lo/AxisTracker$onRelationshipValidationResult;)J

    move-result-wide v3

    invoke-static {v2}, Lo/AxisTracker$onRelationshipValidationResult;->onMessageChannelReady(Lo/AxisTracker$onRelationshipValidationResult;)J

    move-result-wide v5

    .line 229
    invoke-static {v1, v3, v4, v5, v6}, Lo/AxisTracker$onPostMessage;->extraCallback(Lo/AxisTracker$onPostMessage;JJ)V

    goto/16 :goto_0

    .line 241
    :cond_5
    invoke-virtual {p0, v10, v6, v7}, Lo/AxisTracker;->extraCallback(ZJ)V

    .line 242
    invoke-virtual {p0, p1, v6, v7, p2}, Lo/AxisTracker;->onMessageChannelReady(Lo/Event$Action;JLo/SessionInfo;)I

    move-result p1

    return p1
.end method

.method protected onPostMessage(ZJ)V
    .locals 0

    return-void
.end method

.method protected final onPostMessage(Lo/Event$Action;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 272
    invoke-interface {p1}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x40000

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    long-to-int p3, p2

    .line 274
    invoke-interface {p1, p3}, Lo/Event$Action;->extraCallback(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
