.class public final Lo/showErrorLayout;
.super Lo/enableFabrik;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static final onMessageChannelReady:[Ljava/lang/String;


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private ICustomTabsCallback$Stub:Landroid/view/View;

.field private ICustomTabsService:Landroid/graphics/Point;

.field private asBinder:Lo/logout;

.field private final asInterface:Z

.field private extraCallback:Landroid/view/View;

.field private newSession:Landroid/graphics/Point;

.field private onNavigationEvent:Landroid/widget/FrameLayout;

.field private final onPostMessage:Landroid/widget/FrameLayout;

.field private onRelationshipValidationResult:Z

.field private onTransact:Ljava/util/Map;
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

.field private warmup:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/LifestyleComponentAsset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "2011"

    const-string v1, "1009"

    const-string v2, "3010"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/showErrorLayout;->onMessageChannelReady:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 2

    invoke-direct {p0}, Lo/enableFabrik;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/showErrorLayout;->ICustomTabsCallback:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/showErrorLayout;->onRelationshipValidationResult:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lo/showErrorLayout;->ICustomTabsService:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lo/showErrorLayout;->newSession:Landroid/graphics/Point;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/showErrorLayout;->warmup:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lo/showErrorLayout;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-static {}, Lo/getParcel;->IPostMessageService$Stub$Proxy()Lo/getCtas;

    iget-object p1, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-static {p1, p0}, Lo/getCtas;->onPostMessage(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lo/getParcel;->IPostMessageService$Stub$Proxy()Lo/getCtas;

    iget-object p1, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-static {p1, p0}, Lo/getCtas;->onMessageChannelReady(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object p1, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_0

    invoke-static {}, Lo/component20;->asBinder()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    :cond_0
    iget-object p1, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/WinningTypes;->ICustomTabsCallback(Landroid/content/Context;)V

    sget-object p1, Lo/WinningTypes;->setExtras:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lo/showErrorLayout;->asInterface:Z

    return-void
.end method

.method private final ICustomTabsCallback(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lo/setPath;

    if-eqz v1, :cond_0

    check-cast v0, Lo/setPath;

    invoke-virtual {v0}, Lo/setPath;->asInterface()Lo/logout;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lo/logout;->extraCallback(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private final onMessageChannelReady()V
    .locals 5

    iget-object v0, p0, Lo/showErrorLayout;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/showErrorLayout;->asInterface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lo/showErrorLayout;->onRelationshipValidationResult:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lo/showErrorLayout;->onNavigationEvent:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lo/showErrorLayout;->onNavigationEvent:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lo/showErrorLayout;->onRelationshipValidationResult:Z

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

.method private final onNavigationEvent(I)I
    .locals 1

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v0, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    invoke-interface {v0}, Lo/logout;->getInterfaceDescriptor()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lo/ControlStatementRepo$TransactionItem;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/getEventName;
    .locals 3

    iget-object v0, p0, Lo/showErrorLayout;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    :goto_0
    invoke-static {v2}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final extraCallback(Ljava/lang/String;Lo/getEventName;)V
    .locals 3

    invoke-static {p2}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iget-object v0, p0, Lo/showErrorLayout;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1098"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "3011"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    monitor-exit v0

    return-void

    :cond_3
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

.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lo/showErrorLayout;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    invoke-interface {v1}, Lo/logout;->ICustomTabsCallback()V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v1, "x"

    iget-object v2, p0, Lo/showErrorLayout;->ICustomTabsService:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v2}, Lo/showErrorLayout;->onNavigationEvent(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "y"

    iget-object v2, p0, Lo/showErrorLayout;->ICustomTabsService:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lo/showErrorLayout;->onNavigationEvent(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "start_x"

    iget-object v2, p0, Lo/showErrorLayout;->newSession:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0, v2}, Lo/showErrorLayout;->onNavigationEvent(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "start_y"

    iget-object v2, p0, Lo/showErrorLayout;->newSession:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v2}, Lo/showErrorLayout;->onNavigationEvent(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lo/showErrorLayout;->ICustomTabsCallback$Stub:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/showErrorLayout;->ICustomTabsCallback$Stub:Landroid/view/View;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    instance-of v1, v1, Lo/setPath;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    check-cast v1, Lo/setPath;

    invoke-virtual {v1}, Lo/setPath;->asInterface()Lo/logout;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    check-cast v1, Lo/setPath;

    invoke-virtual {v1}, Lo/setPath;->asInterface()Lo/logout;

    move-result-object v2

    const-string v4, "1007"

    iget-object v6, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    iget-object v7, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    :goto_0
    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lo/logout;->extraCallback(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    const-string v4, "1007"

    iget-object v6, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    iget-object v7, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    iget-object v2, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    iget-object v3, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-interface {v1, p1, v2, v5, v3}, Lo/logout;->onPostMessage(Landroid/view/View;Ljava/util/Map;Landroid/os/Bundle;Landroid/view/View;)V

    :cond_3
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

    iget-object v0, p0, Lo/showErrorLayout;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lo/showErrorLayout;->onMessageChannelReady()V

    iget-object v1, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    iget-object v2, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lo/logout;->onMessageChannelReady(Landroid/view/View;Ljava/util/Map;)V

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

.method public final onMessageChannelReady(Lo/getEventName;)V
    .locals 1

    iget-object v0, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {v0, p1}, Lo/logout;->ICustomTabsCallback(Landroid/view/View;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    iget-object v0, p0, Lo/showErrorLayout;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/showErrorLayout;->onNavigationEvent:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/showErrorLayout;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lo/showErrorLayout;->onNavigationEvent:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    iput-object v1, p0, Lo/showErrorLayout;->ICustomTabsCallback$Stub:Landroid/view/View;

    iput-object v1, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    iput-object v1, p0, Lo/showErrorLayout;->ICustomTabsService:Landroid/graphics/Point;

    iput-object v1, p0, Lo/showErrorLayout;->newSession:Landroid/graphics/Point;

    iput-object v1, p0, Lo/showErrorLayout;->warmup:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lo/showErrorLayout;->extraCallback:Landroid/view/View;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onNavigationEvent(Lo/getEventName;I)V
    .locals 0

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object p1

    iget-object p2, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/Template;->onPostMessage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/showErrorLayout;->warmup:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/LifestyleComponentAsset;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo/LifestyleComponentAsset;->extraCallback()V

    :cond_0
    invoke-direct {p0}, Lo/showErrorLayout;->onMessageChannelReady()V

    return-void
.end method

.method public final onPostMessage(Lo/getEventName;)V
    .locals 11

    iget-object v0, p0, Lo/showErrorLayout;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lo/showErrorLayout;->ICustomTabsCallback(Landroid/view/View;)V

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lo/hideNavigationBar;

    if-nez v2, :cond_0

    const-string p1, "Not an instance of native engine. This is most likely a transient error"

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-boolean v2, p0, Lo/showErrorLayout;->asInterface:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lo/showErrorLayout;->onNavigationEvent:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/showErrorLayout;->onNavigationEvent:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lo/showErrorLayout;->onRelationshipValidationResult:Z

    check-cast p1, Lo/hideNavigationBar;

    iget-object v4, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    if-eqz v4, :cond_2

    sget-object v4, Lo/WinningTypes;->setSubtitle:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    iget-object v5, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    invoke-interface {v4, v5, v6}, Lo/logout;->extraCallback(Landroid/view/View;Ljava/util/Map;)V

    :cond_2
    iget-object v4, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    instance-of v4, v4, Lo/hideNavigationBar;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    check-cast v4, Lo/hideNavigationBar;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lo/hideNavigationBar;->getInterfaceDescriptor()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v5

    iget-object v6, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lo/Template;->onPostMessage(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lo/hideNavigationBar;->ICustomTabsCallback$Stub$Proxy()Lo/SummaryBankPropertiesJsonAdapter;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, v3}, Lo/SummaryBankPropertiesJsonAdapter;->onPostMessage(Z)V

    :cond_3
    iget-object v5, p0, Lo/showErrorLayout;->warmup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/LifestyleComponentAsset;

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v5, v4}, Lo/LifestyleComponentAsset;->onNavigationEvent(Lo/LifestyleTemplateProperties;)V

    :cond_4
    iget-object v4, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    instance-of v4, v4, Lo/setPath;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    check-cast v4, Lo/setPath;

    invoke-virtual {v4}, Lo/setPath;->onPostMessage()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    check-cast v4, Lo/setPath;

    invoke-virtual {v4, p1}, Lo/setPath;->extraCallback(Lo/logout;)V

    goto :goto_0

    :cond_5
    iput-object p1, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    instance-of v4, p1, Lo/setPath;

    if-eqz v4, :cond_6

    move-object v4, p1

    check-cast v4, Lo/setPath;

    invoke-virtual {v4, v1}, Lo/setPath;->extraCallback(Lo/logout;)V

    :cond_6
    :goto_0
    iget-object v4, p0, Lo/showErrorLayout;->onNavigationEvent:Landroid/widget/FrameLayout;

    if-nez v4, :cond_7

    monitor-exit v0

    return-void

    :cond_7
    sget-object v4, Lo/WinningTypes;->setSubtitle:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lo/showErrorLayout;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :cond_8
    iget-object v4, p0, Lo/showErrorLayout;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p1}, Lo/hideNavigationBar;->onNavigationEvent()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v5, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    if-eqz v5, :cond_a

    const-string v5, "1098"

    const-string v6, "3011"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x2

    if-ge v6, v7, :cond_a

    aget-object v7, v5, v6

    iget-object v8, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    goto :goto_2

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_a
    move-object v5, v1

    :goto_2
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_b

    check-cast v5, Landroid/view/ViewGroup;

    goto :goto_3

    :cond_b
    move-object v5, v1

    :goto_3
    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p1, p0, v2}, Lo/hideNavigationBar;->onMessageChannelReady(Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lo/showErrorLayout;->ICustomTabsCallback$Stub:Landroid/view/View;

    const/4 v10, -0x1

    if-eqz v4, :cond_f

    iget-object v4, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    const-string v6, "1007"

    new-instance v7, Ljava/lang/ref/WeakReference;

    iget-object v8, p0, Lo/showErrorLayout;->ICustomTabsCallback$Stub:Landroid/view/View;

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lo/showErrorLayout;->ICustomTabsCallback$Stub:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_e
    invoke-virtual {p1}, Lo/hideNavigationBar;->getInterfaceDescriptor()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Lo/getPastDues;

    invoke-direct {v4, v2}, Lo/getPastDues;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lo/showErrorLayout;->ICustomTabsCallback$Stub:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lo/showErrorLayout;->onNavigationEvent:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lo/showErrorLayout;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_f
    :goto_5
    iget-object v5, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    const/4 v7, 0x0

    move-object v4, p1

    move-object v8, p0

    move-object v9, p0

    invoke-virtual/range {v4 .. v9}, Lo/hideNavigationBar;->ICustomTabsCallback(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p0, Lo/showErrorLayout;->asInterface:Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Lo/showErrorLayout;->extraCallback:Landroid/view/View;

    if-nez v2, :cond_10

    new-instance v2, Landroid/view/View;

    iget-object v4, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lo/showErrorLayout;->extraCallback:Landroid/view/View;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v10, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    iget-object v2, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lo/showErrorLayout;->extraCallback:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v2, v4, :cond_11

    iget-object v2, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lo/showErrorLayout;->extraCallback:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_11
    :try_start_1
    invoke-virtual {p1}, Lo/hideNavigationBar;->asBinder()Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    invoke-static {}, Lo/getAccount_number;->onNavigationEvent()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v2, "Privileged processes cannot create HTML overlays."

    invoke-static {v2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    goto :goto_6

    :cond_12
    const-string v4, "Error obtaining overlay."

    invoke-static {v4, v2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    move-object v2, v1

    :goto_7
    if-eqz v2, :cond_13

    iget-object v4, p0, Lo/showErrorLayout;->onNavigationEvent:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lo/showErrorLayout;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-interface {v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_13
    iget-object v2, p0, Lo/showErrorLayout;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v4, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    invoke-virtual {p1, v4}, Lo/hideNavigationBar;->extraCallback(Ljava/util/Map;)V

    iget-object v4, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    if-eqz v4, :cond_15

    sget-object v4, Lo/showErrorLayout;->onMessageChannelReady:[Ljava/lang/String;

    array-length v5, v4

    :goto_8
    if-ge v3, v5, :cond_15

    aget-object v6, v4, v3

    iget-object v7, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_14

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_9

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_15
    :goto_9
    instance-of v3, v1, Landroid/widget/FrameLayout;

    if-nez v3, :cond_16

    invoke-virtual {p1}, Lo/hideNavigationBar;->ICustomTabsCallback$Stub()V

    :goto_a
    monitor-exit v2

    goto :goto_b

    :cond_16
    new-instance v3, Lo/isAppUpdateAvailable;

    invoke-direct {v3, p0, v1}, Lo/isAppUpdateAvailable;-><init>(Lo/showErrorLayout;Landroid/view/View;)V

    instance-of v4, p1, Lo/setPath;

    if-eqz v4, :cond_17

    invoke-virtual {p1, v1, v3}, Lo/hideNavigationBar;->extraCallback(Landroid/view/View;Lo/openAmexWebView;)Z

    goto :goto_a

    :cond_17
    invoke-virtual {p1, v1, v3}, Lo/hideNavigationBar;->onMessageChannelReady(Landroid/view/View;Lo/openAmexWebView;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    :goto_b
    :try_start_4
    iget-object v1, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Lo/hideNavigationBar;->onMessageChannelReady(Landroid/view/View;)V

    iget-object p1, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lo/showErrorLayout;->ICustomTabsCallback(Landroid/view/View;)V

    iget-object p1, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    iget-object v1, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-interface {p1, v1}, Lo/logout;->onPostMessage(Landroid/view/View;)V

    iget-object p1, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    instance-of p1, p1, Lo/hideNavigationBar;

    if-eqz p1, :cond_19

    iget-object p1, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    check-cast p1, Lo/hideNavigationBar;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lo/hideNavigationBar;->getInterfaceDescriptor()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v1

    iget-object v2, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/Template;->onPostMessage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lo/showErrorLayout;->warmup:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LifestyleComponentAsset;

    if-nez v1, :cond_18

    new-instance v1, Lo/LifestyleComponentAsset;

    iget-object v2, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-direct {v1, v2, v3}, Lo/LifestyleComponentAsset;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lo/showErrorLayout;->warmup:Ljava/lang/ref/WeakReference;

    :cond_18
    invoke-virtual {p1}, Lo/hideNavigationBar;->ICustomTabsCallback$Stub$Proxy()Lo/SummaryBankPropertiesJsonAdapter;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/LifestyleComponentAsset;->extraCallback(Lo/LifestyleTemplateProperties;)V

    :cond_19
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public final onScrollChanged()V
    .locals 4

    iget-object v0, p0, Lo/showErrorLayout;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    iget-object v2, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lo/showErrorLayout;->onTransact:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Lo/logout;->onMessageChannelReady(Landroid/view/View;Ljava/util/Map;)V

    :cond_0
    invoke-direct {p0}, Lo/showErrorLayout;->onMessageChannelReady()V

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

    iget-object p1, p0, Lo/showErrorLayout;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p1

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lo/showErrorLayout;->onPostMessage:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    aget v3, v0, v1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    const/4 v4, 0x1

    aget v0, v0, v4

    int-to-float v0, v0

    sub-float/2addr v3, v0

    new-instance v0, Landroid/graphics/Point;

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lo/showErrorLayout;->ICustomTabsService:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    iput-object v0, p0, Lo/showErrorLayout;->newSession:Landroid/graphics/Point;

    :cond_1
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p2, v2, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lo/showErrorLayout;->asBinder:Lo/logout;

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
