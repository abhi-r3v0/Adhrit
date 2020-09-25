.class public final Lcom/dreamplug/androidapp/ui/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/androidapp/ui/FragmentViewBindingDelegate$1$onPostMessage;->onNavigationEvent(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/androidapp/ui/FragmentViewBindingDelegate$1$onCreate$1$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lcom/dreamplug/androidapp/ui/FragmentViewBindingDelegate$1$onPostMessage;


# direct methods
.method constructor <init>(Lcom/dreamplug/androidapp/ui/FragmentViewBindingDelegate$1$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;->onMessageChannelReady:Lcom/dreamplug/androidapp/ui/FragmentViewBindingDelegate$1$onPostMessage;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/FragmentViewBindingDelegate$1$onCreate$$inlined$observe$1$lambda$1;->onMessageChannelReady:Lcom/dreamplug/androidapp/ui/FragmentViewBindingDelegate$1$onPostMessage;

    iget-object p1, p1, Lcom/dreamplug/androidapp/ui/FragmentViewBindingDelegate$1$onPostMessage;->onNavigationEvent:Lcom/dreamplug/androidapp/ui/FragmentViewBindingDelegate$1;

    iget-object p1, p1, Lcom/dreamplug/androidapp/ui/FragmentViewBindingDelegate$1;->onMessageChannelReady:Lo/addChildrenForExpandedActionView;

    const/4 v0, 0x0

    .line 1013
    iput-object v0, p1, Lo/addChildrenForExpandedActionView;->onPostMessage:Lo/MediaSessionCompat$1$onMessageChannelReady;

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method
