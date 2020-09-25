.class final Lo/findFirstReferenceChild$getInterfaceDescriptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findFirstReferenceChild;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/util/List<",
        "+",
        "Lo/StaggeredGridLayoutManager;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/findFirstReferenceChild;


# direct methods
.method constructor <init>(Lo/findFirstReferenceChild;)V
    .locals 0

    iput-object p1, p0, Lo/findFirstReferenceChild$getInterfaceDescriptor;->ICustomTabsCallback:Lo/findFirstReferenceChild;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

    .line 45
    check-cast p1, Ljava/util/List;

    .line 1190
    iget-object v0, p0, Lo/findFirstReferenceChild$getInterfaceDescriptor;->ICustomTabsCallback:Lo/findFirstReferenceChild;

    invoke-static {v0}, Lo/findFirstReferenceChild;->onTransact(Lo/findFirstReferenceChild;)Lo/updateDxDy$onMessageChannelReady;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/updateDxDy$onMessageChannelReady;->ICustomTabsCallback()V

    .line 1191
    :cond_0
    iget-object v0, p0, Lo/findFirstReferenceChild$getInterfaceDescriptor;->ICustomTabsCallback:Lo/findFirstReferenceChild;

    invoke-static {v0}, Lo/findFirstReferenceChild;->onMessageChannelReady(Lo/findFirstReferenceChild;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lo/findFirstReferenceChild$getInterfaceDescriptor;->ICustomTabsCallback:Lo/findFirstReferenceChild;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v2

    const-string v3, "lifecycle"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x32

    new-instance v5, Lo/findFirstReferenceChild$getInterfaceDescriptor$3;

    invoke-direct {v5, p0, p1}, Lo/findFirstReferenceChild$getInterfaceDescriptor$3;-><init>(Lo/findFirstReferenceChild$getInterfaceDescriptor;Ljava/util/List;)V

    check-cast v5, Lo/getServerTime;

    invoke-static {v1, v2, v3, v4, v5}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    move-result-object p1

    invoke-static {v0, p1}, Lo/findFirstReferenceChild;->extraCallback(Lo/findFirstReferenceChild;Lo/updateDxDy$onMessageChannelReady;)V

    return-void
.end method
