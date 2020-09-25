.class public final Lo/isSet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final warmup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field ICustomTabsCallback$Stub:Landroid/content/ServiceConnection;

.field public final asBinder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/onPostMessage$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field final asInterface:Lo/optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/optional<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final extraCallback:Lo/addItemDecoration$onPostMessage;

.field public newSession:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/removeDependent;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Landroid/content/Context;

.field onPostMessage:Z

.field final onRelationshipValidationResult:Landroid/os/IBinder$DeathRecipient;

.field final onTransact:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/isSet;->warmup:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/addItemDecoration$onPostMessage;Ljava/lang/String;Landroid/content/Intent;Lo/optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/addItemDecoration$onPostMessage;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Lo/optional<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/isSet;->onMessageChannelReady:Ljava/util/List;

    new-instance v0, Lo/hasUpdatedView$ICustomTabsCallback;

    invoke-direct {v0, p0}, Lo/hasUpdatedView$ICustomTabsCallback;-><init>(Lo/isSet;)V

    iput-object v0, p0, Lo/isSet;->onRelationshipValidationResult:Landroid/os/IBinder$DeathRecipient;

    iput-object p1, p0, Lo/isSet;->onNavigationEvent:Landroid/content/Context;

    iput-object p2, p0, Lo/isSet;->extraCallback:Lo/addItemDecoration$onPostMessage;

    iput-object p3, p0, Lo/isSet;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p4, p0, Lo/isSet;->onTransact:Landroid/content/Intent;

    iput-object p5, p0, Lo/isSet;->asInterface:Lo/optional;

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lo/isSet;->asBinder:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/removeDependent;)V
    .locals 5

    sget-object v0, Lo/isSet;->warmup:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/isSet;->warmup:Ljava/util/Map;

    iget-object v2, p0, Lo/isSet;->ICustomTabsCallback:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    iget-object v2, p0, Lo/isSet;->ICustomTabsCallback:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-object v2, Lo/isSet;->warmup:Ljava/util/Map;

    iget-object v3, p0, Lo/isSet;->ICustomTabsCallback:Ljava/lang/String;

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lo/isSet;->warmup:Ljava/util/Map;

    iget-object v2, p0, Lo/isSet;->ICustomTabsCallback:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
