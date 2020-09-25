.class public final Lcom/cred/pay/ui/visa/JusPayWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/cred/pay/ui/visa/JusPayWrapper;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "(Landroidx/fragment/app/FragmentActivity;Landroid/view/ViewGroup;)V",
        "getActivity",
        "()Landroidx/fragment/app/FragmentActivity;",
        "getViewGroup",
        "()Landroid/view/ViewGroup;",
        "onCreate",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onDestroy",
        "Companion",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static ICustomTabsCallback:Lin/juspay/services/HyperServices;

.field public static final extraCallback:Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;

.field private static onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;>;"
        }
    .end annotation
.end field

.field private static onPostMessage:Z

.field private static onTransact:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/addWrite<",
            "Ljava/lang/String;",
            "Lo/onDisconnectSetValue<",
            "Lorg/json/JSONObject;",
            "Lo/addWrites;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final onMessageChannelReady:Lo/onSessionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;-><init>(B)V

    sput-object v0, Lcom/cred/pay/ui/visa/JusPayWrapper;->extraCallback:Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/cred/pay/ui/visa/JusPayWrapper;->onNavigationEvent:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cred/pay/ui/visa/JusPayWrapper;->onTransact:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lo/onSessionEvent;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewGroup"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cred/pay/ui/visa/JusPayWrapper;->onMessageChannelReady:Lo/onSessionEvent;

    .line 30
    invoke-virtual {p1}, Lo/getMediaDescription;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    return-void
.end method

.method public static final synthetic ICustomTabsCallback()Ljava/util/ArrayList;
    .locals 1

    .line 27
    sget-object v0, Lcom/cred/pay/ui/visa/JusPayWrapper;->onTransact:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic extraCallback()Lin/juspay/services/HyperServices;
    .locals 1

    .line 27
    sget-object v0, Lcom/cred/pay/ui/visa/JusPayWrapper;->ICustomTabsCallback:Lin/juspay/services/HyperServices;

    return-object v0
.end method

.method public static final synthetic onMessageChannelReady(Z)V
    .locals 0

    .line 27
    sput-boolean p0, Lcom/cred/pay/ui/visa/JusPayWrapper;->onPostMessage:Z

    return-void
.end method

.method public static final synthetic onMessageChannelReady()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/cred/pay/ui/visa/JusPayWrapper;->onPostMessage:Z

    return v0
.end method

.method public static final synthetic onNavigationEvent()Ljava/util/List;
    .locals 1

    .line 27
    sget-object v0, Lcom/cred/pay/ui/visa/JusPayWrapper;->onNavigationEvent:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 14

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object p1, Lcom/cred/pay/ui/visa/JusPayWrapper;->ICustomTabsCallback:Lin/juspay/services/HyperServices;

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lin/juspay/services/HyperServices;

    iget-object v0, p0, Lcom/cred/pay/ui/visa/JusPayWrapper;->onMessageChannelReady:Lo/onSessionEvent;

    invoke-direct {p1, v0}, Lin/juspay/services/HyperServices;-><init>(Lo/onSessionEvent;)V

    sput-object p1, Lcom/cred/pay/ui/visa/JusPayWrapper;->ICustomTabsCallback:Lin/juspay/services/HyperServices;

    .line 1029
    new-instance p1, Lcom/cred/pay/repository/visa/VisaPayloadWrapper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/cred/pay/repository/visa/InitPayload;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7f

    const/4 v13, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/cred/pay/repository/visa/InitPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v4, v0

    check-cast v4, Lo/MenuPopupWindow;

    const/4 v5, 0x3

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/cred/pay/repository/visa/VisaPayloadWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/MenuPopupWindow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    invoke-static {p1}, Lo/extraCallback;->ICustomTabsCallback(Lcom/cred/pay/repository/visa/VisaPayloadWrapper;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "JusPayInit"

    .line 39
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCreate() called with: payload = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tag"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    invoke-static {v0, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/cred/pay/ui/visa/JusPayWrapper;->ICustomTabsCallback:Lin/juspay/services/HyperServices;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cred/pay/ui/visa/JusPayWrapper;->onMessageChannelReady:Lo/onSessionEvent;

    new-instance v2, Lcom/cred/pay/ui/visa/JusPayWrapper$extraCallback;

    invoke-direct {v2}, Lcom/cred/pay/ui/visa/JusPayWrapper$extraCallback;-><init>()V

    check-cast v2, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-virtual {v0, v1, p1, v2}, Lin/juspay/services/HyperServices;->initiate(Lo/onSessionEvent;Lorg/json/JSONObject;Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V

    :cond_0
    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget-object p1, Lcom/cred/pay/ui/visa/JusPayWrapper;->ICustomTabsCallback:Lin/juspay/services/HyperServices;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lin/juspay/services/HyperServices;->terminate()V

    :cond_0
    const/4 p1, 0x0

    .line 1107
    invoke-static {p1}, Lcom/cred/pay/ui/visa/JusPayWrapper$onMessageChannelReady;->ICustomTabsCallback(Z)V

    const/4 p1, 0x0

    .line 104
    sput-object p1, Lcom/cred/pay/ui/visa/JusPayWrapper;->ICustomTabsCallback:Lin/juspay/services/HyperServices;

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method
