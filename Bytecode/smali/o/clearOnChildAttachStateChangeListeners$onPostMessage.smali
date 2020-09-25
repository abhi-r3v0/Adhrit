.class final Lo/clearOnChildAttachStateChangeListeners$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/clearOnChildAttachStateChangeListeners;->onCreate(Landroid/os/Bundle;)V
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
        "signedIn",
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
.field private synthetic extraCallback:Lo/clearOnChildAttachStateChangeListeners;


# direct methods
.method constructor <init>(Lo/clearOnChildAttachStateChangeListeners;)V
    .locals 0

    iput-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$onPostMessage;->extraCallback:Lo/clearOnChildAttachStateChangeListeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 53
    check-cast p1, Ljava/lang/Boolean;

    .line 1078
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1079
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$onPostMessage;->extraCallback:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {p1}, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/addItemDecoration;

    move-result-object p1

    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$onPostMessage;->extraCallback:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {v0}, Lo/clearOnChildAttachStateChangeListeners;->onMessageChannelReady(Lo/clearOnChildAttachStateChangeListeners;)Lo/clearOnChildAttachStateChangeListeners$extraCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1408
    iget-object v0, v0, Lo/clearOnChildAttachStateChangeListeners$extraCallback;->onNavigationEvent:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1079
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    invoke-virtual {p1, v0}, Lo/addItemDecoration;->extraCallback(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
