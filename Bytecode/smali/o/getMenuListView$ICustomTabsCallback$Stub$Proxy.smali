.class final Lo/getMenuListView$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMenuListView;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lo/addWrite<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Ljava/lang/Long;",
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
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u000126\u0010\u0002\u001a2\u0012\u0008\u0012\u00060\u0004j\u0002`\u0005\u0012\u0008\u0012\u00060\u0006j\u0002`\u0007 \u0008*\u0018\u0012\u0008\u0012\u00060\u0004j\u0002`\u0005\u0012\u0008\u0012\u00060\u0006j\u0002`\u0007\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlin/Pair;",
        "",
        "Lcom/cred/pay/ui/checkout/ShowLoader;",
        "",
        "Lcom/cred/pay/ui/checkout/Duration;",
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
.field private synthetic onMessageChannelReady:Lo/getMenuListView;


# direct methods
.method constructor <init>(Lo/getMenuListView;)V
    .locals 0

    iput-object p1, p0, Lo/getMenuListView$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getMenuListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 38
    check-cast p1, Lo/addWrite;

    .line 2027
    iget-object p1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1084
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/getMenuListView$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getMenuListView;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    const-string v0, "childFragmentManager"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2896
    iget-object p1, p1, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {p1}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object p1

    .line 1084
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1085
    iget-object p1, p0, Lo/getMenuListView$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getMenuListView;

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->loader:I

    invoke-virtual {p1, v0}, Lo/getMenuListView;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/prependViewToAllSpans;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback(Z)V

    return-void

    .line 1087
    :cond_0
    iget-object p1, p0, Lo/getMenuListView$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady:Lo/getMenuListView;

    sget v0, Lo/onItemHoverEnter$onNavigationEvent;->loader:I

    invoke-virtual {p1, v0}, Lo/getMenuListView;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/prependViewToAllSpans;

    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    return-void
.end method
