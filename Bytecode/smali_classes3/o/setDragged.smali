.class final Lo/setDragged;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setShapeAppearanceModel;

.field private final onMessageChannelReady:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/setShapeAppearanceModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setDragged;->ICustomTabsCallback:Lo/setShapeAppearanceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lo/setDragged;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object p1, p0, Lo/setDragged;->ICustomTabsCallback:Lo/setShapeAppearanceModel;

    invoke-virtual {p1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    iget-object v0, p0, Lo/setDragged;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
