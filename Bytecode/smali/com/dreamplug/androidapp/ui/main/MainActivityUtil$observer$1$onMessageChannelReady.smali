.class final Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback(Lo/toLegacyStreamType;)V
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
        "Lo/getThumbTintList<",
        "+",
        "Ljava/lang/Boolean;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "event",
        "Lcom/dreamplug/androidapp/core/Event;",
        "",
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
.field private synthetic onNavigationEvent:Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;


# direct methods
.method constructor <init>(Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$onMessageChannelReady;->onNavigationEvent:Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 54
    check-cast p1, Lo/getThumbTintList;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2011
    iget-boolean v1, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2015
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object v0, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1060
    :goto_0
    check-cast v0, Ljava/lang/Boolean;

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1061
    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$onMessageChannelReady;->onNavigationEvent:Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;

    iget-object p1, p1, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 2042
    iget-object p1, p1, Lo/updateHomeAccessibility;->onNavigationEvent:Lo/setSwitchMinWidth;

    if-nez p1, :cond_2

    const-string/jumbo v0, "updateManager"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1061
    :cond_2
    invoke-virtual {p1}, Lo/setSwitchMinWidth;->onMessageChannelReady()V

    :cond_3
    return-void
.end method
