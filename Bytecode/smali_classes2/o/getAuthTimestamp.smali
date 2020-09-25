.class public final Lo/getAuthTimestamp;
.super Ljava/lang/Object;


# static fields
.field static final onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

.field private static final onNavigationEvent:Landroid/content/Intent;


# instance fields
.field final ICustomTabsCallback:Lo/findReferenceChild$onMessageChannelReady;

.field extraCallback:Lo/isSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isSet<",
            "Lo/buildCrashlytics;",
            ">;"
        }
    .end annotation
.end field

.field final onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "AppUpdateService"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/getAuthTimestamp;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.install.BIND_UPDATE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lo/getAuthTimestamp;->onNavigationEvent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/findReferenceChild$onMessageChannelReady;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getAuthTimestamp;->onPostMessage:Ljava/lang/String;

    iput-object p1, p0, Lo/getAuthTimestamp;->onRelationshipValidationResult:Landroid/content/Context;

    iput-object p2, p0, Lo/getAuthTimestamp;->ICustomTabsCallback:Lo/findReferenceChild$onMessageChannelReady;

    invoke-static {p1}, Lo/DependencyCycleException;->onMessageChannelReady(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lo/isSet;

    .line 1000
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    sget-object v2, Lo/getAuthTimestamp;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    sget-object v4, Lo/getAuthTimestamp;->onNavigationEvent:Landroid/content/Intent;

    sget-object v5, Lo/WorkDatabase_Impl;->onPostMessage:Lo/optional;

    const-string v3, "AppUpdateService"

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lo/isSet;-><init>(Landroid/content/Context;Lo/addItemDecoration$onPostMessage;Ljava/lang/String;Landroid/content/Intent;Lo/optional;)V

    iput-object p2, p0, Lo/getAuthTimestamp;->extraCallback:Lo/isSet;

    :cond_1
    return-void
.end method

.method static extraCallback()Lo/getMinidumpFile;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/getMinidumpFile<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lo/getAuthTimestamp;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, -0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "onError(%d)"

    invoke-virtual {v0, v3, v1}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/play/core/install/InstallException;

    invoke-direct {v0, v2}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    invoke-static {v0}, Lo/extraCallback;->onMessageChannelReady(Ljava/lang/Exception;)Lo/getMinidumpFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/getAuthTimestamp;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2000
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "playcore.version.code"

    const/16 v3, 0x2a30

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v1, "package.name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p0, Lo/getAuthTimestamp;->onRelationshipValidationResult:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lo/getAuthTimestamp;->onRelationshipValidationResult:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lo/getAuthTimestamp;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "The current version of the app could not be retrieved"

    invoke-virtual {p0, v1, p1}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const-string p1, "app.version.code"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method
