.class public final Lo/І;
.super Lo/AppsFlyerLibCore$4;
.source ""


# instance fields
.field private ICustomTabsCallback:Landroid/content/Context;

.field private onNavigationEvent:I

.field private onPostMessage:Lo/AppsFlyerLibCore$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 35
    invoke-direct {p0}, Lo/AppsFlyerLibCore$4;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/І;->ICustomTabsCallback:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "SoLoader"

    const-string v1, "context.getApplicationContext returned null, holding reference to original context."

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iput-object p1, p0, Lo/І;->ICustomTabsCallback:Landroid/content/Context;

    .line 43
    :cond_0
    iput p2, p0, Lo/І;->onNavigationEvent:I

    .line 44
    new-instance p1, Lo/AppsFlyerLibCore$1;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/І;->ICustomTabsCallback:Landroid/content/Context;

    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, p2}, Lo/AppsFlyerLibCore$1;-><init>(Ljava/io/File;I)V

    iput-object p1, p0, Lo/І;->onPostMessage:Lo/AppsFlyerLibCore$1;

    return-void
.end method


# virtual methods
.method public final extraCallback()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lo/І;->onPostMessage:Lo/AppsFlyerLibCore$1;

    iget-object v0, v0, Lo/AppsFlyerLibCore$1;->extraCallback:Ljava/io/File;

    .line 57
    invoke-virtual {p0}, Lo/І;->onPostMessage()Landroid/content/Context;

    move-result-object v1

    .line 1083
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Native library directory updated from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SoLoader"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget v0, p0, Lo/І;->onNavigationEvent:I

    const/4 v3, 0x1

    or-int/2addr v0, v3

    iput v0, p0, Lo/І;->onNavigationEvent:I

    .line 66
    new-instance v4, Lo/AppsFlyerLibCore$1;

    invoke-direct {v4, v2, v0}, Lo/AppsFlyerLibCore$1;-><init>(Ljava/io/File;I)V

    iput-object v4, p0, Lo/І;->onPostMessage:Lo/AppsFlyerLibCore$1;

    .line 67
    iget v0, p0, Lo/І;->onNavigationEvent:I

    invoke-virtual {v4, v0}, Lo/AppsFlyerLibCore$1;->onMessageChannelReady(I)V

    .line 68
    iput-object v1, p0, Lo/І;->ICustomTabsCallback:Landroid/content/Context;

    return v3

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final onMessageChannelReady(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lo/І;->onPostMessage:Lo/AppsFlyerLibCore$1;

    invoke-virtual {v0, p1}, Lo/AppsFlyerLibCore$1;->onMessageChannelReady(I)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lo/І;->onPostMessage:Lo/AppsFlyerLibCore$1;

    invoke-virtual {v0, p1, p2, p3}, Lo/AppsFlyerLibCore$4;->onPostMessage(Ljava/lang/String;ILandroid/os/StrictMode$ThreadPolicy;)I

    move-result p1

    return p1
.end method

.method public final onPostMessage()Landroid/content/Context;
    .locals 3

    .line 76
    :try_start_0
    iget-object v0, p0, Lo/І;->ICustomTabsCallback:Landroid/content/Context;

    iget-object v1, p0, Lo/І;->ICustomTabsCallback:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lo/І;->onPostMessage:Lo/AppsFlyerLibCore$1;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
