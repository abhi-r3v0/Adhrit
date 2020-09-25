.class public final Lo/getChildrenSkipCount;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onMessageChannelReady:Lo/setCompoundDrawablesWithIntrinsicBounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCompoundDrawablesWithIntrinsicBounds<",
            "***>;"
        }
    .end annotation
.end field


# instance fields
.field private final extraCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lo/setInputMethodMode$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final onPostMessage:Lo/postOrRun;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/postOrRun<",
            "Lo/setInputMethodMode$ICustomTabsCallback;",
            "Lo/setCompoundDrawablesWithIntrinsicBounds<",
            "***>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 18
    new-instance v6, Lo/setCompoundDrawablesWithIntrinsicBounds;

    const-class v1, Ljava/lang/Object;

    const-class v2, Ljava/lang/Object;

    const-class v3, Ljava/lang/Object;

    new-instance v0, Lo/setFirstBaselineToTopHeight;

    const-class v8, Ljava/lang/Object;

    const-class v9, Ljava/lang/Object;

    const-class v10, Ljava/lang/Object;

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    new-instance v12, Lo/drawVerticalDivider;

    invoke-direct {v12}, Lo/drawVerticalDivider;-><init>()V

    const/4 v13, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lo/setFirstBaselineToTopHeight;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lo/drawDividersHorizontal;Lo/RatingCompat$StarStyle$extraCallback;)V

    .line 23
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/setCompoundDrawablesWithIntrinsicBounds;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lo/RatingCompat$StarStyle$extraCallback;)V

    sput-object v6, Lo/getChildrenSkipCount;->onMessageChannelReady:Lo/setCompoundDrawablesWithIntrinsicBounds;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    iput-object v0, p0, Lo/getChildrenSkipCount;->onPostMessage:Lo/postOrRun;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lo/getChildrenSkipCount;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static ICustomTabsCallback(Lo/setCompoundDrawablesWithIntrinsicBounds;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCompoundDrawablesWithIntrinsicBounds<",
            "***>;)Z"
        }
    .end annotation

    .line 42
    sget-object v0, Lo/getChildrenSkipCount;->onMessageChannelReady:Lo/setCompoundDrawablesWithIntrinsicBounds;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lo/setCompoundDrawablesWithIntrinsicBounds;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Lo/setCompoundDrawablesWithIntrinsicBounds<",
            "TData;TTResource;TTranscode;>;"
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lo/getChildrenSkipCount;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setInputMethodMode$ICustomTabsCallback;

    if-nez v0, :cond_0

    .line 1080
    new-instance v0, Lo/setInputMethodMode$ICustomTabsCallback;

    invoke-direct {v0}, Lo/setInputMethodMode$ICustomTabsCallback;-><init>()V

    .line 2031
    :cond_0
    iput-object p1, v0, Lo/setInputMethodMode$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/Class;

    .line 2032
    iput-object p2, v0, Lo/setInputMethodMode$ICustomTabsCallback;->extraCallback:Ljava/lang/Class;

    .line 2033
    iput-object p3, v0, Lo/setInputMethodMode$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Class;

    .line 56
    iget-object p1, p0, Lo/getChildrenSkipCount;->onPostMessage:Lo/postOrRun;

    monitor-enter p1

    .line 57
    :try_start_0
    iget-object p2, p0, Lo/getChildrenSkipCount;->onPostMessage:Lo/postOrRun;

    invoke-virtual {p2, v0}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/setCompoundDrawablesWithIntrinsicBounds;

    .line 58
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object p1, p0, Lo/getChildrenSkipCount;->extraCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 58
    monitor-exit p1

    throw p2
.end method
