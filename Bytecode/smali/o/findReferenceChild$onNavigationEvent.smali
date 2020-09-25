.class final Lo/findReferenceChild$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findReferenceChild;
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
        "Lo/addWrite<",
        "+",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;",
        "+",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a*\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005 \u0006*\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lkotlin/Pair;",
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
.field private synthetic onMessageChannelReady:Lo/findReferenceChild;


# direct methods
.method constructor <init>(Lo/findReferenceChild;)V
    .locals 0

    iput-object p1, p0, Lo/findReferenceChild$onNavigationEvent;->onMessageChannelReady:Lo/findReferenceChild;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 32
    check-cast p1, Lo/addWrite;

    .line 2028
    iget-object v0, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 1105
    iget-object v0, p0, Lo/findReferenceChild$onNavigationEvent;->onMessageChannelReady:Lo/findReferenceChild;

    invoke-static {v0}, Lo/findReferenceChild;->ICustomTabsCallback(Lo/findReferenceChild;)Lo/setReenterTransition$onPostMessage;

    move-result-object v1

    iget-object v0, p0, Lo/findReferenceChild$onNavigationEvent;->onMessageChannelReady:Lo/findReferenceChild;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v0, "context!!"

    invoke-static {v2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 3028
    iget-object p1, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 1105
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1106
    :cond_1
    iget-object p1, p0, Lo/findReferenceChild$onNavigationEvent;->onMessageChannelReady:Lo/findReferenceChild;

    const v0, 0x7f130412

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.something_went_wrong)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    move-object v3, p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    .line 1105
    invoke-static/range {v1 .. v7}, Lo/setReenterTransition$onPostMessage;->onMessageChannelReady(Lo/setReenterTransition$onPostMessage;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Integer;I)V

    .line 1107
    iget-object p1, p0, Lo/findReferenceChild$onNavigationEvent;->onMessageChannelReady:Lo/findReferenceChild;

    .line 4000
    iget-object p1, p1, Lo/findReferenceChild;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 1107
    invoke-static {p1, v0, v1, v2, v3}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 4027
    iget-object p1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1109
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;

    if-eqz p1, :cond_4

    .line 1110
    iget-object v0, p0, Lo/findReferenceChild$onNavigationEvent;->onMessageChannelReady:Lo/findReferenceChild;

    .line 5014
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->asInterface:Ljava/lang/String;

    .line 1110
    invoke-static {v0, v1}, Lo/findReferenceChild;->onMessageChannelReady(Lo/findReferenceChild;Ljava/lang/String;)V

    .line 1111
    iget-object v0, p0, Lo/findReferenceChild$onNavigationEvent;->onMessageChannelReady:Lo/findReferenceChild;

    .line 6014
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->asInterface:Ljava/lang/String;

    .line 7009
    iget-wide v2, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanOrderResponse;->onNavigationEvent:D

    .line 1111
    invoke-static {v0, v1, v2, v3}, Lo/findReferenceChild;->onNavigationEvent(Lo/findReferenceChild;Ljava/lang/String;D)V

    :cond_4
    return-void
.end method
