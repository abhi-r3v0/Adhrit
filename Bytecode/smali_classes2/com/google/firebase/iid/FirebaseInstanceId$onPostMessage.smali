.class public Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/FirebaseInstanceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onPostMessage"
.end annotation


# instance fields
.field private dataCollectionDefaultChangeEventHandler:Lo/AutoCrashlyticsReportEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AutoCrashlyticsReportEncoder<",
            "Lo/isPowerConnected;",
            ">;"
        }
    .end annotation
.end field

.field private fcmAutoInitEnabled:Ljava/lang/Boolean;

.field private initialized:Z

.field private isFcmLibraryPresent:Z

.field private final subscriber:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;

.field final synthetic this$0:Lcom/google/firebase/iid/FirebaseInstanceId;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->this$0:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->subscriber:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;

    return-void
.end method

.method private isFcmPresent()Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.google.firebase.messaging.FirebaseMessaging"

    .line 48
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    nop

    .line 51
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->this$0:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->access$000(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 52
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_0

    return v0

    :cond_0
    return v3
.end method

.method private readEnabled()Ljava/lang/Boolean;
    .locals 6

    const-string v0, "firebase_messaging_auto_init_enabled"

    .line 32
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->this$0:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->access$000(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "com.google.firebase.messaging"

    .line 34
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "auto_init"

    .line 35
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 36
    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 37
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    .line 41
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 42
    iget-object v2, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 43
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method declared-synchronized initialize()V
    .locals 3

    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->isFcmPresent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->isFcmLibraryPresent:Z

    .line 7
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->readEnabled()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->fcmAutoInitEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 8
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->isFcmLibraryPresent:Z

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lo/parseOs;

    invoke-direct {v0, p0}, Lo/parseOs;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;)V

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->dataCollectionDefaultChangeEventHandler:Lo/AutoCrashlyticsReportEncoder;

    .line 10
    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->subscriber:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;

    const-class v2, Lo/isPowerConnected;

    invoke-interface {v1, v2, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;->subscribe(Ljava/lang/Class;Lo/AutoCrashlyticsReportEncoder;)V

    :cond_1
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isEnabled()Z
    .locals 1

    monitor-enter p0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->initialize()V

    .line 14
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->fcmAutoInitEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->fcmAutoInitEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 16
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->isFcmLibraryPresent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->this$0:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->access$000(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 17
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic lambda$initialize$0$FirebaseInstanceId$AutoInit(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportFilesPayloadEncoder;)V
    .locals 0

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->this$0:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->access$100(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    .line 59
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setEnabled(Z)V
    .locals 3

    monitor-enter p0

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->initialize()V

    .line 19
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->dataCollectionDefaultChangeEventHandler:Lo/AutoCrashlyticsReportEncoder;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->subscriber:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;

    const-class v1, Lo/isPowerConnected;

    iget-object v2, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->dataCollectionDefaultChangeEventHandler:Lo/AutoCrashlyticsReportEncoder;

    invoke-interface {v0, v1, v2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionDeviceEncoder;->unsubscribe(Ljava/lang/Class;Lo/AutoCrashlyticsReportEncoder;)V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->dataCollectionDefaultChangeEventHandler:Lo/AutoCrashlyticsReportEncoder;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->this$0:Lcom/google/firebase/iid/FirebaseInstanceId;

    .line 23
    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->access$000(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.firebase.messaging"

    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_init"

    .line 26
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 27
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_1

    .line 29
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->this$0:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->access$100(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    .line 30
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$onPostMessage;->fcmAutoInitEnabled:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
