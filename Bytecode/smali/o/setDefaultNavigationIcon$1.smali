.class final Lo/setDefaultNavigationIcon$1;
.super Lo/setAnimationStyle;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setDefaultNavigationIcon;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAnimationStyle<",
        "Lo/setDefaultNavigationIcon$ICustomTabsCallback<",
        "TA;>;TB;>;"
    }
.end annotation


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lo/setAnimationStyle;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 31
    check-cast p1, Lo/setDefaultNavigationIcon$ICustomTabsCallback;

    .line 1104
    sget-object p2, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->onPostMessage:Ljava/util/Queue;

    monitor-enter p2

    .line 1105
    :try_start_0
    sget-object v0, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1106
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1
.end method
