.class final Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter$ICustomTabsCallback;
.super Ljava/io/OutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final onNavigationEvent:Ljava/io/FileOutputStream;

.field private onPostMessage:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter$ICustomTabsCallback;->onPostMessage:Z

    .line 164
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter$ICustomTabsCallback;->onNavigationEvent:Ljava/io/FileOutputStream;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-boolean v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter$ICustomTabsCallback;->onPostMessage:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter$ICustomTabsCallback;->onPostMessage:Z

    .line 173
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 175
    :try_start_0
    iget-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter$ICustomTabsCallback;->onNavigationEvent:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AtomicFile"

    const-string v2, "Failed to sync file descriptor:"

    .line 177
    invoke-static {v1, v2, v0}, Lo/JusPayWrapper;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    :goto_0
    iget-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter$ICustomTabsCallback;->onNavigationEvent:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter$ICustomTabsCallback;->onNavigationEvent:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter$ICustomTabsCallback;->onNavigationEvent:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter$ICustomTabsCallback;->onNavigationEvent:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter$ICustomTabsCallback;->onNavigationEvent:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
