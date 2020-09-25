.class abstract Lo/setEnableDrag;
.super Lo/setDragState;
.source ""


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private extraCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lo/setEnableDrag;->ICustomTabsCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/setDragState;-><init>([B)V

    .line 2
    sget-object p1, Lo/setEnableDrag;->ICustomTabsCallback:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lo/setEnableDrag;->extraCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method final extraCallback()[B
    .locals 2

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lo/setEnableDrag;->extraCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lo/setEnableDrag;->onNavigationEvent()[B

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lo/setEnableDrag;->extraCallback:Ljava/lang/ref/WeakReference;

    .line 9
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract onNavigationEvent()[B
.end method
