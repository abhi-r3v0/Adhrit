.class final Lo/getPosts;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPosts$onMessageChannelReady;
    }
.end annotation


# instance fields
.field extraCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/getPosts$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field volatile onNavigationEvent:Lo/setTransactionSuccessful;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getPosts;->extraCallback:Ljava/util/ArrayList;

    .line 38
    sget-object v0, Lo/setTransactionSuccessful;->ICustomTabsCallback:Lo/setTransactionSuccessful;

    iput-object v0, p0, Lo/getPosts;->onNavigationEvent:Lo/setTransactionSuccessful;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/setTransactionSuccessful;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 64
    iget-object v0, p0, Lo/getPosts;->onNavigationEvent:Lo/setTransactionSuccessful;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lo/getPosts;->onNavigationEvent:Lo/setTransactionSuccessful;

    sget-object v1, Lo/setTransactionSuccessful;->onMessageChannelReady:Lo/setTransactionSuccessful;

    if-eq v0, v1, :cond_1

    .line 65
    iput-object p1, p0, Lo/getPosts;->onNavigationEvent:Lo/setTransactionSuccessful;

    .line 66
    iget-object p1, p0, Lo/getPosts;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object p1, p0, Lo/getPosts;->extraCallback:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getPosts;->extraCallback:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getPosts$onMessageChannelReady;

    .line 2100
    iget-object v1, v0, Lo/getPosts$onMessageChannelReady;->onNavigationEvent:Ljava/util/concurrent/Executor;

    iget-object v0, v0, Lo/getPosts$onMessageChannelReady;->onPostMessage:Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void

    .line 1910
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "newState"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
