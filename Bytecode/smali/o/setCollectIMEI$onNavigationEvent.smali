.class final Lo/setCollectIMEI$onNavigationEvent;
.super Lo/setAdditionalData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setCollectIMEI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAdditionalData<",
        "Lo/getCardBackgroundColor;",
        "Lo/getCardBackgroundColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Z

.field private final extraCallback:Lo/getReferrerClickTimestampSeconds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/invalidateSpanInfo;

.field private final onPostMessage:Z


# direct methods
.method public constructor <init>(Lo/waitForCustomerUserId;Lo/getReferrerClickTimestampSeconds;Lo/invalidateSpanInfo;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getCardBackgroundColor;",
            ">;",
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lo/invalidateSpanInfo;",
            "ZZ)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1}, Lo/setAdditionalData;-><init>(Lo/waitForCustomerUserId;)V

    .line 130
    iput-object p2, p0, Lo/setCollectIMEI$onNavigationEvent;->extraCallback:Lo/getReferrerClickTimestampSeconds;

    .line 131
    iput-object p3, p0, Lo/setCollectIMEI$onNavigationEvent;->onMessageChannelReady:Lo/invalidateSpanInfo;

    .line 132
    iput-boolean p4, p0, Lo/setCollectIMEI$onNavigationEvent;->onPostMessage:Z

    .line 133
    iput-boolean p5, p0, Lo/setCollectIMEI$onNavigationEvent;->ICustomTabsCallback:Z

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 3

    .line 115
    check-cast p1, Lo/getCardBackgroundColor;

    .line 1139
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    if-nez v0, :cond_7

    if-eqz p1, :cond_7

    and-int/lit8 v0, p2, 0xa

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_7

    .line 3326
    iget v0, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_2

    iget v0, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_3

    .line 3327
    :cond_2
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 3209
    :cond_3
    iget-object v0, p1, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 1147
    sget-object v1, Lo/setProgress;->onPostMessage:Lo/setProgress;

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 4138
    :cond_4
    iget-object v0, p1, Lo/getCardBackgroundColor;->extraCallback:Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 1157
    :try_start_1
    iget-boolean v2, p0, Lo/setCollectIMEI$onNavigationEvent;->ICustomTabsCallback:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lo/setCollectIMEI$onNavigationEvent;->onPostMessage:Z

    if-eqz v2, :cond_5

    .line 1158
    iget-object v1, p0, Lo/setCollectIMEI$onNavigationEvent;->extraCallback:Lo/getReferrerClickTimestampSeconds;

    iget-object v2, p0, Lo/setCollectIMEI$onNavigationEvent;->onMessageChannelReady:Lo/invalidateSpanInfo;

    invoke-interface {v1, v2, v0}, Lo/getReferrerClickTimestampSeconds;->onPostMessage(Ljava/lang/Object;Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1161
    :cond_5
    :try_start_2
    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v1, :cond_6

    .line 1166
    :try_start_3
    new-instance v0, Lo/getCardBackgroundColor;

    invoke-direct {v0, v1}, Lo/getCardBackgroundColor;-><init>(Lo/getRootAlpha;)V

    .line 1167
    invoke-virtual {v0, p1}, Lo/getCardBackgroundColor;->ICustomTabsCallback(Lo/getCardBackgroundColor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1169
    :try_start_4
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 5020
    :try_start_5
    iget-object p1, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1172
    invoke-interface {p1, v1}, Lo/waitForCustomerUserId;->extraCallback(F)V

    .line 6020
    iget-object p1, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1173
    invoke-interface {p1, v0, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 6425
    :try_start_6
    invoke-virtual {v0}, Lo/getCardBackgroundColor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1182
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception p1

    .line 7425
    :try_start_7
    invoke-virtual {v0}, Lo/getCardBackgroundColor;->close()V

    .line 1176
    throw p1

    :catchall_1
    move-exception p1

    .line 1169
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p1

    :catchall_2
    move-exception p1

    .line 1161
    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p1

    .line 8020
    :cond_6
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1180
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1182
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    .line 4020
    :cond_7
    :goto_1
    :try_start_8
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1148
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1182
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_3
    move-exception p1

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1183
    throw p1
.end method
