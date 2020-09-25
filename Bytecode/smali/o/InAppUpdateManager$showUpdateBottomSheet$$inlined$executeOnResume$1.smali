.class public final Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;
.super Ljava/io/BufferedOutputStream;
.source ""


# instance fields
.field private ICustomTabsCallback:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Z

    .line 44
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 49
    :goto_0
    :try_start_1
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 56
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->onMessageChannelReady(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(Ljava/io/OutputStream;)V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Z

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 69
    iput-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Ljava/io/BufferedOutputStream;->count:I

    .line 71
    iput-boolean p1, p0, Lo/InAppUpdateManager$showUpdateBottomSheet$$inlined$executeOnResume$1;->ICustomTabsCallback:Z

    return-void
.end method
