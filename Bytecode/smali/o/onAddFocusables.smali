.class public final Lo/onAddFocusables;
.super Lo/getSplitTrack;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onAddFocusables$extraCallback;,
        Lo/onAddFocusables$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final ICustomTabsCallback$Stub:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final asBinder:Ljava/lang/String;

.field public asInterface:Ljava/lang/String;

.field extraCallback:I

.field private final newSession:Lo/isSameListener;

.field public onMessageChannelReady:Lo/createFullSpanItemFromStart;

.field onPostMessage:Landroid/os/Handler;

.field public final onRelationshipValidationResult:Lo/onAddFocusables$extraCallback;

.field public onTransact:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

.field private final warmup:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/onAddFocusables$extraCallback;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/onAddFocusables$extraCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lob"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plutusOrderId"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventMap"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lo/getSplitTrack;-><init>()V

    iput-object p1, p0, Lo/onAddFocusables;->asBinder:Ljava/lang/String;

    iput-object p2, p0, Lo/onAddFocusables;->warmup:Ljava/lang/String;

    iput-object p3, p0, Lo/onAddFocusables;->onRelationshipValidationResult:Lo/onAddFocusables$extraCallback;

    iput-object p4, p0, Lo/onAddFocusables;->ICustomTabsCallback$Stub:Ljava/util/Map;

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lo/onAddFocusables;->onPostMessage:Landroid/os/Handler;

    .line 43
    new-instance p1, Lo/onAddFocusables$onPostMessage;

    invoke-direct {p1, p0}, Lo/onAddFocusables$onPostMessage;-><init>(Lo/onAddFocusables;)V

    check-cast p1, Lo/setPlaybackToRemote;

    iput-object p1, p0, Lo/onAddFocusables;->ICustomTabsCallback:Lo/setPlaybackToRemote;

    const-string p1, "START"

    .line 52
    iput-object p1, p0, Lo/onAddFocusables;->asInterface:Ljava/lang/String;

    .line 54
    sget-object p1, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 253
    sget-object p1, Lo/onAddFocusables$onMessageChannelReady;->onNavigationEvent:Lo/onAddFocusables$onMessageChannelReady;

    check-cast p1, Lo/getServerTime;

    const-string p2, "initializer"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22021
    new-instance p2, Lo/fromChildMerge;

    invoke-direct {p2, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p2, Lo/isSameListener;

    .line 253
    iput-object p2, p0, Lo/onAddFocusables;->newSession:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/onAddFocusables;)V
    .locals 3

    .line 22075
    iget v0, p0, Lo/onAddFocusables;->extraCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/onAddFocusables;->extraCallback:I

    .line 23000
    iget-object v0, p0, Lo/onAddFocusables;->newSession:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getCurrentContentInsetEnd;

    .line 22077
    iget-object v1, p0, Lo/onAddFocusables;->warmup:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/getCurrentContentInsetEnd;->onNavigationEvent(Ljava/lang/String;)Lo/tryBindViewHolderByDeadline;

    move-result-object v0

    .line 22078
    new-instance v1, Lo/onAddFocusables$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/onAddFocusables$ICustomTabsCallback;-><init>(Lo/onAddFocusables;)V

    check-cast v1, Lo/RecyclerView$Recycler;

    const-string p0, "OrderStatus"

    const-string/jumbo v2, "tag"

    invoke-static {p0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {v1, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25044
    iget-object p0, v0, Lo/tryBindViewHolderByDeadline;->onMessageChannelReady:Lo/clearScrap;

    new-instance v0, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;

    invoke-direct {v0, v1}, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;-><init>(Lo/RecyclerView$Recycler;)V

    check-cast v0, Lo/getScrapOrCachedViewForId;

    invoke-interface {p0, v0}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroidx/fragment/app/Fragment;)V
    .locals 13

    if-nez p1, :cond_0

    .line 160
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "fragment!!.lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    new-instance v1, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v1}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 244
    new-instance v3, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v3}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 245
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v5

    sget-object v6, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 11212
    invoke-virtual {v5, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    const/4 v6, 0x1

    if-ltz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_5

    const-string/jumbo v5, "state_successful_payment"

    .line 161
    invoke-static {v5}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;)V

    .line 162
    new-instance v5, Lo/DefaultItemAnimator;

    .line 12034
    iget-object v7, p0, Lo/onAddFocusables;->onRelationshipValidationResult:Lo/onAddFocusables$extraCallback;

    .line 12055
    iget-object v8, p0, Lo/onAddFocusables;->onTransact:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    if-eqz v8, :cond_3

    .line 162
    invoke-virtual {v8}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getPayments()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    const-string v9, "$this$getOrNull"

    invoke-static {v8, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$this$lastIndex"

    .line 12266
    invoke-static {v8, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13210
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v6

    if-ltz v9, :cond_2

    .line 12266
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 162
    :cond_2
    check-cast v4, Lcom/dreamplug/androidapp/payments/model/OrderPayment;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/dreamplug/androidapp/payments/model/OrderPayment;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    const-string v2, ""

    .line 14034
    :cond_4
    iget-object v4, p0, Lo/onAddFocusables;->onRelationshipValidationResult:Lo/onAddFocusables$extraCallback;

    .line 14215
    iget-object v4, v4, Lo/onAddFocusables$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 15034
    invoke-virtual {p0, v2, v4}, Lo/onAddFocusables;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {v7, v2}, Lo/onAddFocusables$extraCallback;->extraCallback(Lo/onAddFocusables$extraCallback;Ljava/lang/String;)Lo/onAddFocusables$extraCallback;

    move-result-object v9

    .line 16034
    iget-object v10, p0, Lo/onAddFocusables;->asBinder:Ljava/lang/String;

    .line 17034
    iget-object v11, p0, Lo/onAddFocusables;->ICustomTabsCallback$Stub:Ljava/util/Map;

    .line 17055
    iget-object v12, p0, Lo/onAddFocusables;->onTransact:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    move-object v7, v5

    move-object v8, p1

    .line 162
    invoke-direct/range {v7 .. v12}, Lo/DefaultItemAnimator;-><init>(Landroidx/fragment/app/Fragment;Lo/onAddFocusables$extraCallback;Ljava/lang/String;Ljava/util/Map;Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V

    .line 169
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 170
    new-instance p1, Lo/onAddFocusables$onTransact;

    invoke-direct {p1, v5, p0}, Lo/onAddFocusables$onTransact;-><init>(Lo/DefaultItemAnimator;Lo/onAddFocusables;)V

    check-cast p1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v5, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 176
    sget-object p1, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 18000
    sget-object p1, Lo/setSplitTrack;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 176
    new-instance v2, Lo/getThumbTintList;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v2, v4}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 247
    iput-boolean v6, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 248
    :cond_5
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_6

    .line 249
    new-instance v2, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/onAddFocusables;Landroidx/fragment/app/Fragment;)V

    check-cast v2, Lo/createCallback;

    iput-object v2, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 250
    iget-object p1, v3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 252
    :cond_6
    :goto_1
    new-instance p1, Lo/onAddFocusables$asBinder;

    invoke-direct {p1, v3, v0}, Lo/onAddFocusables$asBinder;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x539f09b5

    const-string/jumbo v2, "{$amount}"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    const v1, -0x4c696bc3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "failed"

    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 188
    iget-object p1, p0, Lo/onAddFocusables;->onRelationshipValidationResult:Lo/onAddFocusables$extraCallback;

    .line 19218
    iget-object p1, p1, Lo/onAddFocusables$extraCallback;->extraCallback:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 188
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Number;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    invoke-static/range {v5 .. v12}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20075
    invoke-static {p1, v2, v0, v4}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    .line 189
    :cond_1
    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const p2, 0x7f130373

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Number;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    invoke-static/range {v5 .. v12}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {p2, p1}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "completed"

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 184
    iget-object p1, p0, Lo/onAddFocusables;->onRelationshipValidationResult:Lo/onAddFocusables$extraCallback;

    .line 18217
    iget-object p1, p1, Lo/onAddFocusables$extraCallback;->onNavigationEvent:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 184
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Number;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    invoke-static/range {v5 .. v12}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19075
    invoke-static {p1, v2, v0, v4}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    .line 185
    :cond_3
    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const p2, 0x7f130382

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Number;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    invoke-static/range {v5 .. v12}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {p2, p1}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 192
    :cond_4
    :goto_0
    iget-object p1, p0, Lo/onAddFocusables;->onRelationshipValidationResult:Lo/onAddFocusables$extraCallback;

    .line 20219
    iget-object p1, p1, Lo/onAddFocusables$extraCallback;->onPostMessage:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 192
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Number;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    invoke-static/range {v5 .. v12}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21075
    invoke-static {p1, v2, v0, v4}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    .line 193
    :cond_5
    sget-object p1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const p2, 0x7f130378

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Number;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    invoke-static/range {v5 .. v12}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {p2, p1}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method public final extraCallback()V
    .locals 2

    .line 58
    sget-object v0, Lo/resize;->extraCallback:Lo/resize;

    invoke-static {}, Lo/resize;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lo/onAddFocusables;->ICustomTabsCallback:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 62
    sget-object v0, Lo/resize;->extraCallback:Lo/resize;

    invoke-static {}, Lo/resize;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lo/onAddFocusables;->ICustomTabsCallback:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 1067
    iget-object v0, p0, Lo/onAddFocusables;->onPostMessage:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady(Landroidx/fragment/app/Fragment;)V
    .locals 7

    .line 142
    iget-object v5, p0, Lo/onAddFocusables;->onTransact:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    if-eqz v5, :cond_4

    const-string/jumbo v0, "state_unsuccessful_payment"

    .line 143
    invoke-static {v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_4

    .line 145
    new-instance v6, Lo/dispatchLastEvent;

    iget-object v1, p0, Lo/onAddFocusables;->onRelationshipValidationResult:Lo/onAddFocusables$extraCallback;

    invoke-virtual {v5}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getPayments()Ljava/util/List;

    move-result-object v2

    const-string v3, "$this$getOrNull"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$this$lastIndex"

    .line 9266
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10210
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    const/4 v0, 0x0

    .line 9266
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 145
    :cond_1
    check-cast v0, Lcom/dreamplug/androidapp/payments/model/OrderPayment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/payments/model/OrderPayment;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, ""

    .line 146
    :cond_3
    iget-object v2, p0, Lo/onAddFocusables;->onRelationshipValidationResult:Lo/onAddFocusables$extraCallback;

    .line 10215
    iget-object v2, v2, Lo/onAddFocusables$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 145
    invoke-virtual {p0, v0, v2}, Lo/onAddFocusables;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo/onAddFocusables$extraCallback;->extraCallback(Lo/onAddFocusables$extraCallback;Ljava/lang/String;)Lo/onAddFocusables$extraCallback;

    move-result-object v2

    .line 146
    iget-object v3, p0, Lo/onAddFocusables;->asBinder:Ljava/lang/String;

    iget-object v4, p0, Lo/onAddFocusables;->ICustomTabsCallback$Stub:Ljava/util/Map;

    move-object v0, v6

    move-object v1, p1

    .line 145
    invoke-direct/range {v0 .. v5}, Lo/dispatchLastEvent;-><init>(Landroidx/fragment/app/Fragment;Lo/onAddFocusables$extraCallback;Ljava/lang/String;Ljava/util/Map;Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V

    .line 147
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 148
    new-instance p1, Lo/onAddFocusables$onRelationshipValidationResult;

    invoke-direct {p1, v6, p0}, Lo/onAddFocusables$onRelationshipValidationResult;-><init>(Lo/dispatchLastEvent;Lo/onAddFocusables;)V

    check-cast p1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v6, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 154
    sget-object p1, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 11000
    sget-object p1, Lo/setSplitTrack;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 154
    new-instance v0, Lo/getThumbTintList;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    .line 198
    sget-object v0, Lo/getTextOff;->onNavigationEvent:Lo/getTextOff;

    invoke-static {}, Lo/getTextOff;->ICustomTabsCallback()V

    .line 199
    invoke-super {p0}, Lo/getSplitTrack;->onPostMessage()V

    return-void
.end method

.method public final onPostMessage(Landroidx/fragment/app/Fragment;)V
    .locals 8

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showSheet"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CommonOrderStatusLro"

    invoke-static {v2, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_c

    .line 121
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v2, "fragment.lifecycle"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    new-instance v2, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v2}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 234
    new-instance v4, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v4}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    iput-object v1, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 235
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v1, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v5, 0x1

    if-ltz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_a

    .line 2052
    iget-object v1, p0, Lo/onAddFocusables;->asInterface:Ljava/lang/String;

    .line 122
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const v7, 0x4b8cc42

    if-eq v6, v7, :cond_7

    const v3, 0x535c1c1

    if-eq v6, v3, :cond_5

    const v3, 0x122f5e9f

    if-eq v6, v3, :cond_3

    goto :goto_3

    :cond_3
    const-string v3, "RESULT_FAILED"

    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 8034
    iget-object v1, p0, Lo/onAddFocusables;->onMessageChannelReady:Lo/createFullSpanItemFromStart;

    if-eqz v1, :cond_4

    .line 133
    invoke-virtual {v1}, Lo/onAudioInfoChanged;->m_()V

    .line 9034
    :cond_4
    invoke-virtual {p0, p1}, Lo/onAddFocusables;->onMessageChannelReady(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    :cond_5
    const-string v3, "RESULT_SUCCESS"

    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 6034
    iget-object v1, p0, Lo/onAddFocusables;->onMessageChannelReady:Lo/createFullSpanItemFromStart;

    if-eqz v1, :cond_6

    .line 129
    invoke-virtual {v1}, Lo/onAudioInfoChanged;->m_()V

    .line 7034
    :cond_6
    invoke-virtual {p0, p1}, Lo/onAddFocusables;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)V

    goto :goto_3

    :cond_7
    const-string v6, "START"

    .line 123
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 124
    new-instance v1, Lo/createFullSpanItemFromStart;

    invoke-direct {v1}, Lo/createFullSpanItemFromStart;-><init>()V

    .line 3034
    iput-object v1, p0, Lo/onAddFocusables;->onMessageChannelReady:Lo/createFullSpanItemFromStart;

    if-eqz v1, :cond_8

    .line 125
    invoke-virtual {v1, v3}, Lo/onAudioInfoChanged;->extraCallback(Z)V

    .line 5034
    :cond_8
    iget-object v1, p0, Lo/onAddFocusables;->onMessageChannelReady:Lo/createFullSpanItemFromStart;

    if-eqz v1, :cond_9

    .line 126
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    const-string v3, "progress"

    invoke-virtual {v1, p1, v3}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 237
    :cond_9
    :goto_3
    iput-boolean v5, v2, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_4

    .line 238
    :cond_a
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_b

    .line 239
    new-instance v1, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;

    invoke-direct {v1, v0, v2, p0, p1}, Lcom/dreamplug/fabrik/ui/rent/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/onAddFocusables;Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 240
    iget-object p1, v4, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/createCallback;

    check-cast p1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v0, p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 242
    :cond_b
    :goto_4
    new-instance p1, Lo/onAddFocusables$asInterface;

    invoke-direct {p1, v4, v0}, Lo/onAddFocusables$asInterface;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    :cond_c
    return-void
.end method

.method public final run()V
    .locals 0

    .line 25071
    invoke-static {p0}, Lo/onAddFocusables;->onMessageChannelReady(Lo/onAddFocusables;)V

    return-void
.end method
