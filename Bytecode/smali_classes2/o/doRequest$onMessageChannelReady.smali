.class public final Lo/doRequest$onMessageChannelReady;
.super Lo/ContentFetcher$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/doRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private extraCallback:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lo/Foreground$4$4;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lo/ContentFetcher$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Iterable;)Lo/ContentFetcher$extraCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lo/Foreground$4$4;",
            ">;)",
            "Lo/ContentFetcher$extraCallback;"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lo/doRequest$onMessageChannelReady;->extraCallback:Ljava/lang/Iterable;

    return-object p0
.end method

.method public final extraCallback([B)Lo/ContentFetcher$extraCallback;
    .locals 0

    .line 80
    iput-object p1, p0, Lo/doRequest$onMessageChannelReady;->onPostMessage:[B

    return-object p0
.end method

.method public final onPostMessage()Lo/ContentFetcher;
    .locals 4

    .line 86
    iget-object v0, p0, Lo/doRequest$onMessageChannelReady;->extraCallback:Ljava/lang/Iterable;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Lo/doRequest;

    iget-object v1, p0, Lo/doRequest$onMessageChannelReady;->extraCallback:Ljava/lang/Iterable;

    iget-object v2, p0, Lo/doRequest$onMessageChannelReady;->onPostMessage:[B

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lo/doRequest;-><init>(Ljava/lang/Iterable;[BB)V

    return-object v0

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
