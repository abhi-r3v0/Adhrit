.class public final Lo/trackEvent$ICustomTabsCallback;
.super Lo/setAdditionalData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/trackEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAdditionalData<",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;",
        "Lo/getRootAlpha<",
        "Lo/convertToJsonObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getReferrerClickTimestampSeconds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Z

.field private final onMessageChannelReady:Lo/invalidateSpanInfo;

.field private final onPostMessage:Z


# direct methods
.method public constructor <init>(Lo/waitForCustomerUserId;Lo/invalidateSpanInfo;ZLo/getReferrerClickTimestampSeconds;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getRootAlpha<",
            "Lo/convertToJsonObject;",
            ">;>;",
            "Lo/invalidateSpanInfo;",
            "Z",
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;Z)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1}, Lo/setAdditionalData;-><init>(Lo/waitForCustomerUserId;)V

    .line 105
    iput-object p2, p0, Lo/trackEvent$ICustomTabsCallback;->onMessageChannelReady:Lo/invalidateSpanInfo;

    .line 106
    iput-boolean p3, p0, Lo/trackEvent$ICustomTabsCallback;->onPostMessage:Z

    .line 107
    iput-object p4, p0, Lo/trackEvent$ICustomTabsCallback;->ICustomTabsCallback:Lo/getReferrerClickTimestampSeconds;

    .line 108
    iput-boolean p5, p0, Lo/trackEvent$ICustomTabsCallback;->extraCallback:Z

    return-void
.end method


# virtual methods
.method protected final synthetic onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 4

    .line 89
    check-cast p1, Lo/getRootAlpha;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    and-int/lit8 p1, p2, 0x1

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 3020
    iget-object p1, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1117
    invoke-interface {p1, v0, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    :cond_1
    return-void

    :cond_2
    and-int/lit8 v3, p2, 0x1

    if-ne v3, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    xor-int/2addr v1, v2

    if-eqz v1, :cond_5

    .line 1122
    iget-boolean v1, p0, Lo/trackEvent$ICustomTabsCallback;->onPostMessage:Z

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    return-void

    .line 1127
    :cond_5
    :goto_0
    iget-boolean v1, p0, Lo/trackEvent$ICustomTabsCallback;->extraCallback:Z

    if-eqz v1, :cond_6

    .line 1128
    iget-object v0, p0, Lo/trackEvent$ICustomTabsCallback;->ICustomTabsCallback:Lo/getReferrerClickTimestampSeconds;

    iget-object v1, p0, Lo/trackEvent$ICustomTabsCallback;->onMessageChannelReady:Lo/invalidateSpanInfo;

    invoke-interface {v0, v1, p1}, Lo/getReferrerClickTimestampSeconds;->onPostMessage(Ljava/lang/Object;Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object v0

    .line 5020
    :cond_6
    :try_start_0
    iget-object v1, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1131
    invoke-interface {v1, v2}, Lo/waitForCustomerUserId;->extraCallback(F)V

    .line 6020
    iget-object v1, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    if-eqz v0, :cond_7

    move-object p1, v0

    .line 1132
    :cond_7
    invoke-interface {v1, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1134
    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p1
.end method
