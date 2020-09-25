.class public final Lo/component19;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPanMismatch;


# static fields
.field public static extraCallback:I

.field public static onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extraCallback(Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 23
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1

    :catchall_0
    move-exception p0

    .line 26
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 27
    throw p0
.end method

.method public static extraCallback()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lo/component19;->onNavigationEvent:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    sget v0, Lo/component19;->extraCallback:I

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lo/component19;->extraCallback:I

    .line 5
    :cond_0
    sget v0, Lo/component19;->extraCallback:I

    .line 6
    invoke-static {v0}, Lo/component19;->onNavigationEvent(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/component19;->onNavigationEvent:Ljava/lang/String;

    .line 7
    :cond_1
    sget-object v0, Lo/component19;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method

.method public static onNavigationEvent(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x19

    .line 12
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "/proc/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cmdline"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/component19;->extraCallback(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1003
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    :goto_0
    if-eqz p0, :cond_1

    .line 3003
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 20
    :catch_1
    :cond_1
    throw v0

    :catch_2
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_2

    .line 2003
    :try_start_4
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final getException(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;
    .locals 2

    .line 4024
    iget v0, p1, Lcom/google/android/gms/common/api/Status;->asBinder:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 4003
    new-instance v0, Lcom/google/firebase/FirebaseException;

    .line 4034
    iget-object v1, p1, Lcom/google/android/gms/common/api/Status;->onTransact:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4035
    iget-object p1, p1, Lcom/google/android/gms/common/api/Status;->onTransact:Ljava/lang/String;

    goto :goto_0

    .line 4036
    :cond_0
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->asBinder:I

    invoke-static {p1}, Lo/getItemDelegate$asBinder;->onPostMessage(I)Ljava/lang/String;

    move-result-object p1

    .line 4003
    :goto_0
    invoke-direct {v0, p1}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 4004
    :cond_1
    new-instance v0, Lcom/google/firebase/FirebaseApiNotAvailableException;

    .line 5034
    iget-object v1, p1, Lcom/google/android/gms/common/api/Status;->onTransact:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 5035
    iget-object p1, p1, Lcom/google/android/gms/common/api/Status;->onTransact:Ljava/lang/String;

    goto :goto_1

    .line 5036
    :cond_2
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->asBinder:I

    invoke-static {p1}, Lo/getItemDelegate$asBinder;->onPostMessage(I)Ljava/lang/String;

    move-result-object p1

    .line 4004
    :goto_1
    invoke-direct {v0, p1}, Lcom/google/firebase/FirebaseApiNotAvailableException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
