.class final Lo/swapAdapter$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/swapAdapter;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;Lo/collectAdjacentPrefetchPositions$onNavigationEvent;Lo/onSizeChanged;Lo/setActive;Lo/setActive;)V
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
        "Lo/removeItemDecoration;",
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
        "selectedCardId",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/RewardIdentifier;",
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
.field private synthetic ICustomTabsCallback:Lo/swapAdapter;


# direct methods
.method constructor <init>(Lo/swapAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/swapAdapter$asInterface;->ICustomTabsCallback:Lo/swapAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 35
    check-cast p1, Lo/removeItemDecoration;

    .line 1210
    iget-object v0, p0, Lo/swapAdapter$asInterface;->ICustomTabsCallback:Lo/swapAdapter;

    invoke-static {v0, p1}, Lo/swapAdapter;->onPostMessage(Lo/swapAdapter;Lo/removeItemDecoration;)V

    .line 1211
    iget-object p1, p0, Lo/swapAdapter$asInterface;->ICustomTabsCallback:Lo/swapAdapter;

    invoke-static {p1}, Lo/swapAdapter;->onNavigationEvent(Lo/swapAdapter;)V

    return-void
.end method
