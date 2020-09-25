.class final Lo/setOnSetCropOverlayMovedListener;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onNavigationEvent:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

.field private final synthetic onPostMessage:Lo/setCropRect;


# direct methods
.method constructor <init>(Lo/setCropRect;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 0

    iput-object p1, p0, Lo/setOnSetCropOverlayMovedListener;->onPostMessage:Lo/setCropRect;

    iput-object p2, p0, Lo/setOnSetCropOverlayMovedListener;->onNavigationEvent:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/setOnSetCropOverlayMovedListener;->onPostMessage:Lo/setCropRect;

    iget-object v0, v0, Lo/setCropRect;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/setOnSetCropOverlayMovedListener;->onPostMessage:Lo/setCropRect;

    iget-object v2, p0, Lo/setOnSetCropOverlayMovedListener;->onNavigationEvent:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v1, v1, Lo/setCropRect;->onMessageChannelReady:Lo/setOnCropWindowChangedListener;

    invoke-interface {v1, v2}, Lo/setOnCropWindowChangedListener;->onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
