.class public Lcom/google/android/gms/common/api/ApiException;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field public extraCallback:Lcom/google/android/gms/common/api/Status;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    .line 1024
    iget v0, p1, Lcom/google/android/gms/common/api/Status;->asBinder:I

    .line 2019
    iget-object v1, p1, Lcom/google/android/gms/common/api/Status;->onTransact:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3019
    iget-object v1, p1, Lcom/google/android/gms/common/api/Status;->onTransact:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 3
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/common/api/ApiException;->extraCallback:Lcom/google/android/gms/common/api/Status;

    return-void
.end method
