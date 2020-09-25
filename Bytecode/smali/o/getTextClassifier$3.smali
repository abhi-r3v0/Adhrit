.class final Lo/getTextClassifier$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getTextClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getTextClassifier;


# direct methods
.method constructor <init>(Lo/getTextClassifier;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lo/getTextClassifier$3;->onMessageChannelReady:Lo/getTextClassifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onNavigationEvent()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lo/getTextClassifier$3;->onMessageChannelReady:Lo/getTextClassifier;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lo/getTextClassifier$3;->onMessageChannelReady:Lo/getTextClassifier;

    .line 1090
    iget-object v1, v1, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 170
    monitor-exit v0

    return-object v2

    .line 172
    :cond_0
    iget-object v1, p0, Lo/getTextClassifier$3;->onMessageChannelReady:Lo/getTextClassifier;

    .line 2090
    invoke-virtual {v1}, Lo/getTextClassifier;->onPostMessage()V

    .line 173
    iget-object v1, p0, Lo/getTextClassifier$3;->onMessageChannelReady:Lo/getTextClassifier;

    .line 3576
    iget v3, v1, Lo/getTextClassifier;->onPostMessage:I

    const/16 v4, 0x7d0

    const/4 v5, 0x0

    if-lt v3, v4, :cond_1

    iget v3, v1, Lo/getTextClassifier;->onPostMessage:I

    iget-object v1, v1, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    .line 3577
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-lt v3, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Lo/getTextClassifier$3;->onMessageChannelReady:Lo/getTextClassifier;

    .line 4090
    invoke-virtual {v1}, Lo/getTextClassifier;->onNavigationEvent()V

    .line 175
    iget-object v1, p0, Lo/getTextClassifier$3;->onMessageChannelReady:Lo/getTextClassifier;

    .line 5090
    iput v5, v1, Lo/getTextClassifier;->onPostMessage:I

    .line 177
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Lo/getTextClassifier$3;->onNavigationEvent()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
