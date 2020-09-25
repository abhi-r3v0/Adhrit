.class Lo/RetryInfoJsonAdapter$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RetryInfoJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private final extraCallback:Ljava/io/BufferedReader;

.field private onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/BufferedReader;",
            ")V"
        }
    .end annotation

    .line 936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    iput-object p1, p0, Lo/RetryInfoJsonAdapter$extraCallback;->onPostMessage:Ljava/util/Queue;

    .line 938
    iput-object p2, p0, Lo/RetryInfoJsonAdapter$extraCallback;->extraCallback:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public extraCallback()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 942
    iget-object v0, p0, Lo/RetryInfoJsonAdapter$extraCallback;->onNavigationEvent:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 945
    :cond_0
    iget-object v0, p0, Lo/RetryInfoJsonAdapter$extraCallback;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 946
    iget-object v0, p0, Lo/RetryInfoJsonAdapter$extraCallback;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/RetryInfoJsonAdapter$extraCallback;->onNavigationEvent:Ljava/lang/String;

    return v1

    .line 949
    :cond_1
    iget-object v0, p0, Lo/RetryInfoJsonAdapter$extraCallback;->extraCallback:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/RetryInfoJsonAdapter$extraCallback;->onNavigationEvent:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 950
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/RetryInfoJsonAdapter$extraCallback;->onNavigationEvent:Ljava/lang/String;

    .line 951
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onMessageChannelReady()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 960
    invoke-virtual {p0}, Lo/RetryInfoJsonAdapter$extraCallback;->extraCallback()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lo/RetryInfoJsonAdapter$extraCallback;->onNavigationEvent:Ljava/lang/String;

    .line 962
    iput-object v1, p0, Lo/RetryInfoJsonAdapter$extraCallback;->onNavigationEvent:Ljava/lang/String;

    move-object v1, v0

    :cond_0
    return-object v1
.end method
