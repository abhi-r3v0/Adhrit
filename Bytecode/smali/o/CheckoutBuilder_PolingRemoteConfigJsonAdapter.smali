.class public final Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/io/File;

.field private final onNavigationEvent:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onNavigationEvent:Ljava/io/File;

    .line 52
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".bak"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->ICustomTabsCallback:Ljava/io/File;

    return-void
.end method

.method private extraCallback()V
    .locals 2

    .line 152
    iget-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->ICustomTabsCallback:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 154
    iget-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->ICustomTabsCallback:Ljava/io/File;

    iget-object v1, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->extraCallback()V

    .line 148
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onNavigationEvent:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final onMessageChannelReady()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->ICustomTabsCallback:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onNavigationEvent:Ljava/io/File;

    iget-object v1, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->ICustomTabsCallback:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t rename file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to backup file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->ICustomTabsCallback:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtomicFile"

    invoke-static {v1, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 107
    :cond_1
    :goto_0
    :try_start_0
    new-instance v0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter$ICustomTabsCallback;

    iget-object v1, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onNavigationEvent:Ljava/io/File;

    invoke-direct {v0, v1}, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter$ICustomTabsCallback;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 109
    iget-object v1, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "Couldn\'t create "

    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    :try_start_1
    new-instance v0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter$ICustomTabsCallback;

    iget-object v1, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onNavigationEvent:Ljava/io/File;

    invoke-direct {v0, v1}, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter$ICustomTabsCallback;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :catch_1
    move-exception v0

    .line 117
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 111
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final onNavigationEvent(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 135
    iget-object p1, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->ICustomTabsCallback:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->ICustomTabsCallback:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onPostMessage()V
    .locals 1

    .line 62
    iget-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->onNavigationEvent:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 63
    iget-object v0, p0, Lo/CheckoutBuilder_PolingRemoteConfigJsonAdapter;->ICustomTabsCallback:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
