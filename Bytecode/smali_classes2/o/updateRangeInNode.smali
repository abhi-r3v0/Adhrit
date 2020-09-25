.class public final Lo/updateRangeInNode;
.super Lo/getSelected;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getSelected<",
        "Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;",
        ">;"
    }
.end annotation


# instance fields
.field private extraCallback:Z

.field private final onMessageChannelReady:Ljava/lang/Object;

.field private onNavigationEvent:I

.field private onPostMessage:Lo/CardValidationResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CardValidationResponse<",
            "Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/CardValidationResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CardValidationResponse<",
            "Lo/NewAddCardViewManager$showCardExpiry$3$onAnimationEnd$$inlined$executeOnResume$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lo/getSelected;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/updateRangeInNode;->onMessageChannelReady:Ljava/lang/Object;

    iput-object p1, p0, Lo/updateRangeInNode;->onPostMessage:Lo/CardValidationResponse;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/updateRangeInNode;->extraCallback:Z

    iput p1, p0, Lo/updateRangeInNode;->onNavigationEvent:I

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/updateRangeInNode;)Lo/CardValidationResponse;
    .locals 0

    iget-object p0, p0, Lo/updateRangeInNode;->onPostMessage:Lo/CardValidationResponse;

    return-object p0
.end method

.method private final onTransact()V
    .locals 3

    iget-object v0, p0, Lo/updateRangeInNode;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lo/updateRangeInNode;->onNavigationEvent:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Z)V

    iget-boolean v1, p0, Lo/updateRangeInNode;->extraCallback:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lo/updateRangeInNode;->onNavigationEvent:I

    if-nez v1, :cond_1

    const-string v1, "No reference is left (including root). Cleaning up engine."

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    new-instance v1, Lo/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;

    invoke-direct {v1, p0}, Lo/CommonOrderStatusLro$showSheet$$inlined$executeOnResume$1;-><init>(Lo/updateRangeInNode;)V

    new-instance v2, Lo/SuggestedAmount$$Parcelable;

    invoke-direct {v2}, Lo/SuggestedAmount$$Parcelable;-><init>()V

    invoke-virtual {p0, v1, v2}, Lo/getSelected;->ICustomTabsCallback(Lo/Supported$$Parcelable;Lo/SuggestedAmountJsonAdapter;)V

    goto :goto_1

    :cond_1
    const-string v1, "There are still references to the engine. Not destroying."

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final extraCallback()Lo/applyTo;
    .locals 4

    new-instance v0, Lo/applyTo;

    invoke-direct {v0, p0}, Lo/applyTo;-><init>(Lo/updateRangeInNode;)V

    iget-object v1, p0, Lo/updateRangeInNode;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lo/Order;

    invoke-direct {v2, p0, v0}, Lo/Order;-><init>(Lo/updateRangeInNode;Lo/applyTo;)V

    new-instance v3, Lo/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;

    invoke-direct {v3, p0, v0}, Lo/CommonOrderStatusLro$showPaymentSuccess$$inlined$executeOnResume$1;-><init>(Lo/updateRangeInNode;Lo/applyTo;)V

    invoke-virtual {p0, v2, v3}, Lo/getSelected;->ICustomTabsCallback(Lo/Supported$$Parcelable;Lo/SuggestedAmountJsonAdapter;)V

    iget v2, p0, Lo/updateRangeInNode;->onNavigationEvent:I

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Z)V

    iget v2, p0, Lo/updateRangeInNode;->onNavigationEvent:I

    add-int/2addr v2, v3

    iput v2, p0, Lo/updateRangeInNode;->onNavigationEvent:I

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onMessageChannelReady()V
    .locals 3

    iget-object v0, p0, Lo/updateRangeInNode;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lo/updateRangeInNode;->onNavigationEvent:I

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Z)V

    const-string v1, "Releasing root reference. JS Engine will be destroyed once other references are released."

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    iput-boolean v2, p0, Lo/updateRangeInNode;->extraCallback:Z

    invoke-direct {p0}, Lo/updateRangeInNode;->onTransact()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final onNavigationEvent()V
    .locals 3

    iget-object v0, p0, Lo/updateRangeInNode;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lo/updateRangeInNode;->onNavigationEvent:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Z)V

    const-string v1, "Releasing 1 reference for JS Engine"

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    iget v1, p0, Lo/updateRangeInNode;->onNavigationEvent:I

    sub-int/2addr v1, v2

    iput v1, p0, Lo/updateRangeInNode;->onNavigationEvent:I

    invoke-direct {p0}, Lo/updateRangeInNode;->onTransact()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
