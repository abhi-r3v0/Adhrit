.class public final Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cred/pay/ui/visa/JusPayWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J2\u0010\u0019\u001a\u00020\u00082\n\u0010\u001a\u001a\u00060\u0004j\u0002`\u00142\u001c\u0010\u001b\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0015j\u0004\u0018\u0001`\u0017H\u0002JD\u0010\u001c\u001a\u00020\u00082\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e2.\u0010 \u001a*\u0012\u001c\u0012\u001a\u0012\u0008\u0012\u00060\u0004j\u0002`\u0014\u0012\u0004\u0012\u00020\"\u0018\u00010!j\u0004\u0018\u0001`#\u0012\u0004\u0012\u00020\u00080\u0015j\u0002`$J\u0006\u0010%\u001a\u00020\u000cJ\u0016\u0010&\u001a\u00020\u00082\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002JJ\u0010(\u001a\u00020\u00082\u0006\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u00010\u00162\u001e\u0008\u0002\u0010\u001b\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0015j\u0004\u0018\u0001`\u0017J\u000e\u00100\u001a\u00020\u00082\u0006\u0010)\u001a\u00020*JH\u00101\u001a\u00020\u00082\u0006\u00102\u001a\u0002032\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010*2\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010,2\u001e\u0008\u0002\u0010\u001b\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0015j\u0004\u0018\u0001`\u0017H\u0002JR\u00101\u001a\u00020\u00082\u0006\u00104\u001a\u00020\u00162\n\u0010\u001a\u001a\u00060\u0004j\u0002`\u00142\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010*2\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010,2\u001e\u0008\u0002\u0010\u001b\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0015j\u0004\u0018\u0001`\u0017J0\u00105\u001a\u00020\u00082\u0006\u00106\u001a\u0002072\u0006\u0010)\u001a\u00020*2\u0018\u0010\u001b\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0004\u0012\u00020\u00080\u0015j\u0002`\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c@BX\u0082\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010Rj\u0010\u0011\u001a^\u0012*\u0012(\u0012\u0008\u0012\u00060\u0004j\u0002`\u0014\u0012\u001a\u0012\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0015j\u0004\u0018\u0001`\u00170\u00130\u0012j.\u0012*\u0012(\u0012\u0008\u0012\u00060\u0004j\u0002`\u0014\u0012\u001a\u0012\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0015j\u0004\u0018\u0001`\u00170\u0013`\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Lcom/cred/pay/ui/visa/JusPayWrapper$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "blockList",
        "",
        "Lkotlin/Function0;",
        "",
        "hyperServices",
        "Lin/juspay/services/HyperServices;",
        "value",
        "",
        "isInitialized",
        "()Z",
        "setInitialized",
        "(Z)V",
        "responseListenerList",
        "Ljava/util/ArrayList;",
        "Lkotlin/Pair;",
        "Lcom/cred/pay/ui/visa/RequestId;",
        "Lkotlin/Function1;",
        "Lorg/json/JSONObject;",
        "Lcom/cred/pay/ui/visa/ResponseCallback;",
        "Lkotlin/collections/ArrayList;",
        "addEventListener",
        "requestId",
        "responseCallback",
        "checkEligibility",
        "cards",
        "",
        "Lcom/cred/pay/repository/visa/EligibilityPayload$Card;",
        "result",
        "Landroid/util/ArrayMap;",
        "Lcom/cred/pay/repository/visa/ViesEligibilityResponse;",
        "Lcom/cred/pay/ui/visa/EligibilityStatus;",
        "Lcom/cred/pay/ui/visa/EligibilityResponseCallback;",
        "onBackPressed",
        "onInitDone",
        "block",
        "payVies",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "payload",
        "Lcom/cred/pay/repository/visa/ViesPayPayload;",
        "providerResponse",
        "preFetch",
        "processRequest",
        "visaPayloadWrapper",
        "Lcom/cred/pay/repository/visa/VisaPayloadWrapper;",
        "requestJson",
        "startJustPay",
        "credJustPaySafe",
        "Lcom/cred/pay/repository/visa/CredJustPaySafe;",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback(Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 112
    invoke-static {}, Lcom/cred/pay/ui/visa/JusPayWrapper;->onMessageChannelReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 113
    :goto_0
    invoke-static {p0}, Lcom/cred/pay/ui/visa/JusPayWrapper;->onMessageChannelReady(Z)V

    if-eqz v0, :cond_1

    .line 115
    invoke-static {}, Lcom/cred/pay/ui/visa/JusPayWrapper;->onNavigationEvent()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 215
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getServerTime;

    .line 115
    invoke-interface {v0}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    goto :goto_1

    .line 116
    :cond_1
    invoke-static {}, Lcom/cred/pay/ui/visa/JusPayWrapper;->onNavigationEvent()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Z)V
    .locals 0

    .line 107
    invoke-static {p0}, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;->ICustomTabsCallback(Z)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lorg/json/JSONObject;Ljava/lang/String;Lo/onSessionEvent;Landroid/view/ViewGroup;Lo/onDisconnectSetValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lo/onSessionEvent;",
            "Landroid/view/ViewGroup;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Lorg/json/JSONObject;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string p4, "requestJson"

    invoke-static {p1, p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "requestId"

    invoke-static {p2, p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1156
    invoke-static {}, Lcom/cred/pay/ui/visa/JusPayWrapper;->ICustomTabsCallback()Ljava/util/ArrayList;

    move-result-object p4

    .line 2043
    new-instance v0, Lo/addWrite;

    invoke-direct {v0, p2, p5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1156
    invoke-virtual {p4, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance p2, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onMessageChannelReady;

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onMessageChannelReady;-><init>(Lorg/json/JSONObject;Lo/onSessionEvent;Landroid/view/ViewGroup;)V

    check-cast p2, Lo/getServerTime;

    .line 3110
    invoke-static {}, Lcom/cred/pay/ui/visa/JusPayWrapper;->onMessageChannelReady()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2187
    invoke-interface {p2}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    return-void

    .line 2189
    :cond_0
    invoke-static {}, Lcom/cred/pay/ui/visa/JusPayWrapper;->onNavigationEvent()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onNavigationEvent(Ljava/util/List;Lo/onDisconnectSetValue;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cred/pay/repository/visa/EligibilityPayload$Card;",
            ">;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lo/createDragToOpenListener;",
            ">;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cards"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance v0, Lcom/cred/pay/repository/visa/VisaPayloadWrapper;

    new-instance v7, Lcom/cred/pay/repository/visa/EligibilityPayload;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/cred/pay/repository/visa/EligibilityPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v7

    check-cast v4, Lo/MenuPopupWindow;

    const-string v2, "in.juspay.vies"

    const/4 v5, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/cred/pay/repository/visa/VisaPayloadWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/MenuPopupWindow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 161
    move-object v1, p0

    check-cast v1, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;

    new-instance v2, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onNavigationEvent;

    invoke-direct {v2, p1, p2}, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady$onNavigationEvent;-><init>(Ljava/util/List;Lo/onDisconnectSetValue;)V

    move-object v8, v2

    check-cast v8, Lo/onDisconnectSetValue;

    .line 4021
    iget-object v5, v0, Lcom/cred/pay/repository/visa/VisaPayloadWrapper;->extraCallback:Ljava/lang/String;

    .line 3132
    invoke-static {v0}, Lo/extraCallback;->ICustomTabsCallback(Lcom/cred/pay/repository/visa/VisaPayloadWrapper;)Lorg/json/JSONObject;

    move-result-object v4

    .line 3133
    move-object v3, v1

    check-cast v3, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;->onMessageChannelReady(Lorg/json/JSONObject;Ljava/lang/String;Lo/onSessionEvent;Landroid/view/ViewGroup;Lo/onDisconnectSetValue;)V

    return-void
.end method
