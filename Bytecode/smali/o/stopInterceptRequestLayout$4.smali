.class final Lo/stopInterceptRequestLayout$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopInterceptRequestLayout;-><init>(Lo/releaseGlows;Lo/hasGapsToFix$onMessageChannelReady;Lo/pullGlows;Lo/getServerTime;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$4;->extraCallback:Lo/stopInterceptRequestLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 36
    check-cast p1, Ljava/lang/Boolean;

    .line 1292
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 1293
    iget-object p1, p0, Lo/stopInterceptRequestLayout$4;->extraCallback:Lo/stopInterceptRequestLayout;

    .line 2036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->asBinder:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    .line 1293
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1294
    iget-object p1, p0, Lo/stopInterceptRequestLayout$4;->extraCallback:Lo/stopInterceptRequestLayout;

    .line 3036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    .line 1294
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1296
    :cond_0
    iget-object p1, p0, Lo/stopInterceptRequestLayout$4;->extraCallback:Lo/stopInterceptRequestLayout;

    .line 4036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->asBinder:Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    .line 1296
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1297
    iget-object p1, p0, Lo/stopInterceptRequestLayout$4;->extraCallback:Lo/stopInterceptRequestLayout;

    .line 5036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    .line 1297
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
