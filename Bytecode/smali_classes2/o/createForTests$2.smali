.class final Lo/createForTests$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createForTests;->onPostMessage(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 223
    iput-object p1, p0, Lo/createForTests$2;->extraCallback:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/createForTests$2;->onMessageChannelReady:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lo/createForTests$2;->extraCallback:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 226
    iget-boolean p1, p0, Lo/createForTests$2;->onMessageChannelReady:Z

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
