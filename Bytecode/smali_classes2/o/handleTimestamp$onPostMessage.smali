.class abstract Lo/handleTimestamp$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/handleTimestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "onPostMessage"
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/handleTimestamp;


# direct methods
.method private constructor <init>(Lo/handleTimestamp;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lo/handleTimestamp$onPostMessage;->onPostMessage:Lo/handleTimestamp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/handleTimestamp;B)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lo/handleTimestamp$onPostMessage;-><init>(Lo/handleTimestamp;)V

    return-void
.end method


# virtual methods
.method public abstract extraCallback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final run()V
    .locals 2

    .line 189
    :try_start_0
    iget-object v0, p0, Lo/handleTimestamp$onPostMessage;->onPostMessage:Lo/handleTimestamp;

    .line 1038
    iget-object v0, v0, Lo/handleTimestamp;->onTransact:Lo/exceptionStacktrace;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lo/handleTimestamp$onPostMessage;->extraCallback()V

    return-void

    .line 190
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to perform write due to unavailable sink."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 194
    iget-object v1, p0, Lo/handleTimestamp$onPostMessage;->onPostMessage:Lo/handleTimestamp;

    .line 2038
    iget-object v1, v1, Lo/handleTimestamp;->onNavigationEvent:Lo/sendListen$onPostMessage;

    .line 194
    invoke-interface {v1, v0}, Lo/sendListen$onPostMessage;->ICustomTabsCallback(Ljava/lang/Throwable;)V

    return-void
.end method
