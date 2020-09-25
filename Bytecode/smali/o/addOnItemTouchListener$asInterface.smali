.class final Lo/addOnItemTouchListener$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addOnItemTouchListener;-><init>()V
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
        "Lo/setRemoveDuration;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "commandEvent",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/PageCommand;",
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
.field private synthetic onNavigationEvent:Lo/addOnItemTouchListener;


# direct methods
.method constructor <init>(Lo/addOnItemTouchListener;)V
    .locals 0

    iput-object p1, p0, Lo/addOnItemTouchListener$asInterface;->onNavigationEvent:Lo/addOnItemTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 50
    check-cast p1, Lo/getThumbTintList;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2016
    :cond_0
    iget-object v0, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1299
    :goto_0
    check-cast v0, Lo/setRemoveDuration;

    .line 1300
    instance-of v1, v0, Lo/setRemoveDuration$onNavigationEvent$ICustomTabsCallback;

    if-eqz v1, :cond_1

    .line 1301
    iget-object v0, p0, Lo/addOnItemTouchListener$asInterface;->onNavigationEvent:Lo/addOnItemTouchListener;

    invoke-static {v0}, Lo/addOnItemTouchListener;->onMessageChannelReady(Lo/addOnItemTouchListener;)Lo/resetScroll;

    move-result-object v0

    invoke-virtual {v0}, Lo/resetScroll;->ICustomTabsCallback()V

    goto :goto_1

    .line 1304
    :cond_1
    instance-of v1, v0, Lo/setRemoveDuration$onNavigationEvent$onMessageChannelReady;

    if-eqz v1, :cond_3

    .line 1305
    check-cast v0, Lo/setRemoveDuration$onNavigationEvent$onMessageChannelReady;

    .line 3057
    iget-object v0, v0, Lo/setRemoveDuration$onNavigationEvent$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1307
    iget-object v1, p0, Lo/addOnItemTouchListener$asInterface;->onNavigationEvent:Lo/addOnItemTouchListener;

    invoke-static {v1, v0}, Lo/addOnItemTouchListener;->onPostMessage(Lo/addOnItemTouchListener;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 4005
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    :cond_3
    return-void
.end method
