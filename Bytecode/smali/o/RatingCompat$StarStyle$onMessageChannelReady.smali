.class public final Lo/RatingCompat$StarStyle$onMessageChannelReady;
.super Lo/RatingCompat$StarStyle$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RatingCompat$StarStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/RatingCompat$StarStyle$onPostMessage<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lo/RatingCompat$StarStyle$onPostMessage;-><init>(I)V

    .line 143
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/RatingCompat$StarStyle$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lo/RatingCompat$StarStyle$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    invoke-super {p0, p1}, Lo/RatingCompat$StarStyle$onPostMessage;->onMessageChannelReady(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 167
    monitor-exit v0

    throw p1
.end method

.method public final onPostMessage()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lo/RatingCompat$StarStyle$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    invoke-super {p0}, Lo/RatingCompat$StarStyle$onPostMessage;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 160
    monitor-exit v0

    throw v1
.end method
