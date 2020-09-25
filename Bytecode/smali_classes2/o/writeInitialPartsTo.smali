.class final Lo/writeInitialPartsTo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lo/isHandlingException;

.field private final synthetic zzb:Lo/synthesizeSessionFile;


# direct methods
.method constructor <init>(Lo/synthesizeSessionFile;Lo/isHandlingException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/writeInitialPartsTo;->zzb:Lo/synthesizeSessionFile;

    iput-object p2, p0, Lo/writeInitialPartsTo;->zza:Lo/isHandlingException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lo/writeInitialPartsTo;->zzb:Lo/synthesizeSessionFile;

    iget-object v0, v0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget-object v0, v0, Lo/writeSessionOS;->zzi:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lo/writeInitialPartsTo;->zzb:Lo/synthesizeSessionFile;

    iget-object v1, v1, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget-object v1, v1, Lo/writeSessionOS;->zzi:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lo/writeInitialPartsTo;->zza:Lo/isHandlingException;

    iget-object v2, p0, Lo/writeInitialPartsTo;->zzb:Lo/synthesizeSessionFile;

    iget-object v2, v2, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget-object v2, v2, Lo/writeSessionOS;->zzi:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/copyStream$extraCallback;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lo/isHandlingException;->zza(Lo/copyStream$extraCallback;[Ljava/lang/Object;)V

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
