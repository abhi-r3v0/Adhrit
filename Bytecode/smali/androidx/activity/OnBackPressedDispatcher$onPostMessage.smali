.class final Landroidx/activity/OnBackPressedDispatcher$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/updateDxDy$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field private final extraCallback:Lo/handleMediaPlayPauseKeySingleTapIfPending;

.field final synthetic onNavigationEvent:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method constructor <init>(Landroidx/activity/OnBackPressedDispatcher;Lo/handleMediaPlayPauseKeySingleTapIfPending;)V
    .locals 0

    .line 203
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$onPostMessage;->onNavigationEvent:Landroidx/activity/OnBackPressedDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$onPostMessage;->extraCallback:Lo/handleMediaPlayPauseKeySingleTapIfPending;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 209
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$onPostMessage;->onNavigationEvent:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v0, v0, Landroidx/activity/OnBackPressedDispatcher;->ICustomTabsCallback:Ljava/util/ArrayDeque;

    iget-object v1, p0, Landroidx/activity/OnBackPressedDispatcher$onPostMessage;->extraCallback:Lo/handleMediaPlayPauseKeySingleTapIfPending;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$onPostMessage;->extraCallback:Lo/handleMediaPlayPauseKeySingleTapIfPending;

    .line 1107
    iget-object v0, v0, Lo/handleMediaPlayPauseKeySingleTapIfPending;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
