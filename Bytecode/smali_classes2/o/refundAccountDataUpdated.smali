.class public final Lo/refundAccountDataUpdated;
.super Lo/saveValueToClient;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field static final onNavigationEvent:[Ljava/lang/String;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:Landroid/graphics/Point;

.field private ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/LifestyleComponentAsset;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private asInterface:Landroid/graphics/Point;

.field private final extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/lang/Object;

.field private final onPostMessage:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private onRelationshipValidationResult:Lo/logout;

.field private onTransact:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "2011"

    const-string v1, "1009"

    const-string v2, "3010"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/refundAccountDataUpdated;->onNavigationEvent:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lo/saveValueToClient;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/refundAccountDataUpdated;->onMessageChannelReady:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/refundAccountDataUpdated;->extraCallback:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/refundAccountDataUpdated;->ICustomTabsCallback:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/refundAccountDataUpdated;->asBinder:Ljava/util/Map;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lo/refundAccountDataUpdated;->asInterface:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lo/refundAccountDataUpdated;->ICustomTabsCallback$Stub:Landroid/graphics/Point;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/refundAccountDataUpdated;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lo/getParcel;->IPostMessageService$Stub$Proxy()Lo/getCtas;

    invoke-static {p1, p0}, Lo/getCtas;->onPostMessage(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lo/getParcel;->IPostMessageService$Stub$Proxy()Lo/getCtas;

    invoke-static {p1, p0}, Lo/getCtas;->onMessageChannelReady(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/refundAccountDataUpdated;->onPostMessage:Ljava/lang/ref/WeakReference;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lo/refundAccountDataUpdated;->extraCallback:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "1098"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "3011"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lo/refundAccountDataUpdated;->asBinder:Ljava/util/Map;

    iget-object v0, p0, Lo/refundAccountDataUpdated;->extraCallback:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lo/refundAccountDataUpdated;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lo/refundAccountDataUpdated;->asBinder:Ljava/util/Map;

    iget-object p3, p0, Lo/refundAccountDataUpdated;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/WinningTypes;->ICustomTabsCallback(Landroid/content/Context;)V

    return-void
.end method

.method private final ICustomTabsCallback(I)I
    .locals 2

    iget-object v0, p0, Lo/refundAccountDataUpdated;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v1, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    invoke-interface {v1}, Lo/logout;->getInterfaceDescriptor()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lo/ControlStatementRepo$TransactionItem;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final ICustomTabsCallback(Lo/hideNavigationBar;)V
    .locals 6

    iget-object v0, p0, Lo/refundAccountDataUpdated;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/refundAccountDataUpdated;->onNavigationEvent:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, p0, Lo/refundAccountDataUpdated;->asBinder:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lo/hideNavigationBar;->ICustomTabsCallback$Stub()V

    monitor-exit v0

    return-void

    :cond_2
    new-instance v2, Lo/shareScreenshot;

    invoke-direct {v2, p0, v1}, Lo/shareScreenshot;-><init>(Lo/refundAccountDataUpdated;Landroid/view/View;)V

    instance-of v3, p1, Lo/setPath;

    if-eqz v3, :cond_3

    invoke-virtual {p1, v1, v2}, Lo/hideNavigationBar;->extraCallback(Landroid/view/View;Lo/openAmexWebView;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v1, v2}, Lo/hideNavigationBar;->onMessageChannelReady(Landroid/view/View;Lo/openAmexWebView;)V

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic ICustomTabsCallback(Lo/refundAccountDataUpdated;Lo/hideNavigationBar;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/refundAccountDataUpdated;->ICustomTabsCallback(Lo/hideNavigationBar;)V

    return-void
.end method

.method private final extraCallback(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/refundAccountDataUpdated;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    instance-of v1, v1, Lo/setPath;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    check-cast v1, Lo/setPath;

    invoke-virtual {v1}, Lo/setPath;->asInterface()Lo/logout;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lo/logout;->extraCallback(Landroid/view/View;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final onMessageChannelReady([Ljava/lang/String;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget-object v4, p0, Lo/refundAccountDataUpdated;->extraCallback:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    iget-object v4, p0, Lo/refundAccountDataUpdated;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method static synthetic onPostMessage(Lo/refundAccountDataUpdated;[Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lo/refundAccountDataUpdated;->onMessageChannelReady([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getEventName;)V
    .locals 8

    iget-object v0, p0, Lo/refundAccountDataUpdated;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lo/refundAccountDataUpdated;->extraCallback(Landroid/view/View;)V

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lo/hideNavigationBar;

    if-nez v2, :cond_0

    const-string p1, "Not an instance of native engine. This is most likely a transient error"

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    check-cast p1, Lo/hideNavigationBar;

    invoke-virtual {p1}, Lo/hideNavigationBar;->extraCallback()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v2, p0, Lo/refundAccountDataUpdated;->onPostMessage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/view/View;

    iget-object v2, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    if-eqz v2, :cond_2

    if-eqz v7, :cond_2

    sget-object v2, Lo/WinningTypes;->setSubtitle:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    iget-object v3, p0, Lo/refundAccountDataUpdated;->asBinder:Ljava/util/Map;

    invoke-interface {v2, v7, v3}, Lo/logout;->extraCallback(Landroid/view/View;Ljava/util/Map;)V

    :cond_2
    iget-object v2, p0, Lo/refundAccountDataUpdated;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    instance-of v3, v3, Lo/hideNavigationBar;

    const/4 v4, 0x0

    if-nez v3, :cond_4

    :cond_3
    :goto_0
    monitor-exit v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    check-cast v3, Lo/hideNavigationBar;

    iget-object v5, p0, Lo/refundAccountDataUpdated;->onPostMessage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lo/hideNavigationBar;->getInterfaceDescriptor()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v6, v5}, Lo/Template;->onPostMessage(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lo/hideNavigationBar;->ICustomTabsCallback$Stub$Proxy()Lo/SummaryBankPropertiesJsonAdapter;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3, v4}, Lo/SummaryBankPropertiesJsonAdapter;->onPostMessage(Z)V

    :cond_5
    iget-object v5, p0, Lo/refundAccountDataUpdated;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/LifestyleComponentAsset;

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v5, v3}, Lo/LifestyleComponentAsset;->onNavigationEvent(Lo/LifestyleTemplateProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    :try_start_2
    iget-object v2, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    instance-of v2, v2, Lo/setPath;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    check-cast v2, Lo/setPath;

    invoke-virtual {v2}, Lo/setPath;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    check-cast v2, Lo/setPath;

    invoke-virtual {v2, p1}, Lo/setPath;->extraCallback(Lo/logout;)V

    goto :goto_2

    :cond_6
    iput-object p1, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    instance-of v2, p1, Lo/setPath;

    if-eqz v2, :cond_7

    move-object v2, p1

    check-cast v2, Lo/setPath;

    invoke-virtual {v2, v1}, Lo/setPath;->extraCallback(Lo/logout;)V

    :cond_7
    :goto_2
    const-string v2, "1098"

    const-string v3, "3011"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    :goto_3
    const/4 v3, 0x2

    if-ge v4, v3, :cond_9

    aget-object v3, v2, v4

    iget-object v5, p0, Lo/refundAccountDataUpdated;->asBinder:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_4

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    move-object v2, v1

    :goto_4
    if-nez v2, :cond_a

    const-string v1, "Ad choices asset view is not provided."

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_b

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    :cond_b
    if-eqz v1, :cond_c

    const/4 v2, 0x1

    invoke-virtual {p1, p0, v2}, Lo/hideNavigationBar;->onMessageChannelReady(Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lo/refundAccountDataUpdated;->onTransact:Landroid/view/View;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lo/refundAccountDataUpdated;->asBinder:Ljava/util/Map;

    const-string v3, "1007"

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lo/refundAccountDataUpdated;->onTransact:Landroid/view/View;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lo/refundAccountDataUpdated;->extraCallback:Ljava/util/Map;

    const-string v3, "1007"

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lo/refundAccountDataUpdated;->onTransact:Landroid/view/View;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lo/refundAccountDataUpdated;->onTransact:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_c
    :goto_5
    iget-object v3, p0, Lo/refundAccountDataUpdated;->extraCallback:Ljava/util/Map;

    iget-object v4, p0, Lo/refundAccountDataUpdated;->ICustomTabsCallback:Ljava/util/Map;

    move-object v1, p1

    move-object v2, v7

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lo/hideNavigationBar;->ICustomTabsCallback(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v2, Lo/startChat;

    invoke-direct {v2, p0, p1}, Lo/startChat;-><init>(Lo/refundAccountDataUpdated;Lo/hideNavigationBar;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, v7}, Lo/refundAccountDataUpdated;->extraCallback(Landroid/view/View;)V

    iget-object p1, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    invoke-interface {p1, v7}, Lo/logout;->onPostMessage(Landroid/view/View;)V

    iget-object p1, p0, Lo/refundAccountDataUpdated;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    instance-of v1, v1, Lo/hideNavigationBar;

    if-nez v1, :cond_e

    :cond_d
    :goto_6
    monitor-exit p1

    goto :goto_7

    :cond_e
    iget-object v1, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    check-cast v1, Lo/hideNavigationBar;

    iget-object v2, p0, Lo/refundAccountDataUpdated;->onPostMessage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lo/hideNavigationBar;->getInterfaceDescriptor()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_d

    if-eqz v2, :cond_d

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lo/Template;->onPostMessage(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lo/refundAccountDataUpdated;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/LifestyleComponentAsset;

    if-nez v3, :cond_f

    new-instance v3, Lo/LifestyleComponentAsset;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lo/LifestyleComponentAsset;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lo/refundAccountDataUpdated;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/ref/WeakReference;

    :cond_f
    invoke-virtual {v1}, Lo/hideNavigationBar;->ICustomTabsCallback$Stub$Proxy()Lo/SummaryBankPropertiesJsonAdapter;

    move-result-object v1

    invoke-virtual {v3, v1}, Lo/LifestyleComponentAsset;->extraCallback(Lo/LifestyleTemplateProperties;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :goto_7
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lo/refundAccountDataUpdated;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lo/refundAccountDataUpdated;->onPostMessage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/view/View;

    if-nez v7, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v1, "x"

    iget-object v2, p0, Lo/refundAccountDataUpdated;->asInterface:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v2}, Lo/refundAccountDataUpdated;->ICustomTabsCallback(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "y"

    iget-object v2, p0, Lo/refundAccountDataUpdated;->asInterface:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lo/refundAccountDataUpdated;->ICustomTabsCallback(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "start_x"

    iget-object v2, p0, Lo/refundAccountDataUpdated;->ICustomTabsCallback$Stub:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v2}, Lo/refundAccountDataUpdated;->ICustomTabsCallback(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "start_y"

    iget-object v2, p0, Lo/refundAccountDataUpdated;->ICustomTabsCallback$Stub:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lo/refundAccountDataUpdated;->ICustomTabsCallback(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lo/refundAccountDataUpdated;->onTransact:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/refundAccountDataUpdated;->onTransact:Landroid/view/View;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    instance-of v1, v1, Lo/setPath;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    check-cast v1, Lo/setPath;

    invoke-virtual {v1}, Lo/setPath;->asInterface()Lo/logout;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    check-cast v1, Lo/setPath;

    invoke-virtual {v1}, Lo/setPath;->asInterface()Lo/logout;

    move-result-object v2

    const-string v4, "1007"

    iget-object v6, p0, Lo/refundAccountDataUpdated;->asBinder:Ljava/util/Map;

    :goto_0
    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lo/logout;->extraCallback(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    const-string v4, "1007"

    iget-object v6, p0, Lo/refundAccountDataUpdated;->asBinder:Ljava/util/Map;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    iget-object v2, p0, Lo/refundAccountDataUpdated;->asBinder:Ljava/util/Map;

    invoke-interface {v1, p1, v2, v5, v7}, Lo/logout;->onPostMessage(Landroid/view/View;Ljava/util/Map;Landroid/os/Bundle;Landroid/view/View;)V

    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lo/refundAccountDataUpdated;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/refundAccountDataUpdated;->onPostMessage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    iget-object v3, p0, Lo/refundAccountDataUpdated;->asBinder:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Lo/logout;->onMessageChannelReady(Landroid/view/View;Ljava/util/Map;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onMessageChannelReady()V
    .locals 2

    iget-object v0, p0, Lo/refundAccountDataUpdated;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lo/refundAccountDataUpdated;->onTransact:Landroid/view/View;

    iput-object v1, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    iput-object v1, p0, Lo/refundAccountDataUpdated;->asInterface:Landroid/graphics/Point;

    iput-object v1, p0, Lo/refundAccountDataUpdated;->ICustomTabsCallback$Stub:Landroid/graphics/Point;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onPostMessage(Lo/getEventName;)V
    .locals 2

    iget-object v0, p0, Lo/refundAccountDataUpdated;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {v1, p1}, Lo/logout;->ICustomTabsCallback(Landroid/view/View;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onScrollChanged()V
    .locals 4

    iget-object v0, p0, Lo/refundAccountDataUpdated;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/refundAccountDataUpdated;->onPostMessage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    iget-object v3, p0, Lo/refundAccountDataUpdated;->asBinder:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Lo/logout;->onMessageChannelReady(Landroid/view/View;Ljava/util/Map;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object p1, p0, Lo/refundAccountDataUpdated;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p1

    return v1

    :cond_0
    iget-object v0, p0, Lo/refundAccountDataUpdated;->onPostMessage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    monitor-exit p1

    return v1

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    aget v3, v2, v1

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float/2addr v3, v2

    new-instance v2, Landroid/graphics/Point;

    float-to-int v0, v0

    float-to-int v3, v3

    invoke-direct {v2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lo/refundAccountDataUpdated;->asInterface:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iput-object v2, p0, Lo/refundAccountDataUpdated;->ICustomTabsCallback$Stub:Landroid/graphics/Point;

    :cond_2
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    iget v0, v2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lo/refundAccountDataUpdated;->onRelationshipValidationResult:Lo/logout;

    invoke-interface {v0, p2}, Lo/logout;->extraCallback(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    monitor-exit p1

    return v1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
