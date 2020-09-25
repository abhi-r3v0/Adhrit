.class public final Lo/setDefaultNavigationIcon;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setDefaultNavigationIcon$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/setAnimationStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setAnimationStyle<",
            "Lo/setDefaultNavigationIcon$ICustomTabsCallback<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0xfa

    .line 26
    invoke-direct {p0, v0, v1}, Lo/setDefaultNavigationIcon;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lo/setDefaultNavigationIcon$1;

    invoke-direct {v0, p1, p2}, Lo/setDefaultNavigationIcon$1;-><init>(J)V

    iput-object v0, p0, Lo/setDefaultNavigationIcon;->ICustomTabsCallback:Lo/setAnimationStyle;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-static {p1, v0, v0}, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->extraCallback(Ljava/lang/Object;II)Lo/setDefaultNavigationIcon$ICustomTabsCallback;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lo/setDefaultNavigationIcon;->ICustomTabsCallback:Lo/setAnimationStyle;

    invoke-virtual {v0, p1}, Lo/setAnimationStyle;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1104
    sget-object v1, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->onPostMessage:Ljava/util/Queue;

    monitor-enter v1

    .line 1105
    :try_start_0
    sget-object v2, Lo/setDefaultNavigationIcon$ICustomTabsCallback;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1106
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method
