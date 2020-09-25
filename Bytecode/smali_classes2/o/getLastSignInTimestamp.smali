.class final Lo/getLastSignInTimestamp;
.super Lo/getExpirationTimestamp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getExpirationTimestamp<",
        "Lo/getIdToken;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getAuthTimestamp;

.field private final onNavigationEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/getAuthTimestamp;Lo/doOnboarding;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/doOnboarding<",
            "Lo/getIdToken;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lo/getLastSignInTimestamp;->extraCallback:Lo/getAuthTimestamp;

    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "OnRequestInstallCallback"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lo/getExpirationTimestamp;-><init>(Lo/getAuthTimestamp;Lo/addItemDecoration$onPostMessage;Lo/doOnboarding;)V

    iput-object p3, p0, Lo/getLastSignInTimestamp;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Lo/getExpirationTimestamp;->onMessageChannelReady(Landroid/os/Bundle;)V

    const/4 v2, -0x2

    const-string v3, "error.code"

    .line 1000
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lo/getExpirationTimestamp;->onPostMessage:Lo/doOnboarding;

    new-instance v5, Lcom/google/android/play/core/install/InstallException;

    .line 2000
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v5, v1}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    .line 3000
    iget-object v1, v4, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    invoke-virtual {v1, v5}, Lo/Onboarding;->extraCallback(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    iget-object v2, v0, Lo/getExpirationTimestamp;->onPostMessage:Lo/doOnboarding;

    iget-object v3, v0, Lo/getLastSignInTimestamp;->extraCallback:Lo/getAuthTimestamp;

    iget-object v5, v0, Lo/getLastSignInTimestamp;->onNavigationEvent:Ljava/lang/String;

    const/4 v4, -0x1

    const-string v6, "version.code"

    .line 4000
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "update.availability"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    const-string v9, "install.status"

    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "client.version.staleness"

    invoke-virtual {v1, v10, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    move-object/from16 v23, v4

    const-string v4, "in.app.update.priority"

    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v4, "bytes.downloaded"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v4, "total.bytes.to.download"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    const-string v4, "additional.size.required"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    iget-object v3, v3, Lo/getAuthTimestamp;->ICustomTabsCallback:Lo/findReferenceChild$onMessageChannelReady;

    .line 5000
    new-instance v4, Ljava/io/File;

    iget-object v3, v3, Lo/findReferenceChild$onMessageChannelReady;->ICustomTabsCallback:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v8, "assetpacks"

    invoke-direct {v4, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lo/findReferenceChild$onMessageChannelReady;->onMessageChannelReady(Ljava/io/File;)J

    move-result-wide v17

    const-string v3, "blocking.intent"

    .line 4000
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/app/PendingIntent;

    const-string v3, "nonblocking.intent"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/app/PendingIntent;

    const-string v3, "blocking.destructive.intent"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/app/PendingIntent;

    const-string v3, "nonblocking.destructive.intent"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Landroid/app/PendingIntent;

    .line 6000
    new-instance v1, Lo/getSession;

    move-object v4, v1

    move v8, v9

    move-object/from16 v9, v23

    invoke-direct/range {v4 .. v22}, Lo/getSession;-><init>(Ljava/lang/String;IIILjava/lang/Integer;IJJJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 7000
    iget-object v2, v2, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    invoke-virtual {v2, v1}, Lo/Onboarding;->ICustomTabsCallback(Ljava/lang/Object;)Z

    return-void
.end method
