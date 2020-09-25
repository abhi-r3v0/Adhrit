.class public final Lo/access$900;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static zza:Lo/access$900;


# instance fields
.field private zzb:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lo/access$900;

    invoke-direct {v0}, Lo/access$900;-><init>()V

    sput-object v0, Lo/access$900;->zza:Lo/access$900;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo/getAlias;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/getAlias;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/access$900;->zzb:Landroid/os/Handler;

    return-void
.end method

.method public static zza()Lo/access$900;
    .locals 1

    .line 6
    sget-object v0, Lo/access$900;->zza:Lo/access$900;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lo/access$900;->zzb:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
