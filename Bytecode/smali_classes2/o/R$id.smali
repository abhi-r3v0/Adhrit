.class public final Lo/R$id;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static extraCallback:Lo/R$id;


# instance fields
.field private onMessageChannelReady:Landroid/content/SharedPreferences;

.field private onNavigationEvent:Lo/b$b;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object v0

    iput-object v0, p0, Lo/R$id;->onNavigationEvent:Lo/b$b;

    return-void
.end method

.method private static ICustomTabsCallback()Landroid/content/Context;
    .locals 1

    .line 118
    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized onNavigationEvent()Lo/R$id;
    .locals 2

    const-class v0, Lo/R$id;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lo/R$id;->extraCallback:Lo/R$id;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lo/R$id;

    invoke-direct {v1}, Lo/R$id;-><init>()V

    sput-object v1, Lo/R$id;->extraCallback:Lo/R$id;

    .line 6
    :cond_0
    sget-object v1, Lo/R$id;->extraCallback:Lo/R$id;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/aP;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/aP<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 41
    iget-object p1, p0, Lo/R$id;->onNavigationEvent:Lo/b$b;

    const-string v0, "Key is null when getting String value on device cache."

    invoke-virtual {p1, v0}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    .line 43
    :cond_0
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 44
    invoke-static {}, Lo/R$id;->ICustomTabsCallback()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/R$id;->ICustomTabsCallback(Landroid/content/Context;)V

    .line 45
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 46
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    .line 47
    :cond_1
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    .line 49
    :cond_2
    :try_start_0
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aP;->onPostMessage(Ljava/lang/Object;)Lo/aP;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 51
    iget-object v1, p0, Lo/R$id;->onNavigationEvent:Lo/b$b;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 52
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "Key %s from sharedPreferences has type other than String: %s"

    .line 53
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {v1, p1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized ICustomTabsCallback(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "FirebasePerfSharedPrefs"

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 57
    iget-object p1, p0, Lo/R$id;->onNavigationEvent:Lo/b$b;

    const-string p2, "Key is null when setting String value on device cache."

    invoke-virtual {p1, p2}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    return v0

    .line 59
    :cond_0
    iget-object v1, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 60
    invoke-static {}, Lo/R$id;->ICustomTabsCallback()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo/R$id;->ICustomTabsCallback(Landroid/content/Context;)V

    .line 61
    iget-object v1, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 64
    iget-object p2, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0

    .line 66
    :cond_2
    iget-object v1, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 32
    iget-object p1, p0, Lo/R$id;->onNavigationEvent:Lo/b$b;

    const-string p2, "Key is null when setting boolean value on device cache."

    invoke-virtual {p1, p2}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    return v0

    .line 34
    :cond_0
    iget-object v1, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 35
    invoke-static {}, Lo/R$id;->ICustomTabsCallback()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo/R$id;->ICustomTabsCallback(Landroid/content/Context;)V

    .line 36
    iget-object v1, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    return v0

    .line 38
    :cond_1
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/aP;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/aP<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 94
    iget-object p1, p0, Lo/R$id;->onNavigationEvent:Lo/b$b;

    const-string v0, "Key is null when getting long value on device cache."

    invoke-virtual {p1, v0}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    .line 96
    :cond_0
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 97
    invoke-static {}, Lo/R$id;->ICustomTabsCallback()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/R$id;->ICustomTabsCallback(Landroid/content/Context;)V

    .line 98
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 99
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    .line 100
    :cond_1
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    .line 102
    :cond_2
    :try_start_0
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lo/aP;->onPostMessage(Ljava/lang/Object;)Lo/aP;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 104
    iget-object v1, p0, Lo/R$id;->onNavigationEvent:Lo/b$b;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 105
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "Key %s from sharedPreferences has type other than long: %s"

    .line 106
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {v1, p1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Lo/aP;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/aP<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 11
    iget-object p1, p0, Lo/R$id;->onNavigationEvent:Lo/b$b;

    const-string v0, "Key is null when getting boolean value on device cache."

    invoke-virtual {p1, v0}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 14
    invoke-static {}, Lo/R$id;->ICustomTabsCallback()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/R$id;->ICustomTabsCallback(Landroid/content/Context;)V

    .line 15
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 16
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    .line 17
    :cond_1
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x0

    .line 19
    :try_start_0
    iget-object v1, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lo/aP;->onPostMessage(Ljava/lang/Object;)Lo/aP;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 21
    iget-object v2, p0, Lo/R$id;->onNavigationEvent:Lo/b$b;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const/4 p1, 0x1

    .line 22
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, p1

    const-string p1, "Key %s from sharedPreferences has type other than long: %s"

    .line 23
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {v2, p1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;F)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 85
    iget-object p1, p0, Lo/R$id;->onNavigationEvent:Lo/b$b;

    const-string p2, "Key is null when setting float value on device cache."

    invoke-virtual {p1, p2}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    return v0

    .line 87
    :cond_0
    iget-object v1, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 88
    invoke-static {}, Lo/R$id;->ICustomTabsCallback()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo/R$id;->ICustomTabsCallback(Landroid/content/Context;)V

    .line 89
    iget-object v1, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    return v0

    .line 91
    :cond_1
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;J)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 110
    iget-object p1, p0, Lo/R$id;->onNavigationEvent:Lo/b$b;

    const-string p2, "Key is null when setting long value on device cache."

    invoke-virtual {p1, p2}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    return v0

    .line 112
    :cond_0
    iget-object v1, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 113
    invoke-static {}, Lo/R$id;->ICustomTabsCallback()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo/R$id;->ICustomTabsCallback(Landroid/content/Context;)V

    .line 114
    iget-object v1, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    return v0

    .line 116
    :cond_1
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 27
    iget-object p1, p0, Lo/R$id;->onNavigationEvent:Lo/b$b;

    const-string v0, "Key is null. Cannot clear nullable key"

    invoke-virtual {p1, v0}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/aP;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/aP<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 69
    iget-object p1, p0, Lo/R$id;->onNavigationEvent:Lo/b$b;

    const-string v0, "Key is null when getting float value on device cache."

    invoke-virtual {p1, v0}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    .line 71
    :cond_0
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 72
    invoke-static {}, Lo/R$id;->ICustomTabsCallback()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/R$id;->ICustomTabsCallback(Landroid/content/Context;)V

    .line 73
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 74
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    .line 75
    :cond_1
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    .line 77
    :cond_2
    :try_start_0
    iget-object v0, p0, Lo/R$id;->onMessageChannelReady:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lo/aP;->onPostMessage(Ljava/lang/Object;)Lo/aP;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 79
    iget-object v1, p0, Lo/R$id;->onNavigationEvent:Lo/b$b;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 80
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "Key %s from sharedPreferences has type other than float: %s"

    .line 81
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {v1, p1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1
.end method
