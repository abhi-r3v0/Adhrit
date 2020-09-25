.class public final Lo/setExitSharedElementCallback$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setExitSharedElementCallback;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/autodebit/AutoDebitAddAccountFragment$onViewCreated$5",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
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
.field private synthetic ICustomTabsCallback:Lo/setExitSharedElementCallback;


# direct methods
.method constructor <init>(Lo/setExitSharedElementCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lo/setExitSharedElementCallback$asBinder;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 279
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 280
    iget-object p1, p0, Lo/setExitSharedElementCallback$asBinder;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    const-string v0, "ad_setup_add_bank_ifsc_first_char_entered"

    invoke-static {p1, v0}, Lo/setExitSharedElementCallback;->onNavigationEvent(Lo/setExitSharedElementCallback;Ljava/lang/String;)V

    .line 282
    :cond_0
    iget-object p1, p0, Lo/setExitSharedElementCallback$asBinder;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->onNavigationEvent(Lo/setExitSharedElementCallback;)Ljava/lang/String;

    move-result-object p1

    .line 283
    sget-object v0, Lo/requireContext;->onMessageChannelReady:Lo/requireContext;

    const-string v0, "ifsc"

    invoke-static {v0, p1}, Lo/requireContext;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    iget-object v1, p0, Lo/setExitSharedElementCallback$asBinder;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->bankGroup:I

    invoke-virtual {v1, v2}, Lo/setExitSharedElementCallback;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    const-string v2, "bankGroup"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lo/setExitSharedElementCallback$asBinder;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {v1}, Lo/setExitSharedElementCallback;->ICustomTabsCallback(Lo/setExitSharedElementCallback;)Lo/getSharedElementEnterTransition;

    move-result-object v1

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object v0, v1, Lo/getSharedElementEnterTransition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setReenterTransition;

    .line 1137
    invoke-interface {v0, p1}, Lo/setReenterTransition;->extraCallback(Ljava/lang/String;)Lo/clearScrap;

    move-result-object v0

    .line 1138
    new-instance v2, Lo/getSharedElementEnterTransition$onTransact;

    invoke-direct {v2, v1, p1}, Lo/getSharedElementEnterTransition$onTransact;-><init>(Lo/getSharedElementEnterTransition;Ljava/lang/String;)V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 287
    :cond_1
    iget-object p1, p0, Lo/setExitSharedElementCallback$asBinder;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    return-void

    .line 289
    :cond_2
    iget-object p1, p0, Lo/setExitSharedElementCallback$asBinder;->ICustomTabsCallback:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    return-void

    .line 279
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
