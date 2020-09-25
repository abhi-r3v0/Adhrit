.class public final Lo/animateMove$ICustomTabsCallback$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/animateChange$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateMove$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/currency/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$1",
        "Lcom/dreamplug/fabrik/ui/currency/CurrencyDayFilterDialog$OnBottomSheetCtaClicked;",
        "onCtaClicked",
        "",
        "id",
        "",
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
.field private synthetic extraCallback:Lo/animateMove$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/animateMove$ICustomTabsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lo/animateMove$ICustomTabsCallback$onPostMessage;->extraCallback:Lo/animateMove$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [Lo/addWrite;

    .line 165
    iget-object v2, p0, Lo/animateMove$ICustomTabsCallback$onPostMessage;->extraCallback:Lo/animateMove$ICustomTabsCallback;

    iget-object v2, v2, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    invoke-static {v2}, Lo/animateMove;->onNavigationEvent(Lo/animateMove;)Lo/onDetach$updateVisuals;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1054
    iget-object v2, v2, Lo/onDetach$updateVisuals;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 2043
    :goto_0
    new-instance v4, Lo/addWrite;

    const-string/jumbo v5, "source"

    invoke-direct {v4, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v4, v1, v2

    .line 165
    iget-object v4, p0, Lo/animateMove$ICustomTabsCallback$onPostMessage;->extraCallback:Lo/animateMove$ICustomTabsCallback;

    iget-object v4, v4, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    invoke-static {v4}, Lo/animateMove;->onNavigationEvent(Lo/animateMove;)Lo/onDetach$updateVisuals;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2055
    iget-object v3, v4, Lo/onDetach$updateVisuals;->onPostMessage:Ljava/lang/String;

    .line 3043
    :cond_1
    new-instance v4, Lo/addWrite;

    const-string v5, "currency"

    invoke-direct {v4, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v4, v1, v3

    const/4 v4, 0x2

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 4043
    new-instance v6, Lo/addWrite;

    const-string v7, "position"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v1, v4

    const-string v4, "pairs"

    .line 165
    invoke-static {v1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4088
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "currency_filter_item_clicked"

    .line 165
    invoke-static {v0, v4}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 166
    iget-object v0, p0, Lo/animateMove$ICustomTabsCallback$onPostMessage;->extraCallback:Lo/animateMove$ICustomTabsCallback;

    iget-object v0, v0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    invoke-static {v0}, Lo/animateMove;->extraCallback(Lo/animateMove;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    .line 6000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 6151
    iget-object v0, v0, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 231
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 232
    check-cast v1, Lo/StaggeredGridLayoutManager;

    .line 167
    instance-of v1, v1, Lo/isLoadInBackgroundCanceled$onPostMessage;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    .line 169
    :goto_2
    iget-object v0, p0, Lo/animateMove$ICustomTabsCallback$onPostMessage;->extraCallback:Lo/animateMove$ICustomTabsCallback;

    iget-object v0, v0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    invoke-static {v0}, Lo/animateMove;->extraCallback(Lo/animateMove;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    iget-object v1, p0, Lo/animateMove$ICustomTabsCallback$onPostMessage;->extraCallback:Lo/animateMove$ICustomTabsCallback;

    iget-object v1, v1, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    invoke-static {v1}, Lo/animateMove;->extraCallback(Lo/animateMove;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v1

    .line 8000
    iget-object v1, v1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/checkSpanForGap;

    .line 8151
    iget-object v1, v1, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 169
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lo/isLoadInBackgroundCanceled$onPostMessage;

    invoke-static {v1, p1}, Lo/isLoadInBackgroundCanceled$onPostMessage;->extraCallback(Lo/isLoadInBackgroundCanceled$onPostMessage;I)Lo/isLoadInBackgroundCanceled$onPostMessage;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lo/animateMove$ICustomTabsCallback$onPostMessage;->extraCallback:Lo/animateMove$ICustomTabsCallback;

    iget-object v0, v0, Lo/animateMove$ICustomTabsCallback;->onPostMessage:Lo/animateMove;

    .line 9000
    iget-object v0, v0, Lo/animateMove;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/animateAddImpl;

    .line 9080
    iput-boolean v3, v0, Lo/animateAddImpl;->onMessageChannelReady:Z

    .line 9081
    iput p1, v0, Lo/animateAddImpl;->ICustomTabsCallback$Stub:I

    .line 9082
    iget-object p1, v0, Lo/animateAddImpl;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lo/animateAddImpl;->extraCallback(Ljava/lang/String;)V

    return-void

    .line 169
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.control.CurrencyFilterHeaderHolder.CredCurrencyFilterItem"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
