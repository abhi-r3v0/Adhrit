.class final Lo/getPosts$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPosts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final onNavigationEvent:Ljava/util/concurrent/Executor;

.field final onPostMessage:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lo/getPosts$onMessageChannelReady;->onPostMessage:Ljava/lang/Runnable;

    .line 96
    iput-object p2, p0, Lo/getPosts$onMessageChannelReady;->onNavigationEvent:Ljava/util/concurrent/Executor;

    return-void
.end method
