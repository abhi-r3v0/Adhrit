.class final Lo/setMinTimeBetweenSessions$onPostMessage;
.super Lo/setAdditionalData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setMinTimeBetweenSessions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
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
.field private final ICustomTabsCallback:Lo/setPreinstallAttribution;

.field private final extraCallback:Lo/ǃ;

.field private synthetic onMessageChannelReady:Lo/setMinTimeBetweenSessions;

.field private final onPostMessage:I


# direct methods
.method public constructor <init>(Lo/setMinTimeBetweenSessions;Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getCardBackgroundColor;",
            ">;",
            "Lo/setPreinstallAttribution;",
            "I)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lo/setMinTimeBetweenSessions$onPostMessage;->onMessageChannelReady:Lo/setMinTimeBetweenSessions;

    .line 54
    invoke-direct {p0, p2}, Lo/setAdditionalData;-><init>(Lo/waitForCustomerUserId;)V

    .line 55
    iput-object p3, p0, Lo/setMinTimeBetweenSessions$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 56
    iput p4, p0, Lo/setMinTimeBetweenSessions$onPostMessage;->onPostMessage:I

    .line 57
    invoke-interface {p3}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object p1

    .line 1166
    iget-object p1, p1, Lo/getHostPrefix;->asBinder:Lo/ǃ;

    .line 57
    iput-object p1, p0, Lo/setMinTimeBetweenSessions$onPostMessage;->extraCallback:Lo/ǃ;

    return-void
.end method


# virtual methods
.method protected final synthetic onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 3

    .line 44
    check-cast p1, Lo/getCardBackgroundColor;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    and-int/lit8 v2, p2, 0x1

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    xor-int/2addr v2, v1

    if-nez v2, :cond_1

    .line 3063
    iget-object v2, p0, Lo/setMinTimeBetweenSessions$onPostMessage;->extraCallback:Lo/ǃ;

    .line 3064
    invoke-static {p1, v2}, Lo/isAttachedToWindow$onMessageChannelReady;->ICustomTabsCallback(Lo/getCardBackgroundColor;Lo/ǃ;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6020
    :cond_1
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 3065
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    return-void

    :cond_2
    and-int/2addr p2, v1

    if-ne p2, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    .line 6425
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->close()V

    .line 3069
    :cond_4
    iget-object p1, p0, Lo/setMinTimeBetweenSessions$onPostMessage;->onMessageChannelReady:Lo/setMinTimeBetweenSessions;

    iget p2, p0, Lo/setMinTimeBetweenSessions$onPostMessage;->onPostMessage:I

    add-int/2addr p2, v1

    .line 7020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 3071
    iget-object v2, p0, Lo/setMinTimeBetweenSessions$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 7023
    invoke-virtual {p1, p2, v0, v2}, Lo/setMinTimeBetweenSessions;->onNavigationEvent(ILo/waitForCustomerUserId;Lo/setPreinstallAttribution;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 8020
    iget-object p1, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    const/4 p2, 0x0

    .line 3074
    invoke-interface {p1, p2, v1}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    :cond_5
    return-void
.end method

.method protected final onMessageChannelReady(Ljava/lang/Throwable;)V
    .locals 4

    .line 81
    iget-object v0, p0, Lo/setMinTimeBetweenSessions$onPostMessage;->onMessageChannelReady:Lo/setMinTimeBetweenSessions;

    iget v1, p0, Lo/setMinTimeBetweenSessions$onPostMessage;->onPostMessage:I

    add-int/lit8 v1, v1, 0x1

    .line 2020
    iget-object v2, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 82
    iget-object v3, p0, Lo/setMinTimeBetweenSessions$onPostMessage;->ICustomTabsCallback:Lo/setPreinstallAttribution;

    .line 2023
    invoke-virtual {v0, v1, v2, v3}, Lo/setMinTimeBetweenSessions;->onNavigationEvent(ILo/waitForCustomerUserId;Lo/setPreinstallAttribution;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 85
    invoke-interface {v0, p1}, Lo/waitForCustomerUserId;->onPostMessage(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
