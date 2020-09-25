.class public final Lo/zombify$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/zombify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public extraCallback:J

.field public final onMessageChannelReady:Ljava/util/concurrent/CountDownLatch;

.field public onPostMessage:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lo/zombify$onPostMessage;->onMessageChannelReady:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, -0x1

    .line 1026
    iput-wide v0, p0, Lo/zombify$onPostMessage;->onPostMessage:J

    .line 1027
    iput-wide v0, p0, Lo/zombify$onPostMessage;->extraCallback:J

    return-void
.end method
