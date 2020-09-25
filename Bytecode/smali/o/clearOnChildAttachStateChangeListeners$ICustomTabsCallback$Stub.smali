.class final Lo/clearOnChildAttachStateChangeListeners$ICustomTabsCallback$Stub;
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "data",
        "Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;",
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
.field private synthetic onPostMessage:Lo/clearOnChildAttachStateChangeListeners;


# direct methods
.method constructor <init>(Lo/clearOnChildAttachStateChangeListeners;)V
    .locals 0

    iput-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$ICustomTabsCallback$Stub;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 53
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;

    if-eqz p1, :cond_0

    .line 1085
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$ICustomTabsCallback$Stub;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {v0, p1}, Lo/clearOnChildAttachStateChangeListeners;->onPostMessage(Lo/clearOnChildAttachStateChangeListeners;Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/Users;)V

    :cond_0
    return-void
.end method
