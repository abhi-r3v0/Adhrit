.class final Lo/AppCompatImageButton$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getBaselineAlignedChildIndex$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AppCompatImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final extraCallback:Lo/setSupportImageTintMode;

.field private synthetic onNavigationEvent:Lo/AppCompatImageButton;


# direct methods
.method constructor <init>(Lo/AppCompatImageButton;Lo/setSupportImageTintMode;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lo/AppCompatImageButton$onMessageChannelReady;->onNavigationEvent:Lo/AppCompatImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    iput-object p2, p0, Lo/AppCompatImageButton$onMessageChannelReady;->extraCallback:Lo/setSupportImageTintMode;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Z)V
    .locals 4

    if-eqz p1, :cond_3

    .line 722
    iget-object p1, p0, Lo/AppCompatImageButton$onMessageChannelReady;->onNavigationEvent:Lo/AppCompatImageButton;

    monitor-enter p1

    .line 723
    :try_start_0
    iget-object v0, p0, Lo/AppCompatImageButton$onMessageChannelReady;->extraCallback:Lo/setSupportImageTintMode;

    .line 1137
    iget-object v1, v0, Lo/setSupportImageTintMode;->onNavigationEvent:Ljava/util/Set;

    invoke-static {v1}, Lo/getHorizontalOffset;->onNavigationEvent(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getNextLocationOffset;

    .line 1138
    invoke-interface {v2}, Lo/getNextLocationOffset;->onPostMessage()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lo/getNextLocationOffset;->onTransact()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1139
    invoke-interface {v2}, Lo/getNextLocationOffset;->onMessageChannelReady()V

    .line 1140
    iget-boolean v3, v0, Lo/setSupportImageTintMode;->onPostMessage:Z

    if-nez v3, :cond_1

    .line 1141
    invoke-interface {v2}, Lo/getNextLocationOffset;->onNavigationEvent()V

    goto :goto_0

    .line 1144
    :cond_1
    iget-object v3, v0, Lo/setSupportImageTintMode;->extraCallback:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 724
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_3
    return-void
.end method
