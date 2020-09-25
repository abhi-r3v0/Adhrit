.class public final Lo/animateAddImpl$asBinder$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/animateAddImpl$asBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/currency/CredCurrencySuggestedRewardResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/currency/CredCurrencyViewModel$pointsObserver$1$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/currency/CredCurrencySuggestedRewardResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
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
.field private synthetic extraCallback:Lo/animateAddImpl$asBinder;


# direct methods
.method constructor <init>(Lo/animateAddImpl$asBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lo/animateAddImpl$asBinder$2;->extraCallback:Lo/animateAddImpl$asBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/currency/CredCurrencySuggestedRewardResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_5

    .line 94
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 2009
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 94
    check-cast v0, Lcom/dreamplug/fabrik/ui/currency/CredCurrencySuggestedRewardResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2051
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/currency/CredCurrencySuggestedRewardResponse;->onPostMessage:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_5

    .line 3009
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 94
    check-cast v0, Lcom/dreamplug/fabrik/ui/currency/CredCurrencySuggestedRewardResponse;

    if-eqz v0, :cond_1

    .line 3051
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/currency/CredCurrencySuggestedRewardResponse;->onPostMessage:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 94
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_5

    .line 95
    iget-object v0, p0, Lo/animateAddImpl$asBinder$2;->extraCallback:Lo/animateAddImpl$asBinder;

    iget-object v0, v0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    .line 4009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 95
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    check-cast p1, Lcom/dreamplug/fabrik/ui/currency/CredCurrencySuggestedRewardResponse;

    .line 4051
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/currency/CredCurrencySuggestedRewardResponse;->onPostMessage:Ljava/util/List;

    if-nez p1, :cond_4

    .line 95
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;

    invoke-static {v0, p1}, Lo/animateAddImpl;->extraCallback(Lo/animateAddImpl;Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmInnerCardResponse;)V

    .line 98
    :cond_5
    iget-object p1, p0, Lo/animateAddImpl$asBinder$2;->extraCallback:Lo/animateAddImpl$asBinder;

    iget-object p1, p1, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {p1}, Lo/animateAddImpl;->onRelationshipValidationResult(Lo/animateAddImpl;)V

    return-void
.end method
