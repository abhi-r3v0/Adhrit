.class public final Lo/layoutChildLeft;
.super Lo/getSplitTrack;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/layoutChildLeft$extraCallback;
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
.field public ICustomTabsCallback:D

.field public ICustomTabsCallback$Stub:Ljava/lang/String;

.field public ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

.field public final ICustomTabsService:Ljava/lang/String;

.field public asBinder:Lo/evictionCount;

.field asInterface:Ljava/io/Closeable;

.field public extraCallback:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

.field private final getInterfaceDescriptor:Lo/isSameListener;

.field private final newSession:Lo/setPlaybackToRemote;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPlaybackToRemote<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public onMessageChannelReady:Ljava/lang/String;

.field public onPostMessage:Landroid/os/Handler;

.field public final onRelationshipValidationResult:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public onTransact:Lo/getViewListMeasuredWidth;

.field private warmup:Lo/warmup;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "lob"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lo/getSplitTrack;-><init>()V

    iput-object p1, p0, Lo/layoutChildLeft;->ICustomTabsService:Ljava/lang/String;

    .line 61
    new-instance p1, Lo/layoutChildLeft$onNavigationEvent;

    invoke-direct {p1, p0}, Lo/layoutChildLeft$onNavigationEvent;-><init>(Lo/layoutChildLeft;)V

    check-cast p1, Lo/setPlaybackToRemote;

    iput-object p1, p0, Lo/layoutChildLeft;->newSession:Lo/setPlaybackToRemote;

    const-string p1, "START"

    .line 72
    iput-object p1, p0, Lo/layoutChildLeft;->ICustomTabsCallback$Stub:Ljava/lang/String;

    .line 79
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/layoutChildLeft;->onRelationshipValidationResult:Lo/setActive;

    .line 80
    sget-object p1, Lo/layoutChildLeft$onPostMessage;->extraCallback:Lo/layoutChildLeft$onPostMessage;

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 80
    iput-object v0, p0, Lo/layoutChildLeft;->getInterfaceDescriptor:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic onMessageChannelReady(Lo/layoutChildLeft;)V
    .locals 3

    .line 14000
    iget-object v0, p0, Lo/layoutChildLeft;->getInterfaceDescriptor:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getCurrentContentInsetEnd;

    .line 13128
    iget-object v1, p0, Lo/layoutChildLeft;->onMessageChannelReady:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, "orderId"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0, v1}, Lo/getCurrentContentInsetEnd;->onNavigationEvent(Ljava/lang/String;)Lo/tryBindViewHolderByDeadline;

    move-result-object v0

    .line 13129
    new-instance v1, Lo/layoutChildLeft$ICustomTabsCallback;

    invoke-direct {v1, p0}, Lo/layoutChildLeft$ICustomTabsCallback;-><init>(Lo/layoutChildLeft;)V

    check-cast v1, Lo/RecyclerView$Recycler;

    const-string p0, "OrderStatus"

    const-string/jumbo v2, "tag"

    invoke-static {p0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callback"

    invoke-static {v1, p0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16044
    iget-object p0, v0, Lo/tryBindViewHolderByDeadline;->onMessageChannelReady:Lo/clearScrap;

    new-instance v0, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;

    invoke-direct {v0, v1}, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;-><init>(Lo/RecyclerView$Recycler;)V

    check-cast v0, Lo/getScrapOrCachedViewForId;

    invoke-interface {p0, v0}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method

.method private final onNavigationEvent()Ljava/lang/String;
    .locals 5

    .line 232
    sget-object v0, Lo/AsyncListUtil$ViewCallback;->onPostMessage:Lo/AsyncListUtil$ViewCallback;

    invoke-static {}, Lo/AsyncListUtil$ViewCallback;->onPostMessage()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lo/layoutChildLeft;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dreamplug/androidapp/payments/model/OrderItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/payments/model/OrderItem;->getIssuer_code()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lo/layoutChildLeft;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/androidapp/payments/model/OrderItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/payments/model/OrderItem;->getIssuer()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :cond_2
    :goto_1
    if-eqz v2, :cond_7

    .line 235
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_4

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/layoutChildLeft;->extraCallback:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    const-string v2, "paymentItem"

    if-nez v1, :cond_5

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v1

    iget-object v1, v1, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->account_number:Ljava/lang/String;

    iget-object v4, p0, Lo/layoutChildLeft;->extraCallback:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez v4, :cond_6

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v4}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v2

    iget-object v2, v2, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->brand:Ljava/lang/String;

    const/16 v4, 0x9

    .line 5178
    invoke-static {v1, v2, v4}, Lo/MediaBrowserCompat$MediaBrowserImplApi23$extraCallback;->onPostMessage(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CardUtils.getCardDisplay\u2026ntItem.paymentMode.brand)"

    .line 238
    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "-"

    const-string v4, " "

    .line 6075
    invoke-static {v1, v2, v4, v3}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    const-string v0, ""

    :goto_3
    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroidx/fragment/app/Fragment;)V
    .locals 18

    move-object/from16 v0, p0

    .line 190
    iget-object v6, v0, Lo/layoutChildLeft;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    if-eqz v6, :cond_2

    const-string/jumbo v1, "state_unsuccessful_payment"

    .line 191
    invoke-static {v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 193
    sget-object v1, Lo/getCurrentContentInsetStart;->onPostMessage:Lo/getCurrentContentInsetStart$extraCallback;

    iget-object v1, v0, Lo/layoutChildLeft;->extraCallback:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez v1, :cond_1

    const-string v2, "paymentItem"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v1

    const-string v2, "NA"

    .line 3010
    invoke-static {v1, v2}, Lo/getCurrentContentInsetStart$extraCallback;->extraCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 194
    new-instance v7, Lo/dispatchLastEvent;

    .line 195
    iget-wide v1, v0, Lo/layoutChildLeft;->ICustomTabsCallback:D

    .line 196
    sget-object v3, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v3, 0x7f130373

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v9, v0, Lo/layoutChildLeft;->ICustomTabsCallback:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/Number;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xfc

    invoke-static/range {v10 .. v17}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v4, v8

    invoke-static {v3, v4}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 197
    sget-object v4, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v4, 0x7f130374

    invoke-static {v4}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-virtual {v0, v1, v2, v3, v4}, Lo/layoutChildLeft;->onMessageChannelReady(DLjava/lang/String;Ljava/lang/String;)Lo/onAddFocusables$extraCallback;

    move-result-object v3

    .line 198
    iget-object v4, v0, Lo/layoutChildLeft;->ICustomTabsService:Ljava/lang/String;

    move-object v1, v7

    move-object/from16 v2, p1

    .line 194
    invoke-direct/range {v1 .. v6}, Lo/dispatchLastEvent;-><init>(Landroidx/fragment/app/Fragment;Lo/onAddFocusables$extraCallback;Ljava/lang/String;Ljava/util/Map;Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V

    .line 201
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 202
    new-instance v1, Lo/layoutChildLeft$asInterface;

    invoke-direct {v1, v0}, Lo/layoutChildLeft$asInterface;-><init>(Lo/layoutChildLeft;)V

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v7, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 205
    sget-object v1, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 4000
    sget-object v1, Lo/setSplitTrack;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setActive;

    .line 205
    new-instance v2, Lo/getThumbTintList;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method final extraCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dreamplug/androidapp/onboarding/PaymentMode;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 314
    sget-object v0, Lo/getCurrentContentInsetStart;->onPostMessage:Lo/getCurrentContentInsetStart$extraCallback;

    const-string v0, "NA"

    .line 13010
    invoke-static {p1, v0}, Lo/getCurrentContentInsetStart$extraCallback;->extraCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "is_error"

    .line 315
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final extraCallback()V
    .locals 4

    .line 93
    new-instance v0, Lo/evictionCount;

    invoke-direct {v0}, Lo/evictionCount;-><init>()V

    iput-object v0, p0, Lo/layoutChildLeft;->asBinder:Lo/evictionCount;

    if-nez v0, :cond_0

    const-string v1, "loaderSeenTimeTracker"

    .line 94
    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/evictionCount;->onPostMessage()V

    .line 95
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 1000
    sget-object v0, Lo/isInLayout;->onMessageChannelReady:Lo/isHidden;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "property"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object v0, v0, Lo/hasOptionsMenu;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getJsonObjectFrom;

    .line 1020
    invoke-interface {v0}, Lo/getJsonObjectFrom;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    .line 1000
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 95
    new-instance v2, Lo/layoutChildLeft$getInterfaceDescriptor;

    invoke-direct {v2, p0}, Lo/layoutChildLeft$getInterfaceDescriptor;-><init>(Lo/layoutChildLeft;)V

    check-cast v2, Lo/getServerTime;

    const-string v3, "command"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2018
    new-instance v3, Lo/updateItemAt$extraCallback;

    invoke-direct {v3, v2}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-static {v0, v1, v3}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    move-result-object v0

    .line 95
    iput-object v0, p0, Lo/layoutChildLeft;->asInterface:Ljava/io/Closeable;

    .line 98
    sget-object v0, Lo/resize;->extraCallback:Lo/resize;

    invoke-static {}, Lo/resize;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lo/layoutChildLeft;->newSession:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 16260
    invoke-virtual {p0}, Lo/getSplitTrack;->onPostMessage()V

    return-void
.end method

.method public final onMessageChannelReady(DLjava/lang/String;Ljava/lang/String;)Lo/onAddFocusables$extraCallback;
    .locals 28

    .line 288
    sget-object v0, Lo/length;->extraCallback:Lo/length;

    move-object/from16 v1, p0

    iget-object v0, v1, Lo/layoutChildLeft;->extraCallback:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez v0, :cond_0

    const-string v2, "paymentItem"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v0

    iget-object v6, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->id:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e8

    const-string v2, "control"

    const-string v3, "payment"

    const-string v4, "payment_failure"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v10}, Lo/length;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .line 289
    new-instance v0, Lo/onAddFocusables$extraCallback;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 291
    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v2, 0x7f130473

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v17

    .line 292
    invoke-direct/range {p0 .. p0}, Lo/layoutChildLeft;->onNavigationEvent()Ljava/lang/String;

    move-result-object v18

    .line 295
    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v2, 0x7f1304f5

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v24

    .line 296
    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v2, 0x7f1304f4

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v25

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 11122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v4, "context"

    invoke-static {v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    const v4, 0x7f1304ef

    .line 297
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "support"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v27, 0x61c

    const-string v23, "payment_status"

    move-object v11, v0

    move-object/from16 v13, p3

    move-object/from16 v26, p4

    .line 289
    invoke-direct/range {v11 .. v27}, Lo/onAddFocusables$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 113
    sget-object v0, Lo/resize;->extraCallback:Lo/resize;

    invoke-static {}, Lo/resize;->ICustomTabsCallback()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lo/layoutChildLeft;->newSession:Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 114
    iget-object v0, p0, Lo/layoutChildLeft;->asInterface:Ljava/io/Closeable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 2119
    :cond_0
    iget-object v0, p0, Lo/layoutChildLeft;->onPostMessage:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-string v1, "handler"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady(Landroidx/fragment/app/Fragment;)V
    .locals 17

    move-object/from16 v0, p0

    .line 211
    iget-object v1, v0, Lo/layoutChildLeft;->warmup:Lo/warmup;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    .line 213
    sget-object v1, Lo/getCurrentContentInsetStart;->onPostMessage:Lo/getCurrentContentInsetStart$extraCallback;

    iget-object v1, v0, Lo/layoutChildLeft;->extraCallback:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez v1, :cond_3

    const-string v2, "paymentItem"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v1

    const-string v2, "NA"

    .line 4010
    invoke-static {v1, v2}, Lo/getCurrentContentInsetStart$extraCallback;->extraCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 214
    new-instance v1, Lo/dispatchLastEvent;

    .line 215
    iget-wide v2, v0, Lo/layoutChildLeft;->ICustomTabsCallback:D

    .line 216
    sget-object v4, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v4, 0x7f130378

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, v0, Lo/layoutChildLeft;->ICustomTabsCallback:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Number;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    invoke-static/range {v9 .. v16}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v4, v5}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 217
    sget-object v5, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v5, 0x7f13037b

    invoke-static {v5}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v5

    .line 215
    invoke-virtual {v0, v2, v3, v4, v5}, Lo/layoutChildLeft;->onMessageChannelReady(DLjava/lang/String;Ljava/lang/String;)Lo/onAddFocusables$extraCallback;

    move-result-object v4

    .line 218
    iget-object v5, v0, Lo/layoutChildLeft;->ICustomTabsService:Ljava/lang/String;

    .line 220
    iget-object v7, v0, Lo/layoutChildLeft;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    move-object v2, v1

    move-object/from16 v3, p1

    .line 214
    invoke-direct/range {v2 .. v7}, Lo/dispatchLastEvent;-><init>(Landroidx/fragment/app/Fragment;Lo/onAddFocusables$extraCallback;Ljava/lang/String;Ljava/util/Map;Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V

    check-cast v1, Lo/warmup;

    iput-object v1, v0, Lo/layoutChildLeft;->warmup:Lo/warmup;

    if-eqz v1, :cond_4

    .line 221
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 222
    :cond_4
    iget-object v1, v0, Lo/layoutChildLeft;->warmup:Lo/warmup;

    if-eqz v1, :cond_5

    new-instance v2, Lo/layoutChildLeft$onRelationshipValidationResult;

    invoke-direct {v2, v0}, Lo/layoutChildLeft$onRelationshipValidationResult;-><init>(Lo/layoutChildLeft;)V

    check-cast v2, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 225
    :cond_5
    sget-object v1, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 5000
    sget-object v1, Lo/setSplitTrack;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setActive;

    .line 225
    new-instance v2, Lo/getThumbTintList;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final onNavigationEvent(Landroidx/fragment/app/Fragment;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    .line 267
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v7

    const-string v1, "fragment!!.lifecycle"

    invoke-static {v7, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    new-instance v8, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v8}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v8, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 349
    new-instance v9, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v9}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v9, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 350
    invoke-virtual {v7}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 6212
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v10, 0x1

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    .line 6265
    iget-object v6, v0, Lo/layoutChildLeft;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    if-eqz v6, :cond_3

    const-string/jumbo v4, "state_successful_payment"

    .line 269
    invoke-static {v4}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;)V

    .line 270
    new-instance v11, Lo/DefaultItemAnimator;

    .line 7056
    iget-wide v4, v0, Lo/layoutChildLeft;->ICustomTabsCallback:D

    .line 272
    sget-object v12, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v12, 0x7f130382

    new-array v13, v10, [Ljava/lang/Object;

    .line 8056
    iget-wide v14, v0, Lo/layoutChildLeft;->ICustomTabsCallback:D

    .line 272
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Ljava/lang/Number;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xfc

    invoke-static/range {v15 .. v22}, Lo/extraCallback;->extraCallback(Ljava/lang/Number;ZZZLjava/lang/String;Ljava/util/Locale;II)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v13, v1

    invoke-static {v12, v13}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 8287
    invoke-virtual {v0, v4, v5, v1, v3}, Lo/layoutChildLeft;->onMessageChannelReady(DLjava/lang/String;Ljava/lang/String;)Lo/onAddFocusables$extraCallback;

    move-result-object v3

    .line 9052
    iget-object v4, v0, Lo/layoutChildLeft;->ICustomTabsService:Ljava/lang/String;

    .line 274
    sget-object v1, Lo/getCurrentContentInsetStart;->onPostMessage:Lo/getCurrentContentInsetStart$extraCallback;

    .line 9055
    iget-object v1, v0, Lo/layoutChildLeft;->extraCallback:Lcom/dreamplug/androidapp/payments/model/PaymentItem;

    if-nez v1, :cond_2

    const-string v5, "paymentItem"

    invoke-static {v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 274
    :cond_2
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/payments/model/PaymentItem;->getPaymentMode()Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    move-result-object v1

    const-string v5, "NA"

    .line 10010
    invoke-static {v1, v5}, Lo/getCurrentContentInsetStart$extraCallback;->extraCallback(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v1, v11

    move-object/from16 v2, p1

    .line 270
    invoke-direct/range {v1 .. v6}, Lo/DefaultItemAnimator;-><init>(Landroidx/fragment/app/Fragment;Lo/onAddFocusables$extraCallback;Ljava/lang/String;Ljava/util/Map;Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;)V

    .line 276
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 277
    new-instance v1, Lo/layoutChildLeft$asBinder;

    invoke-direct {v1, v0}, Lo/layoutChildLeft$asBinder;-><init>(Lo/layoutChildLeft;)V

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v11, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 280
    sget-object v1, Lo/setSplitTrack;->ICustomTabsService:Lo/setSplitTrack;

    .line 11000
    sget-object v1, Lo/setSplitTrack;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setActive;

    .line 280
    new-instance v2, Lo/getThumbTintList;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 281
    sget-object v1, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->getInterfaceDescriptor()V

    .line 352
    :cond_3
    iput-boolean v10, v8, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_1

    .line 353
    :cond_4
    invoke-virtual {v7}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v1, v3, :cond_5

    .line 354
    new-instance v1, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;

    invoke-direct {v1, v7, v8, v0, v2}, Lcom/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/layoutChildLeft;Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lo/createCallback;

    iput-object v1, v9, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 355
    iget-object v1, v9, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v1, Lo/createCallback;

    check-cast v1, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v7, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 357
    :cond_5
    :goto_1
    new-instance v1, Lo/layoutChildLeft$onTransact;

    invoke-direct {v1, v9, v7}, Lo/layoutChildLeft$onTransact;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 3

    .line 303
    iget-object v0, p0, Lo/layoutChildLeft;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const-string v1, "RESULT_SUCCESS"

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "successful_payment_screen_dismiss"

    .line 304
    invoke-static {v0}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    goto :goto_0

    :cond_0
    const-string v0, "failure_payment_screen_dismiss"

    .line 306
    invoke-static {v0}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 308
    :goto_0
    sget-object v0, Lo/getTextOff;->onNavigationEvent:Lo/getTextOff;

    invoke-static {}, Lo/getTextOff;->ICustomTabsCallback()V

    .line 309
    sget-object v0, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    .line 12046
    sget-object v1, Lo/getShowText;->onPostMessage:Lo/getShowText$extraCallback;

    .line 12320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 12321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    .line 12047
    invoke-virtual {v0}, Lo/getShowText;->onNavigationEvent()V

    .line 310
    :cond_2
    invoke-super {p0}, Lo/getSplitTrack;->onPostMessage()V

    return-void
.end method

.method public final run()V
    .locals 0

    .line 17123
    invoke-static {p0}, Lo/layoutChildLeft;->onMessageChannelReady(Lo/layoutChildLeft;)V

    return-void
.end method
