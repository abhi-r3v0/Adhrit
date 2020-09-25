.class final Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMaxAvailableHeight;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/onMoveStarting$onNavigationEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "upiResponse",
        "Lcom/dreamplug/upi/UpiPaymentData$UpiAccountResult;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getMaxAvailableHeight;


# direct methods
.method constructor <init>(Lo/getMaxAvailableHeight;)V
    .locals 0

    iput-object p1, p0, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/getMaxAvailableHeight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

    .line 45
    check-cast p1, Lo/onMoveStarting$onNavigationEvent;

    .line 2259
    iget-object v0, p1, Lo/onMoveStarting$onNavigationEvent;->onNavigationEvent:Lcom/cred/pay/repository/models/UpiErrorResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1246
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/getMaxAvailableHeight;

    .line 3218
    iget v0, v0, Lo/getMaxAvailableHeight;->onMessageChannelReady:I

    if-eqz v0, :cond_4

    .line 1246
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/getMaxAvailableHeight;

    .line 4218
    iget v0, v0, Lo/getMaxAvailableHeight;->onMessageChannelReady:I

    .line 1246
    iget-object v2, p0, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/getMaxAvailableHeight;

    .line 4219
    iget v2, v2, Lo/getMaxAvailableHeight;->ICustomTabsCallback:I

    if-lt v0, v2, :cond_4

    .line 1247
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/getMaxAvailableHeight;

    .line 5218
    iget v0, v0, Lo/getMaxAvailableHeight;->onMessageChannelReady:I

    .line 1247
    iget-object v2, p0, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/getMaxAvailableHeight;

    .line 5219
    iget v2, v2, Lo/getMaxAvailableHeight;->ICustomTabsCallback:I

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    .line 1248
    iget-object p1, p0, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/getMaxAvailableHeight;

    .line 6219
    iget v0, p1, Lo/getMaxAvailableHeight;->ICustomTabsCallback:I

    add-int/2addr v0, v3

    .line 7219
    iput v0, p1, Lo/getMaxAvailableHeight;->ICustomTabsCallback:I

    .line 1249
    iget-object p1, p0, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/getMaxAvailableHeight;

    invoke-static {p1}, Lo/getMaxAvailableHeight;->onNavigationEvent(Lo/getMaxAvailableHeight;)Lo/onMoveStarting;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/onMoveStarting;->onPostMessage()V

    :cond_0
    return-void

    .line 1251
    :cond_1
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/getMaxAvailableHeight;

    .line 7220
    iget-boolean v0, v0, Lo/getMaxAvailableHeight;->onPostMessage:Z

    if-eqz v0, :cond_3

    .line 1252
    sget-object v0, Lo/getEpicenterBounds;->onMessageChannelReady:Lo/getEpicenterBounds;

    invoke-static {}, Lo/getEpicenterBounds;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    .line 1253
    iget-object v2, p0, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/getMaxAvailableHeight;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lo/onMoveFinished;->onMessageChannelReady:Lo/onMoveFinished;

    if-eqz p1, :cond_2

    .line 7259
    iget-object v5, p1, Lo/onMoveStarting$onNavigationEvent;->onNavigationEvent:Lcom/cred/pay/repository/models/UpiErrorResponse;

    if-eqz v5, :cond_2

    .line 8135
    iget-object v5, v5, Lcom/cred/pay/repository/models/UpiErrorResponse;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 1253
    :goto_0
    invoke-static {v5, v3}, Lo/onMoveFinished;->ICustomTabsCallback(Ljava/lang/String;Z)Lo/snapFromFling$ICustomTabsCallback$Stub;

    move-result-object v3

    .line 9058
    iget-object v3, v3, Lo/snapFromFling$ICustomTabsCallback$Stub;->onNavigationEvent:Ljava/lang/String;

    .line 1253
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n log id - "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1253
    invoke-static {v2, v3}, Lo/getMaxAvailableHeight;->extraCallback(Lo/getMaxAvailableHeight;Ljava/lang/String;)V

    .line 1255
    iget-object v2, p0, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/getMaxAvailableHeight;

    .line 10000
    iget-object v2, v2, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MenuItemHoverListener;

    .line 1255
    invoke-virtual {v2, p1, v0}, Lo/MenuItemHoverListener;->onNavigationEvent(Lo/onMoveStarting$onNavigationEvent;Ljava/lang/String;)V

    .line 1257
    :cond_3
    iget-object p1, p0, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/getMaxAvailableHeight;

    .line 10218
    iput v1, p1, Lo/getMaxAvailableHeight;->onMessageChannelReady:I

    .line 1258
    iget-object p1, p0, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/getMaxAvailableHeight;

    .line 10219
    iput v1, p1, Lo/getMaxAvailableHeight;->ICustomTabsCallback:I

    .line 1259
    iget-object p1, p0, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/getMaxAvailableHeight;

    .line 10220
    iput-boolean v1, p1, Lo/getMaxAvailableHeight;->onPostMessage:Z

    return-void

    .line 1262
    :cond_4
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/getMaxAvailableHeight;

    .line 11218
    iput v1, v0, Lo/getMaxAvailableHeight;->onMessageChannelReady:I

    .line 1263
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/getMaxAvailableHeight;

    .line 11219
    iput v1, v0, Lo/getMaxAvailableHeight;->ICustomTabsCallback:I

    .line 1264
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/getMaxAvailableHeight;

    .line 11220
    iput-boolean v1, v0, Lo/getMaxAvailableHeight;->onPostMessage:Z

    .line 1265
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsCallback$Stub;->onPostMessage:Lo/getMaxAvailableHeight;

    .line 12000
    iget-object v0, v0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    .line 1265
    invoke-static {v0, p1}, Lo/MenuItemHoverListener;->extraCallback(Lo/MenuItemHoverListener;Lo/onMoveStarting$onNavigationEvent;)V

    return-void
.end method
