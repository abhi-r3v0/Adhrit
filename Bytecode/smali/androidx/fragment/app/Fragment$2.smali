.class Landroidx/fragment/app/Fragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaControllerCompatApi23;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->initLifecycle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 496
    iput-object p1, p0, Landroidx/fragment/app/Fragment$2;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 0

    .line 500
    sget-object p1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_STOP:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    if-ne p2, p1, :cond_0

    .line 501
    iget-object p1, p0, Landroidx/fragment/app/Fragment$2;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 502
    iget-object p1, p0, Landroidx/fragment/app/Fragment$2;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_0
    return-void
.end method
