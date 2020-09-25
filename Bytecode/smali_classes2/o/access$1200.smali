.class public final Lo/access$1200;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private volatile zza:I

.field private final zzb:Lo/getFilesDir;

.field private volatile zzc:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lo/getFilesDir;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lo/access$1200;->zzc:Z

    .line 5
    iput v0, p0, Lo/access$1200;->zza:I

    .line 6
    iput-object p2, p0, Lo/access$1200;->zzb:Lo/getFilesDir;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lo/RefundAccount;->ICustomTabsCallback(Landroid/app/Application;)V

    .line 1007
    sget-object p1, Lo/RefundAccount;->extraCallback:Lo/RefundAccount;

    .line 8
    new-instance p2, Lo/access$1500;

    invoke-direct {p2, p0}, Lo/access$1500;-><init>(Lo/access$1200;)V

    .line 1024
    sget-object v0, Lo/RefundAccount;->extraCallback:Lo/RefundAccount;

    monitor-enter v0

    .line 1025
    :try_start_0
    iget-object p1, p1, Lo/RefundAccount;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1026
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lo/getFilesDir;

    invoke-direct {v1, p1}, Lo/getFilesDir;-><init>(Lcom/google/firebase/FirebaseApp;)V

    invoke-direct {p0, v0, v1}, Lo/access$1200;-><init>(Landroid/content/Context;Lo/getFilesDir;)V

    return-void
.end method

.method static synthetic zza(Lo/access$1200;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/access$1200;->zzb()Z

    move-result p0

    return p0
.end method

.method static synthetic zza(Lo/access$1200;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lo/access$1200;->zzc:Z

    return p1
.end method

.method static synthetic zzb(Lo/access$1200;)Lo/getFilesDir;
    .locals 0

    .line 37
    iget-object p0, p0, Lo/access$1200;->zzb:Lo/getFilesDir;

    return-object p0
.end method

.method private final zzb()Z
    .locals 1

    .line 34
    iget v0, p0, Lo/access$1200;->zza:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lo/access$1200;->zzc:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 32
    iget-object v0, p0, Lo/access$1200;->zzb:Lo/getFilesDir;

    invoke-virtual {v0}, Lo/getFilesDir;->zzc()V

    return-void
.end method

.method public final zza(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 11
    iget v0, p0, Lo/access$1200;->zza:I

    if-nez v0, :cond_0

    .line 12
    iput p1, p0, Lo/access$1200;->zza:I

    .line 13
    invoke-direct {p0}, Lo/access$1200;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lo/access$1200;->zzb:Lo/getFilesDir;

    invoke-virtual {v0}, Lo/getFilesDir;->zza()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 15
    iget v0, p0, Lo/access$1200;->zza:I

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lo/access$1200;->zzb:Lo/getFilesDir;

    invoke-virtual {v0}, Lo/getFilesDir;->zzc()V

    .line 18
    :cond_1
    :goto_0
    iput p1, p0, Lo/access$1200;->zza:I

    return-void
.end method

.method public final zza(Lo/getColumnConstraint;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-virtual {p1}, Lo/getColumnConstraint;->onMessageChannelReady()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const-wide/16 v0, 0xe10

    .line 25
    :cond_1
    invoke-virtual {p1}, Lo/getColumnConstraint;->onNavigationEvent()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    add-long/2addr v2, v0

    .line 26
    iget-object p1, p0, Lo/access$1200;->zzb:Lo/getFilesDir;

    .line 27
    iput-wide v2, p1, Lo/getFilesDir;->zza:J

    const-wide/16 v0, -0x1

    .line 28
    iput-wide v0, p1, Lo/getFilesDir;->zzb:J

    .line 29
    invoke-direct {p0}, Lo/access$1200;->zzb()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 30
    iget-object p1, p0, Lo/access$1200;->zzb:Lo/getFilesDir;

    invoke-virtual {p1}, Lo/getFilesDir;->zza()V

    :cond_2
    return-void
.end method
