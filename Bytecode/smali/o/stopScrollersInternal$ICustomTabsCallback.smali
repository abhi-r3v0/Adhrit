.class final Lo/stopScrollersInternal$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopScrollersInternal;-><init>(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;Lo/getServerTime;Lo/getServerTime;Lo/rerunTransactionQueue;Lo/getServerTime;Lo/nextTransactionOrder;ZLjava/lang/String;Ljava/lang/String;IZ)V
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
        "Lo/throwIfInMutationOperation<",
        "+",
        "Lo/startInterceptRequestLayout$extraCallback;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemCtaActionStates$RedeemCtaActionData;",
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
.field private synthetic onNavigationEvent:Lo/stopScrollersInternal;


# direct methods
.method constructor <init>(Lo/stopScrollersInternal;)V
    .locals 0

    iput-object p1, p0, Lo/stopScrollersInternal$ICustomTabsCallback;->onNavigationEvent:Lo/stopScrollersInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 33
    check-cast p1, Lo/throwIfInMutationOperation;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2016
    :cond_0
    iget-object v0, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1049
    :goto_0
    check-cast v0, Lo/startInterceptRequestLayout$extraCallback;

    if-eqz v0, :cond_3

    .line 3011
    iget-object v1, v0, Lo/startInterceptRequestLayout$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 1050
    iget-object v2, p0, Lo/stopScrollersInternal$ICustomTabsCallback;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 3033
    iget-object v2, v2, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 4000
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/removeItemDecoration;

    .line 4396
    iget-object v2, v2, Lo/removeItemDecoration;->onNavigationEvent:Ljava/lang/String;

    .line 1050
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "redeemUseCase"

    const/4 v3, 0x1

    const-string v4, " == "

    if-eqz v1, :cond_2

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "match "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5011
    iget-object v5, v0, Lo/startInterceptRequestLayout$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 1051
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/stopScrollersInternal$ICustomTabsCallback;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 5033
    iget-object v4, v4, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 6028
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asBinder:Ljava/lang/String;

    .line 1051
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 7011
    iget-boolean v1, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-nez v1, :cond_1

    .line 7015
    iput-boolean v3, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 1053
    :cond_1
    iget-object p1, p0, Lo/stopScrollersInternal$ICustomTabsCallback;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 7033
    iget-object p1, p1, Lo/stopScrollersInternal;->onTransact:Lo/releaseGlows$onPostMessage;

    .line 8011
    iget-object v1, v0, Lo/startInterceptRequestLayout$extraCallback;->ICustomTabsCallback:Lo/releaseGlows;

    .line 9011
    iget-object v2, v0, Lo/startInterceptRequestLayout$extraCallback;->extraCallback:Ljava/util/List;

    .line 10011
    iget-object v0, v0, Lo/startInterceptRequestLayout$extraCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 1053
    invoke-interface {p1, v1, v2, v0}, Lo/releaseGlows$onPostMessage;->onPostMessage(Lo/releaseGlows;Ljava/util/List;Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;)V

    return-void

    :cond_2
    new-array p1, v3, [Lo/addWrite;

    const/4 v1, 0x0

    .line 1056
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 11011
    iget-object v6, v0, Lo/startInterceptRequestLayout$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 1056
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lo/stopScrollersInternal$ICustomTabsCallback;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 11033
    iget-object v6, v6, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 12028
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asBinder:Ljava/lang/String;

    .line 1056
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 12043
    new-instance v6, Lo/addWrite;

    const-string v7, "data"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, p1, v1

    const-string v1, "pairs"

    .line 1055
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "lifestyle_id_mismatch"

    .line 1055
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1058
    sget-object p1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mismatch "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13011
    iget-object v0, v0, Lo/startInterceptRequestLayout$extraCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 1058
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lo/stopScrollersInternal$ICustomTabsCallback;->onNavigationEvent:Lo/stopScrollersInternal;

    .line 13033
    iget-object v0, v0, Lo/stopScrollersInternal;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 14028
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->asBinder:Ljava/lang/String;

    .line 1058
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lo/replaceAll;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
