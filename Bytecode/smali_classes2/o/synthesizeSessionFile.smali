.class final Lo/synthesizeSessionFile;
.super Lo/doCleanInvalidTempFiles;
.source ""


# instance fields
.field final synthetic zza:Lo/writeSessionOS;


# direct methods
.method constructor <init>(Lo/writeSessionOS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    invoke-direct {p0}, Lo/doCleanInvalidTempFiles;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/common/api/Status;Lo/calculateUsedDiskSpaceInBytes;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    invoke-static {v0, p1}, Lo/writeSessionOS;->zza(Lo/writeSessionOS;Lcom/google/android/gms/common/api/Status;)V

    .line 93
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iput-object p2, v0, Lo/writeSessionOS;->zzq:Lo/calculateUsedDiskSpaceInBytes;

    .line 94
    iget-object p2, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iput-object p3, p2, Lo/writeSessionOS;->zzr:Ljava/lang/String;

    .line 95
    iget-object p2, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iput-object p4, p2, Lo/writeSessionOS;->zzs:Ljava/lang/String;

    .line 96
    iget-object p2, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget-object p2, p2, Lo/writeSessionOS;->zzg:Lo/logAnalyticsAppExceptionEvent;

    if-eqz p2, :cond_0

    .line 97
    iget-object p2, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget-object p2, p2, Lo/writeSessionOS;->zzg:Lo/logAnalyticsAppExceptionEvent;

    invoke-interface {p2, p1}, Lo/logAnalyticsAppExceptionEvent;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 98
    :cond_0
    iget-object p2, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    invoke-virtual {p2, p1}, Lo/writeSessionOS;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method private final zza(Lo/isHandlingException;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget-object v0, v0, Lo/writeSessionOS;->zzj:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/writeInitialPartsTo;

    invoke-direct {v1, p0, p1}, Lo/writeInitialPartsTo;-><init>(Lo/synthesizeSessionFile;Lo/isHandlingException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a_()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v0, v0, Lo/writeSessionOS;->zzb:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v1, v1, Lo/writeSessionOS;->zzb:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    invoke-static {v0}, Lo/writeSessionOS;->zza(Lo/writeSessionOS;)V

    return-void

    .line 5029
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11019
    iget-object v0, p1, Lcom/google/android/gms/common/api/Status;->onTransact:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v1, "MISSING_MFA_PENDING_CREDENTIAL"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42b9

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "MISSING_MFA_ENROLLMENT_ID"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42ba

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "INVALID_MFA_PENDING_CREDENTIAL"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bb

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "MFA_ENROLLMENT_NOT_FOUND"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bc

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_3
    const-string v1, "ADMIN_ONLY_OPERATION"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bd

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_4
    const-string v1, "UNVERIFIED_EMAIL"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 58
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42be

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_5
    const-string v1, "SECOND_FACTOR_EXISTS"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 60
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bf

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_6
    const-string v1, "SECOND_FACTOR_LIMIT_EXCEEDED"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 62
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_7
    const-string v1, "UNSUPPORTED_FIRST_FACTOR"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 64
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c1

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    :cond_8
    const-string v1, "EMAIL_CHANGE_NEEDS_VERIFICATION"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 66
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c2

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 69
    :cond_9
    :goto_0
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v0, v0, Lo/writeSessionOS;->zzb:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    .line 70
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/writeSessionOS;->zza(Lo/writeSessionOS;Z)Z

    .line 71
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/writeSessionOS;->zzw:Z

    .line 72
    new-instance v0, Lo/writeToCosFromFile;

    invoke-direct {v0, p0, p1}, Lo/writeToCosFromFile;-><init>(Lo/synthesizeSessionFile;Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, v0}, Lo/synthesizeSessionFile;->zza(Lo/isHandlingException;)V

    return-void

    .line 73
    :cond_a
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    invoke-static {v0, p1}, Lo/writeSessionOS;->zza(Lo/writeSessionOS;Lcom/google/android/gms/common/api/Status;)V

    .line 74
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    invoke-virtual {v0, p1}, Lo/writeSessionOS;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;Lo/flushOrLog;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v0, v0, Lo/writeSessionOS;->zzb:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v1, v1, Lo/writeSessionOS;->zzb:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0, v0}, Lo/synthesizeSessionFile;->zza(Lcom/google/android/gms/common/api/Status;Lo/calculateUsedDiskSpaceInBytes;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11029
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v0, v0, Lo/writeSessionOS;->zzb:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v1, v1, Lo/writeSessionOS;->zzb:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iput-object p1, v0, Lo/writeSessionOS;->zzo:Ljava/lang/String;

    .line 27
    iget-object p1, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    invoke-static {p1}, Lo/writeSessionOS;->zza(Lo/writeSessionOS;)V

    return-void

    .line 7029
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lo/ColDef;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v0, v0, Lo/writeSessionOS;->zzb:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v1, v1, Lo/writeSessionOS;->zzb:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iput-object p1, v0, Lo/writeSessionOS;->zzm:Lo/ColDef;

    .line 13
    iget-object p1, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    invoke-static {p1}, Lo/writeSessionOS;->zza(Lo/writeSessionOS;)V

    return-void

    .line 3029
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lo/flushOrLog;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v0, v0, Lo/writeSessionOS;->zzb:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v2, v2, Lo/writeSessionOS;->zzb:I

    const/16 v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    invoke-static {v0, v1}, Lo/writeSessionOS;->zza(Lo/writeSessionOS;Z)Z

    .line 35
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iput-boolean v1, v0, Lo/writeSessionOS;->zzw:Z

    .line 36
    new-instance v0, Lo/copyToCodedOutputStream;

    invoke-direct {v0, p0, p1}, Lo/copyToCodedOutputStream;-><init>(Lo/synthesizeSessionFile;Lo/flushOrLog;)V

    invoke-direct {p0, v0}, Lo/synthesizeSessionFile;->zza(Lo/isHandlingException;)V

    return-void

    .line 9029
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lo/getColumnConstraint;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v0, v0, Lo/writeSessionOS;->zzb:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v0, v0, Lo/writeSessionOS;->zzb:I

    const/16 v2, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iput-object p1, v0, Lo/writeSessionOS;->zzk:Lo/getColumnConstraint;

    .line 4
    iget-object p1, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    invoke-static {p1}, Lo/writeSessionOS;->zza(Lo/writeSessionOS;)V

    return-void

    .line 1029
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lo/getColumnConstraint;Lo/getColumnName;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v0, v0, Lo/writeSessionOS;->zzb:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v1, v1, Lo/writeSessionOS;->zzb:I

    const/16 v2, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iput-object p1, v0, Lo/writeSessionOS;->zzk:Lo/getColumnConstraint;

    .line 8
    iget-object p1, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iput-object p2, p1, Lo/writeSessionOS;->zzl:Lo/getColumnName;

    .line 9
    iget-object p1, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    invoke-static {p1}, Lo/writeSessionOS;->zza(Lo/writeSessionOS;)V

    return-void

    .line 2029
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lo/setCsat;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v0, v0, Lo/writeSessionOS;->zzb:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v1, v1, Lo/writeSessionOS;->zzb:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iput-object p1, v0, Lo/writeSessionOS;->zzn:Lo/setCsat;

    .line 17
    iget-object p1, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    invoke-static {p1}, Lo/writeSessionOS;->zza(Lo/writeSessionOS;)V

    return-void

    .line 4029
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lo/setCustomResponseTimeMessage;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iput-object p1, v0, Lo/writeSessionOS;->zzt:Lo/setCustomResponseTimeMessage;

    .line 88
    iget-object p1, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    const-string v0, "REQUIRES_SECOND_FACTOR_AUTH"

    .line 89
    invoke-static {v0}, Lo/extraCallback;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Lo/writeSessionOS;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zza(Lo/setResponseTimeType;)V
    .locals 3

    .line 81
    invoke-virtual {p1}, Lo/setResponseTimeType;->onPostMessage()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 82
    invoke-virtual {p1}, Lo/setResponseTimeType;->ICustomTabsCallback()Lo/CrashlyticsController$4;

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Lo/setResponseTimeType;->extraCallback()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {p1}, Lo/setResponseTimeType;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-direct {p0, v0, v1, v2, p1}, Lo/synthesizeSessionFile;->zza(Lcom/google/android/gms/common/api/Status;Lo/calculateUsedDiskSpaceInBytes;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzb()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v0, v0, Lo/writeSessionOS;->zzb:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v1, v1, Lo/writeSessionOS;->zzb:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    invoke-static {v0}, Lo/writeSessionOS;->zza(Lo/writeSessionOS;)V

    return-void

    .line 6029
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v0, v0, Lo/writeSessionOS;->zzb:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v1, v1, Lo/writeSessionOS;->zzb:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iput-object p1, v0, Lo/writeSessionOS;->zzp:Ljava/lang/String;

    .line 31
    new-instance v0, Lo/writeSessionEvent;

    invoke-direct {v0, p0, p1}, Lo/writeSessionEvent;-><init>(Lo/synthesizeSessionFile;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/synthesizeSessionFile;->zza(Lo/isHandlingException;)V

    return-void

    .line 8029
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v0, v0, Lo/writeSessionOS;->zzb:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v1, v1, Lo/writeSessionOS;->zzb:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected response type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    invoke-static {v0}, Lo/writeSessionOS;->zza(Lo/writeSessionOS;)V

    return-void

    .line 12029
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzc(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v0, v0, Lo/writeSessionOS;->zzb:I

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iget v2, v2, Lo/writeSessionOS;->zzb:I

    const/16 v3, 0x24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected response type "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iput-object p1, v0, Lo/writeSessionOS;->zzp:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    invoke-static {v0, v1}, Lo/writeSessionOS;->zza(Lo/writeSessionOS;Z)Z

    .line 41
    iget-object v0, p0, Lo/synthesizeSessionFile;->zza:Lo/writeSessionOS;

    iput-boolean v1, v0, Lo/writeSessionOS;->zzw:Z

    .line 42
    new-instance v0, Lo/appendOrganizationIdToSessionFile;

    invoke-direct {v0, p0, p1}, Lo/appendOrganizationIdToSessionFile;-><init>(Lo/synthesizeSessionFile;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/synthesizeSessionFile;->zza(Lo/isHandlingException;)V

    return-void

    .line 10029
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
