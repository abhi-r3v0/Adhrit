.class public final Lo/capAndGetOpenSessions;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzai:Lo/b$b;

.field private final zzbw:Ljava/lang/Runtime;

.field private final zzem:Landroid/app/ActivityManager;

.field private final zzen:Landroid/app/ActivityManager$MemoryInfo;

.field private final zzeo:Ljava/lang/String;

.field private final zzep:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lo/capAndGetOpenSessions;-><init>(Ljava/lang/Runtime;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Runtime;Landroid/content/Context;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lo/capAndGetOpenSessions;->zzbw:Ljava/lang/Runtime;

    .line 5
    iput-object p2, p0, Lo/capAndGetOpenSessions;->zzep:Landroid/content/Context;

    const-string p1, "activity"

    .line 7
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lo/capAndGetOpenSessions;->zzem:Landroid/app/ActivityManager;

    .line 8
    new-instance p1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object p1, p0, Lo/capAndGetOpenSessions;->zzen:Landroid/app/ActivityManager$MemoryInfo;

    .line 9
    iget-object p2, p0, Lo/capAndGetOpenSessions;->zzem:Landroid/app/ActivityManager;

    invoke-virtual {p2, p1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 10
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object p1

    iput-object p1, p0, Lo/capAndGetOpenSessions;->zzai:Lo/b$b;

    .line 12
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    .line 13
    iget-object p2, p0, Lo/capAndGetOpenSessions;->zzem:Landroid/app/ActivityManager;

    .line 14
    invoke-virtual {p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 16
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 17
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_0

    .line 18
    iget-object p1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Lo/capAndGetOpenSessions;->zzep:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 21
    :goto_0
    iput-object p1, p0, Lo/capAndGetOpenSessions;->zzeo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getProcessName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/capAndGetOpenSessions;->zzeo:Ljava/lang/String;

    return-object v0
.end method

.method public final zzcc()I
    .locals 3

    .line 24
    sget-object v0, Lo/aR;->onPostMessage:Lo/aR;

    iget-object v1, p0, Lo/capAndGetOpenSessions;->zzbw:Ljava/lang/Runtime;

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/aR;->onPostMessage(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lo/getEmail;->onPostMessage(J)I

    move-result v0

    return v0
.end method

.method public final zzcd()I
    .locals 3

    .line 25
    sget-object v0, Lo/aR;->onNavigationEvent:Lo/aR;

    iget-object v1, p0, Lo/capAndGetOpenSessions;->zzem:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lo/aR;->onPostMessage(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lo/getEmail;->onPostMessage(J)I

    move-result v0

    return v0
.end method

.method public final zzce()I
    .locals 3

    .line 26
    sget-object v0, Lo/aR;->onPostMessage:Lo/aR;

    iget-object v1, p0, Lo/capAndGetOpenSessions;->zzen:Landroid/app/ActivityManager$MemoryInfo;

    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v0, v1, v2}, Lo/aR;->onPostMessage(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lo/getEmail;->onPostMessage(J)I

    move-result v0

    return v0
.end method
