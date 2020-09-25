.class public final Lo/setHeight;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0002J\u000e\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0005R*\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R#\u0010\u0013\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00150\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R-\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00150\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u0012\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006#"
    }
    d2 = {
        "Lcom/cred/pay/repository/BankInfo;",
        "",
        "()V",
        "bankInfos",
        "Ljava/util/HashMap;",
        "",
        "Lcom/cred/pay/repository/BankInfoType;",
        "Lkotlin/collections/HashMap;",
        "isFetching",
        "",
        "()Z",
        "setFetching",
        "(Z)V",
        "paymentService",
        "Lcom/cred/pay/repository/PaymentService;",
        "getPaymentService",
        "()Lcom/cred/pay/repository/PaymentService;",
        "paymentService$delegate",
        "Lkotlin/Lazy;",
        "upiConfigLiveData",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/cred/pay/repository/models/JuspaySessionToken;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "getUpiConfigLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "upiConfigMutableLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "getUpiConfigMutableLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "upiConfigMutableLiveData$delegate",
        "fetchUpiConfig",
        "",
        "getType",
        "type",
        "credpayrepository_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/setOnItemClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private static extraCallback:Z

.field public static final onMessageChannelReady:Lo/isSameListener;

.field private static final onNavigationEvent:Lo/isSameListener;

.field public static final onPostMessage:Lo/setHeight;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lo/setHeight;

    invoke-direct {v0}, Lo/setHeight;-><init>()V

    sput-object v0, Lo/setHeight;->onPostMessage:Lo/setHeight;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/setHeight;->ICustomTabsCallback:Ljava/util/HashMap;

    .line 17
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 65
    sget-object v0, Lo/setHeight$onNavigationEvent;->ICustomTabsCallback:Lo/setHeight$onNavigationEvent;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 65
    sput-object v2, Lo/setHeight;->onNavigationEvent:Lo/isSameListener;

    .line 29
    sget-object v0, Lo/setHeight$onMessageChannelReady;->onNavigationEvent:Lo/setHeight$onMessageChannelReady;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 29
    sput-object v1, Lo/setHeight;->onMessageChannelReady:Lo/isSameListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback(Ljava/lang/String;)Lo/setOnItemClickListener;
    .locals 2

    const-string/jumbo v0, "type"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lo/setHeight;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    sget-object v0, Lo/setHeight;->ICustomTabsCallback:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    new-instance v1, Lo/setOnItemClickListener;

    invoke-direct {v1, p0}, Lo/setOnItemClickListener;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_0
    sget-object v0, Lo/setHeight;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    check-cast p0, Lo/setOnItemClickListener;

    return-object p0
.end method

.method public static final synthetic extraCallback(Lo/setHeight;)V
    .locals 4

    .line 3052
    sget-boolean p0, Lo/setHeight;->extraCallback:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 3053
    sput-boolean p0, Lo/setHeight;->extraCallback:Z

    .line 4000
    sget-object v0, Lo/setHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setInputMethodMode;

    .line 4024
    invoke-interface {v0, p0}, Lo/setInputMethodMode;->extraCallback(Z)Lo/clearScrap;

    move-result-object p0

    .line 3055
    sget-object v0, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->extraCallback(IJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object v0

    invoke-interface {p0, v0}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 3056
    new-instance v0, Lo/setHeight$onPostMessage;

    invoke-direct {v0}, Lo/setHeight$onPostMessage;-><init>()V

    check-cast v0, Lo/getScrapOrCachedViewForId;

    invoke-interface {p0, v0}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_0
    return-void
.end method

.method public static onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    sput-boolean v0, Lo/setHeight;->extraCallback:Z

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/setHeight;)Lo/setActive;
    .locals 0

    .line 3000
    sget-object p0, Lo/setHeight;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/setActive;

    return-object p0
.end method
