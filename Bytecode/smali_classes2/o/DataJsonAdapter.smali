.class public final Lo/DataJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/RedeemInitiatedRewardDetailsResponse;


# instance fields
.field private onNavigationEvent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/logout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/logout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/DataJsonAdapter;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/DataJsonAdapter;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/logout;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/logout;->ICustomTabsService()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onNavigationEvent()Z
    .locals 1

    iget-object v0, p0, Lo/DataJsonAdapter;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()Lo/RedeemInitiatedRewardDetailsResponse;
    .locals 2

    new-instance v0, Lo/EntityData;

    iget-object v1, p0, Lo/DataJsonAdapter;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/logout;

    invoke-direct {v0, v1}, Lo/EntityData;-><init>(Lo/logout;)V

    return-object v0
.end method
