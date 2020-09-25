.class final Lo/unregisterCallback$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/unregisterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public final extraCallback:J

.field public final onPostMessage:J


# direct methods
.method constructor <init>(JJ)V
    .locals 3

    .line 2915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 2918
    iput-wide v0, p0, Lo/unregisterCallback$onMessageChannelReady;->onPostMessage:J

    const-wide/16 p1, 0x1

    .line 2919
    iput-wide p1, p0, Lo/unregisterCallback$onMessageChannelReady;->extraCallback:J

    return-void

    .line 2922
    :cond_0
    iput-wide p1, p0, Lo/unregisterCallback$onMessageChannelReady;->onPostMessage:J

    .line 2923
    iput-wide p3, p0, Lo/unregisterCallback$onMessageChannelReady;->extraCallback:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 2928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lo/unregisterCallback$onMessageChannelReady;->onPostMessage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/unregisterCallback$onMessageChannelReady;->extraCallback:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
