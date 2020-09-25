.class final Landroidx/databinding/ViewDataBinding$onTransact;
.super Lo/MediaControllerCompat$ICustomTabsCallback;
.source ""

# interfaces
.implements Landroidx/databinding/ViewDataBinding$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ViewDataBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onTransact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MediaControllerCompat$ICustomTabsCallback;",
        "Landroidx/databinding/ViewDataBinding$ICustomTabsCallback<",
        "Lo/MediaControllerCompat;",
        ">;"
    }
.end annotation


# instance fields
.field final onPostMessage:Landroidx/databinding/ViewDataBinding$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ViewDataBinding$asBinder<",
            "Lo/MediaControllerCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;I)V
    .locals 1

    .line 1435
    invoke-direct {p0}, Lo/MediaControllerCompat$ICustomTabsCallback;-><init>()V

    .line 1436
    new-instance v0, Landroidx/databinding/ViewDataBinding$asBinder;

    invoke-direct {v0, p1, p2, p0}, Landroidx/databinding/ViewDataBinding$asBinder;-><init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ViewDataBinding$ICustomTabsCallback;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding$onTransact;->onPostMessage:Landroidx/databinding/ViewDataBinding$asBinder;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1431
    check-cast p1, Lo/MediaControllerCompat;

    .line 3451
    invoke-interface {p1, p0}, Lo/MediaControllerCompat;->onPostMessage(Lo/MediaControllerCompat$ICustomTabsCallback;)V

    return-void
.end method

.method public final extraCallback(Lo/MediaControllerCompat;I)V
    .locals 4

    .line 1460
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$onTransact;->onPostMessage:Landroidx/databinding/ViewDataBinding$asBinder;

    .line 2423
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/ViewDataBinding;

    if-nez v1, :cond_1

    .line 3410
    iget-object v2, v0, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 3411
    iget-object v2, v0, Landroidx/databinding/ViewDataBinding$asBinder;->onNavigationEvent:Landroidx/databinding/ViewDataBinding$ICustomTabsCallback;

    iget-object v3, v0, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    invoke-interface {v2, v3}, Landroidx/databinding/ViewDataBinding$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x0

    .line 3414
    iput-object v2, v0, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 1464
    :cond_2
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$onTransact;->onPostMessage:Landroidx/databinding/ViewDataBinding$asBinder;

    .line 3419
    iget-object v0, v0, Landroidx/databinding/ViewDataBinding$asBinder;->onMessageChannelReady:Ljava/lang/Object;

    .line 1464
    check-cast v0, Lo/MediaControllerCompat;

    if-eq v0, p1, :cond_3

    return-void

    .line 1468
    :cond_3
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding$onTransact;->onPostMessage:Landroidx/databinding/ViewDataBinding$asBinder;

    iget v0, v0, Landroidx/databinding/ViewDataBinding$asBinder;->extraCallback:I

    invoke-static {v1, v0, p1, p2}, Landroidx/databinding/ViewDataBinding;->onNavigationEvent(Landroidx/databinding/ViewDataBinding;ILjava/lang/Object;I)V

    return-void
.end method

.method public final synthetic onPostMessage(Ljava/lang/Object;)V
    .locals 0

    .line 1431
    check-cast p1, Lo/MediaControllerCompat;

    .line 4446
    invoke-interface {p1, p0}, Lo/MediaControllerCompat;->ICustomTabsCallback(Lo/MediaControllerCompat$ICustomTabsCallback;)V

    return-void
.end method
