.class public final Lo/setCrashlyticsOriginEventReceiver;
.super Ljava/lang/Object;

# interfaces
.implements Lo/notifyEventReceivers;
.implements Lo/setBreadcrumbEventReceiver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/notifyEventReceivers;",
        "Lo/setBreadcrumbEventReceiver;"
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Ljava/lang/Object;


# instance fields
.field private volatile extraCallback:Ljava/lang/Object;

.field private volatile onNavigationEvent:Lo/notifyEventReceivers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/notifyEventReceivers<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/setCrashlyticsOriginEventReceiver;->onMessageChannelReady:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo/notifyEventReceivers;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/notifyEventReceivers<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lo/setCrashlyticsOriginEventReceiver;->onMessageChannelReady:Ljava/lang/Object;

    iput-object v0, p0, Lo/setCrashlyticsOriginEventReceiver;->extraCallback:Ljava/lang/Object;

    iput-object p1, p0, Lo/setCrashlyticsOriginEventReceiver;->onNavigationEvent:Lo/notifyEventReceivers;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lo/setCrashlyticsOriginEventReceiver;->extraCallback:Ljava/lang/Object;

    sget-object v1, Lo/setCrashlyticsOriginEventReceiver;->onMessageChannelReady:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/setCrashlyticsOriginEventReceiver;->extraCallback:Ljava/lang/Object;

    sget-object v1, Lo/setCrashlyticsOriginEventReceiver;->onMessageChannelReady:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lo/setCrashlyticsOriginEventReceiver;->onNavigationEvent:Lo/notifyEventReceivers;

    invoke-interface {v0}, Lo/notifyEventReceivers;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lo/setCrashlyticsOriginEventReceiver;->extraCallback:Ljava/lang/Object;

    sget-object v2, Lo/setCrashlyticsOriginEventReceiver;->onMessageChannelReady:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_1

    instance-of v2, v1, Lo/MissingDependencyException;

    if-nez v2, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x76

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Scoped provider was invoked recursively returning different results: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " & "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". This is likely due to a circular dependency."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iput-object v0, p0, Lo/setCrashlyticsOriginEventReceiver;->extraCallback:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lo/setCrashlyticsOriginEventReceiver;->onNavigationEvent:Lo/notifyEventReceivers;

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :goto_1
    return-object v0
.end method
