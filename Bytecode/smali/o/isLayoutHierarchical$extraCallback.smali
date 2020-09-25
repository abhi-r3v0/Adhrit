.class public final Lo/isLayoutHierarchical$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isLayoutHierarchical;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;",
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
        "com/dreamplug/fabrik/ui/sms/BankSmsViewModel$init$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;",
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
.field private synthetic ICustomTabsCallback:Lo/isLayoutHierarchical;


# direct methods
.method constructor <init>(Lo/isLayoutHierarchical;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lo/isLayoutHierarchical$extraCallback;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    instance-of v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v1, :cond_3

    .line 51
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 51
    check-cast p1, Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;

    if-eqz p1, :cond_4

    .line 53
    iget-object v0, p0, Lo/isLayoutHierarchical$extraCallback;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    invoke-static {v0, p1}, Lo/isLayoutHierarchical;->onNavigationEvent(Lo/isLayoutHierarchical;Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;)V

    .line 54
    iget-object v0, p0, Lo/isLayoutHierarchical$extraCallback;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    invoke-static {v0}, Lo/isLayoutHierarchical;->onPostMessage(Lo/isLayoutHierarchical;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 56
    iget-object v0, p0, Lo/isLayoutHierarchical$extraCallback;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    invoke-static {v0, p1}, Lo/isLayoutHierarchical;->onPostMessage(Lo/isLayoutHierarchical;Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;)V

    return-void

    .line 57
    :cond_1
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 2000
    sget-object v0, Lo/isInLayout;->search:Lo/isAdded;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x39

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lo/isLayoutHierarchical$extraCallback;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    .line 2036
    iget-object v0, v0, Lo/isLayoutHierarchical;->ICustomTabsCallback:Lo/setActive;

    .line 58
    new-instance v1, Lo/performAccessibilityActionForItem$onPostMessage;

    const v2, 0x7f130088

    invoke-static {p1, v2}, Lo/requestSimpleAnimationsInNextLayout;->extraCallback(Lcom/dreamplug/fabrik/ui/sms/BankSmsResponseModel;I)Landroid/text/SpannableString;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-direct {v1, p1}, Lo/performAccessibilityActionForItem$onPostMessage;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 60
    :cond_2
    iget-object p1, p0, Lo/isLayoutHierarchical$extraCallback;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/isLayoutHierarchical;->ICustomTabsCallback(Z)V

    return-void

    .line 64
    :cond_3
    instance-of v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v1, :cond_4

    .line 65
    iget-object v1, p0, Lo/isLayoutHierarchical$extraCallback;->ICustomTabsCallback:Lo/isLayoutHierarchical;

    .line 3036
    iget-object v1, v1, Lo/isLayoutHierarchical;->ICustomTabsCallback:Lo/setActive;

    .line 65
    new-instance v2, Lo/performAccessibilityActionForItem$onMessageChannelReady;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 5014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 4010
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-direct {v2, p1}, Lo/performAccessibilityActionForItem$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
