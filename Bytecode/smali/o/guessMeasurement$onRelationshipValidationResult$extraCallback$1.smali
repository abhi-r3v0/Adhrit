.class public final Lo/guessMeasurement$onRelationshipValidationResult$extraCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/guessMeasurement$onRelationshipValidationResult$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
        "Lcom/cred/pay/repository/models/JuspaySessionToken;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00020\u0001J\u001e\u0010\u0005\u001a\u00020\u00062\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lending/StashAutoDebitUpiPitchDialog$onViewCreated$1$startLinkFlow$1$1",
        "Landroidx/lifecycle/Observer;",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/cred/pay/repository/models/JuspaySessionToken;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onChanged",
        "",
        "result",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/guessMeasurement$onRelationshipValidationResult$extraCallback;


# direct methods
.method constructor <init>(Lo/guessMeasurement$onRelationshipValidationResult$extraCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lo/guessMeasurement$onRelationshipValidationResult$extraCallback$1;->onMessageChannelReady:Lo/guessMeasurement$onRelationshipValidationResult$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 9

    .line 72
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    .line 1074
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz p1, :cond_1

    .line 2009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1074
    check-cast p1, Lcom/cred/pay/repository/models/JuspaySessionToken;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 1076
    sget-object v0, Lo/setHeight;->onPostMessage:Lo/setHeight;

    .line 3000
    sget-object v0, Lo/setHeight;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 2028
    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 1076
    move-object v2, p0

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 1077
    sget-object v0, Lo/onChangeStarting;->onPostMessage:Lo/onChangeStarting;

    new-instance v0, Lcom/dreamplug/upi/UpiData;

    invoke-virtual {p1}, Lcom/cred/pay/repository/models/JuspaySessionToken;->getJuspayUpi()Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getAxisHmacKey()Ljava/lang/String;

    move-result-object v3

    .line 1078
    invoke-virtual {p1}, Lcom/cred/pay/repository/models/JuspaySessionToken;->getJuspayUpi()Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getMcc()Ljava/lang/String;

    move-result-object v4

    .line 1079
    invoke-virtual {p1}, Lcom/cred/pay/repository/models/JuspaySessionToken;->getJuspayUpi()Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getMerchantChannelId()Ljava/lang/String;

    move-result-object v5

    .line 1080
    invoke-virtual {p1}, Lcom/cred/pay/repository/models/JuspaySessionToken;->getJuspayUpi()Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cred/pay/repository/models/JuspaySessionToken$JuspayUpi;->getMerchantId()Ljava/lang/String;

    move-result-object v6

    .line 1081
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 4000
    sget-object p1, Lo/setTrackTintMode;->onRelationshipValidationResult:Lo/setSubtitleTextColor;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v7, 0x3

    aget-object v2, v2, v7

    invoke-virtual {p1, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    move-object v7, p1

    .line 1082
    sget-object p1, Lo/setHeight;->onPostMessage:Lo/setHeight;

    const-string p1, "MANDATE"

    invoke-static {p1}, Lo/setHeight;->extraCallback(Ljava/lang/String;)Lo/setOnItemClickListener;

    move-result-object p1

    .line 4037
    invoke-virtual {p1}, Lo/setOnItemClickListener;->extraCallback()V

    .line 4038
    iget-object p1, p1, Lo/setOnItemClickListener;->ICustomTabsCallback:Lo/setActive;

    .line 1082
    move-object v8, p1

    check-cast v8, Landroidx/lifecycle/LiveData;

    move-object v2, v0

    .line 1077
    invoke-direct/range {v2 .. v8}, Lcom/dreamplug/upi/UpiData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/lifecycle/LiveData;)V

    invoke-static {v0}, Lo/onChangeStarting;->onMessageChannelReady(Lcom/dreamplug/upi/UpiData;)V

    .line 1084
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "auto_debit"

    const-string v2, "SOURCE"

    .line 1085
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    sget-object v2, Lo/dispatchAddStarting;->onNavigationEvent:Lo/dispatchAddStarting$onNavigationEvent;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4187
    invoke-static {v1, v2, v0}, Lo/dispatchAddStarting$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lo/dispatchAddStarting;

    move-result-object v0

    .line 1087
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1088
    iget-object p1, p0, Lo/guessMeasurement$onRelationshipValidationResult$extraCallback$1;->onMessageChannelReady:Lo/guessMeasurement$onRelationshipValidationResult$extraCallback;

    iget-object p1, p1, Lo/guessMeasurement$onRelationshipValidationResult$extraCallback;->onMessageChannelReady:Lo/guessMeasurement$onRelationshipValidationResult;

    iget-object p1, p1, Lo/guessMeasurement$onRelationshipValidationResult;->onMessageChannelReady:Lo/guessMeasurement;

    invoke-static {p1}, Lo/guessMeasurement;->onPostMessage(Lo/guessMeasurement;)Lo/guessMeasurement$onNavigationEvent;

    move-result-object p1

    check-cast p1, Lo/dispatchAddStarting$onPostMessage;

    .line 5030
    iput-object p1, v0, Lo/dispatchAddStarting;->onMessageChannelReady:Lo/dispatchAddStarting$onPostMessage;

    .line 1089
    iget-object p1, p0, Lo/guessMeasurement$onRelationshipValidationResult$extraCallback$1;->onMessageChannelReady:Lo/guessMeasurement$onRelationshipValidationResult$extraCallback;

    iget-object p1, p1, Lo/guessMeasurement$onRelationshipValidationResult$extraCallback;->onMessageChannelReady:Lo/guessMeasurement$onRelationshipValidationResult;

    iget-object p1, p1, Lo/guessMeasurement$onRelationshipValidationResult;->onMessageChannelReady:Lo/guessMeasurement;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    const-string v1, "UpiFragment"

    invoke-virtual {v0, p1, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
