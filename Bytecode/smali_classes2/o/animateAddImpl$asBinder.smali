.class final Lo/animateAddImpl$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateAddImpl;-><init>(Landroid/app/Application;)V
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
        "Lclub/cred/credcurrency/CredPointCountModel;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lclub/cred/credcurrency/CredPointCountModel;",
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
.field final synthetic ICustomTabsCallback:Lo/animateAddImpl;


# direct methods
.method constructor <init>(Lo/animateAddImpl;)V
    .locals 0

    iput-object p1, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 27
    check-cast p1, Lclub/cred/credcurrency/CredPointCountModel;

    if-eqz p1, :cond_2

    .line 1089
    iget-object v0, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v0}, Lo/animateAddImpl;->onMessageChannelReady(Lo/animateAddImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "COINS"

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    iget-object v0, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v0, p1}, Lo/animateAddImpl;->extraCallback(Lo/animateAddImpl;Lclub/cred/credcurrency/CredPointCountModel;)V

    .line 1091
    iget-object p1, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {p1}, Lo/animateAddImpl;->asInterface(Lo/animateAddImpl;)Lo/computeHorizontalScrollExtent;

    move-result-object p1

    .line 1136
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v0, Lo/setTrackTintMode;->ICustomTabsService$Stub$Proxy:Lo/getNavigationIcon;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "all products"

    .line 1136
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 3000
    sget-object v0, Lo/setTrackTintMode;->ICustomTabsService$Stub$Proxy:Lo/getNavigationIcon;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    const/4 v1, 0x1

    .line 1137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "user_available_balance"

    .line 1139
    invoke-interface {p1, v0, v2, v1, v3}, Lo/computeHorizontalScrollExtent;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lo/clearScrap;

    move-result-object p1

    .line 1091
    new-instance v0, Lo/animateAddImpl$asBinder$2;

    invoke-direct {v0, p0}, Lo/animateAddImpl$asBinder$2;-><init>(Lo/animateAddImpl$asBinder;)V

    check-cast v0, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, v0}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void

    .line 1102
    :cond_1
    iget-object v0, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v0, p1}, Lo/animateAddImpl;->extraCallback(Lo/animateAddImpl;Lclub/cred/credcurrency/CredPointCountModel;)V

    .line 1103
    iget-object p1, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {p1}, Lo/animateAddImpl;->onTransact(Lo/animateAddImpl;)Lo/ViewStubCompat;

    move-result-object p1

    .line 3020
    iget-object p1, p1, Lo/ViewStubCompat;->onPostMessage:Lo/MediaControllerCompatApi24$TransportControls;

    .line 1103
    iget-object v0, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v0}, Lo/animateAddImpl;->asBinder(Lo/animateAddImpl;)Lo/setPlaybackToRemote;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 1104
    iget-object p1, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {p1}, Lo/animateAddImpl;->onTransact(Lo/animateAddImpl;)Lo/ViewStubCompat;

    move-result-object p1

    .line 3021
    iget-object p1, p1, Lo/ViewStubCompat;->onNavigationEvent:Lo/setActive;

    .line 1104
    iget-object v0, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v0}, Lo/animateAddImpl;->ICustomTabsCallback$Stub(Lo/animateAddImpl;)Lo/setPlaybackToRemote;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 1105
    iget-object p1, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {p1}, Lo/animateAddImpl;->onTransact(Lo/animateAddImpl;)Lo/ViewStubCompat;

    move-result-object p1

    .line 3022
    iget-object p1, p1, Lo/ViewStubCompat;->extraCallback:Lo/setActive;

    .line 1105
    iget-object v0, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v0}, Lo/animateAddImpl;->getInterfaceDescriptor(Lo/animateAddImpl;)Lo/setPlaybackToRemote;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 1106
    iget-object p1, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {p1}, Lo/animateAddImpl;->onTransact(Lo/animateAddImpl;)Lo/ViewStubCompat;

    move-result-object p1

    .line 3023
    iget-object p1, p1, Lo/ViewStubCompat;->ICustomTabsCallback:Lo/setActive;

    .line 1106
    iget-object v0, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v0}, Lo/animateAddImpl;->ICustomTabsService(Lo/animateAddImpl;)Lo/setPlaybackToRemote;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 1108
    iget-object p1, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {p1}, Lo/animateAddImpl;->onTransact(Lo/animateAddImpl;)Lo/ViewStubCompat;

    move-result-object p1

    .line 4020
    iget-object p1, p1, Lo/ViewStubCompat;->onPostMessage:Lo/MediaControllerCompatApi24$TransportControls;

    .line 1108
    iget-object v0, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v0}, Lo/animateAddImpl;->asBinder(Lo/animateAddImpl;)Lo/setPlaybackToRemote;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    .line 1109
    iget-object p1, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {p1}, Lo/animateAddImpl;->onTransact(Lo/animateAddImpl;)Lo/ViewStubCompat;

    move-result-object p1

    .line 4021
    iget-object p1, p1, Lo/ViewStubCompat;->onNavigationEvent:Lo/setActive;

    .line 1109
    iget-object v0, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v0}, Lo/animateAddImpl;->ICustomTabsCallback$Stub(Lo/animateAddImpl;)Lo/setPlaybackToRemote;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    .line 1110
    iget-object p1, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {p1}, Lo/animateAddImpl;->onTransact(Lo/animateAddImpl;)Lo/ViewStubCompat;

    move-result-object p1

    .line 4022
    iget-object p1, p1, Lo/ViewStubCompat;->extraCallback:Lo/setActive;

    .line 1110
    iget-object v0, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v0}, Lo/animateAddImpl;->getInterfaceDescriptor(Lo/animateAddImpl;)Lo/setPlaybackToRemote;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    .line 1111
    iget-object p1, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {p1}, Lo/animateAddImpl;->onTransact(Lo/animateAddImpl;)Lo/ViewStubCompat;

    move-result-object p1

    .line 4023
    iget-object p1, p1, Lo/ViewStubCompat;->ICustomTabsCallback:Lo/setActive;

    .line 1111
    iget-object v0, p0, Lo/animateAddImpl$asBinder;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v0}, Lo/animateAddImpl;->ICustomTabsService(Lo/animateAddImpl;)Lo/setPlaybackToRemote;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    :cond_2
    return-void
.end method
