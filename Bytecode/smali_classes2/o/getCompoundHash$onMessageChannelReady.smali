.class final Lo/getCompoundHash$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCompoundHash;->onPostMessage(Lo/setTransactionSuccessful;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/setTransactionSuccessful;

.field private synthetic onMessageChannelReady:Lo/getCompoundHash;

.field private synthetic onNavigationEvent:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lo/getCompoundHash;Ljava/lang/Runnable;Lo/setTransactionSuccessful;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 962
    iput-object p1, p0, Lo/getCompoundHash$onMessageChannelReady;->onMessageChannelReady:Lo/getCompoundHash;

    iput-object p2, p0, Lo/getCompoundHash$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Runnable;

    iput-object p3, p0, Lo/getCompoundHash$onMessageChannelReady;->extraCallback:Lo/setTransactionSuccessful;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 965
    iget-object v0, p0, Lo/getCompoundHash$onMessageChannelReady;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v0}, Lo/getCompoundHash;->onMessageChannelReady(Lo/getCompoundHash;)Lo/getPosts;

    move-result-object v0

    iget-object v1, p0, Lo/getCompoundHash$onMessageChannelReady;->onNavigationEvent:Ljava/lang/Runnable;

    iget-object v2, p0, Lo/getCompoundHash$onMessageChannelReady;->onMessageChannelReady:Lo/getCompoundHash;

    invoke-static {v2}, Lo/getCompoundHash;->IPostMessageService$Stub$Proxy(Lo/getCompoundHash;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lo/getCompoundHash$onMessageChannelReady;->extraCallback:Lo/setTransactionSuccessful;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_1

    .line 1050
    new-instance v4, Lo/getPosts$onMessageChannelReady;

    invoke-direct {v4, v1, v2}, Lo/getPosts$onMessageChannelReady;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1051
    iget-object v1, v0, Lo/getPosts;->onNavigationEvent:Lo/setTransactionSuccessful;

    if-eq v1, v3, :cond_0

    .line 4100
    iget-object v0, v4, Lo/getPosts$onMessageChannelReady;->onNavigationEvent:Ljava/util/concurrent/Executor;

    iget-object v1, v4, Lo/getPosts$onMessageChannelReady;->onPostMessage:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1054
    :cond_0
    iget-object v0, v0, Lo/getPosts;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 3910
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2910
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "executor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1910
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
