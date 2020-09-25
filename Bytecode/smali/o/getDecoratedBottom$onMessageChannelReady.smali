.class final Lo/getDecoratedBottom$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getDecoratedBottom;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "responseRewardList",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
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
.field private synthetic onNavigationEvent:Lo/getDecoratedBottom;


# direct methods
.method constructor <init>(Lo/getDecoratedBottom;)V
    .locals 0

    iput-object p1, p0, Lo/getDecoratedBottom$onMessageChannelReady;->onNavigationEvent:Lo/getDecoratedBottom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 48
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 1082
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    iget-object p1, p0, Lo/getDecoratedBottom$onMessageChannelReady;->onNavigationEvent:Lo/getDecoratedBottom;

    .line 2000
    iget-object p1, p1, Lo/getDecoratedBottom;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 1083
    invoke-static {p1, v0, v1, v2, v3}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 1084
    iget-object p1, p0, Lo/getDecoratedBottom$onMessageChannelReady;->onNavigationEvent:Lo/getDecoratedBottom;

    .line 3000
    iget-object p1, p1, Lo/getDecoratedBottom;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const-string/jumbo v0, "welcome_screen"

    .line 1084
    invoke-static {p1, v0}, Lo/getMoveDuration;->ICustomTabsCallback(Lo/getMoveDuration;Ljava/lang/String;)V

    return-void

    .line 1086
    :cond_0
    iget-object v0, p0, Lo/getDecoratedBottom$onMessageChannelReady;->onNavigationEvent:Lo/getDecoratedBottom;

    invoke-static {v0, p1}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;Ljava/util/List;)V

    return-void
.end method
