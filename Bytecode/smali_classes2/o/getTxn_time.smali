.class public final Lo/getTxn_time;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Landroid/app/Activity;

.field private asBinder:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private extraCallback:Z

.field private onMessageChannelReady:Z

.field private final onNavigationEvent:Landroid/view/View;

.field private onPostMessage:Z

.field private onTransact:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getTxn_time;->ICustomTabsCallback:Landroid/app/Activity;

    iput-object p2, p0, Lo/getTxn_time;->onNavigationEvent:Landroid/view/View;

    iput-object p3, p0, Lo/getTxn_time;->onTransact:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p4, p0, Lo/getTxn_time;->asBinder:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private static ICustomTabsCallback(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    return-object p0
.end method

.method private final extraCallback()V
    .locals 2

    iget-boolean v0, p0, Lo/getTxn_time;->onPostMessage:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/getTxn_time;->onTransact:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lo/getTxn_time;->ICustomTabsCallback:Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lo/getTxn_time;->ICustomTabsCallback(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    invoke-static {}, Lo/getParcel;->IPostMessageService$Stub$Proxy()Lo/getCtas;

    iget-object v0, p0, Lo/getTxn_time;->onNavigationEvent:Landroid/view/View;

    iget-object v1, p0, Lo/getTxn_time;->onTransact:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lo/getCtas;->onPostMessage(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lo/getTxn_time;->asBinder:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lo/getTxn_time;->ICustomTabsCallback:Landroid/app/Activity;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lo/getTxn_time;->ICustomTabsCallback(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    invoke-static {}, Lo/getParcel;->IPostMessageService$Stub$Proxy()Lo/getCtas;

    iget-object v0, p0, Lo/getTxn_time;->onNavigationEvent:Landroid/view/View;

    iget-object v1, p0, Lo/getTxn_time;->asBinder:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-static {v0, v1}, Lo/getCtas;->onMessageChannelReady(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/getTxn_time;->onPostMessage:Z

    :cond_4
    return-void
.end method

.method private final onRelationshipValidationResult()V
    .locals 3

    iget-object v0, p0, Lo/getTxn_time;->ICustomTabsCallback:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lo/getTxn_time;->onPostMessage:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lo/getTxn_time;->onTransact:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lo/getTxn_time;->ICustomTabsCallback(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lo/getAccount_number;->extraCallback(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lo/getTxn_time;->asBinder:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lo/getTxn_time;->ICustomTabsCallback:Landroid/app/Activity;

    invoke-static {v1}, Lo/getTxn_time;->ICustomTabsCallback(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/getTxn_time;->onPostMessage:Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/getTxn_time;->extraCallback:Z

    iget-boolean v0, p0, Lo/getTxn_time;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/getTxn_time;->extraCallback()V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/getTxn_time;->extraCallback:Z

    invoke-direct {p0}, Lo/getTxn_time;->onRelationshipValidationResult()V

    return-void
.end method

.method public final onMessageChannelReady(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lo/getTxn_time;->ICustomTabsCallback:Landroid/app/Activity;

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/getTxn_time;->onMessageChannelReady:Z

    invoke-direct {p0}, Lo/getTxn_time;->onRelationshipValidationResult()V

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/getTxn_time;->onMessageChannelReady:Z

    iget-boolean v0, p0, Lo/getTxn_time;->extraCallback:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/getTxn_time;->extraCallback()V

    :cond_0
    return-void
.end method
