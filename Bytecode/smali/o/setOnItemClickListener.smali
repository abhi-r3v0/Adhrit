.class public final Lo/setOnItemClickListener;
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
        "\u0000G\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0014\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u0012\u0010\u0018\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u0010J\u001e\u0010\u0019\u001a\u001a\u0012\u0016\u0012\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0004\u0012\u00020\u001b0\u001a0\u0010R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0015\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/cred/pay/repository/BankInfoType;",
        "",
        "type",
        "",
        "(Ljava/lang/String;)V",
        "isFetching",
        "",
        "paymentService",
        "Lcom/cred/pay/repository/PaymentService;",
        "getPaymentService",
        "()Lcom/cred/pay/repository/PaymentService;",
        "paymentService$delegate",
        "Lkotlin/Lazy;",
        "getType",
        "()Ljava/lang/String;",
        "upiBankListMutableLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
        "upiBankListMutableLiveDataWithErrorSupport",
        "com/cred/pay/repository/BankInfoType$upiBankListMutableLiveDataWithErrorSupport$1",
        "Lcom/cred/pay/repository/BankInfoType$upiBankListMutableLiveDataWithErrorSupport$1;",
        "fetchData",
        "",
        "getBankInfo",
        "getBankInfoWithErrorSupport",
        "Lcom/dreamplug/network/internals/call/CallResult;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "credpayrepository_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/util/List<",
            "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
            ">;>;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/isSameListener;

.field public final onMessageChannelReady:Lo/setOnItemClickListener$ICustomTabsCallback;

.field private final onNavigationEvent:Ljava/lang/String;

.field onPostMessage:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setOnItemClickListener;->onNavigationEvent:Ljava/lang/String;

    .line 16
    sget-object p1, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 64
    sget-object p1, Lo/setOnItemClickListener$onMessageChannelReady;->onMessageChannelReady:Lo/setOnItemClickListener$onMessageChannelReady;

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 64
    iput-object v0, p0, Lo/setOnItemClickListener;->extraCallback:Lo/isSameListener;

    .line 18
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/setOnItemClickListener;->ICustomTabsCallback:Lo/setActive;

    .line 20
    new-instance p1, Lo/setOnItemClickListener$ICustomTabsCallback;

    invoke-direct {p1}, Lo/setOnItemClickListener$ICustomTabsCallback;-><init>()V

    iput-object p1, p0, Lo/setOnItemClickListener;->onMessageChannelReady:Lo/setOnItemClickListener$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 5

    .line 47
    iget-boolean v0, p0, Lo/setOnItemClickListener;->onPostMessage:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/setOnItemClickListener;->ICustomTabsCallback:Lo/setActive;

    .line 1320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lo/setOnItemClickListener;->onPostMessage:Z

    .line 2000
    iget-object v0, p0, Lo/setOnItemClickListener;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setInputMethodMode;

    .line 49
    iget-object v1, p0, Lo/setOnItemClickListener;->onNavigationEvent:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/setInputMethodMode;->onMessageChannelReady(Ljava/lang/String;)Lo/clearScrap;

    move-result-object v0

    .line 50
    sget-object v1, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->extraCallback(IJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 51
    new-instance v1, Lo/setOnItemClickListener$onPostMessage;

    invoke-direct {v1, p0}, Lo/setOnItemClickListener$onPostMessage;-><init>(Lo/setOnItemClickListener;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_1
    return-void
.end method
