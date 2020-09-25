.class final Lcom/google/firebase/crashlytics/internal/log/LogFileManager$NoopLogStore;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/log/FileLogStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/log/LogFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoopLogStore"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/log/LogFileManager$1;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager$NoopLogStore;-><init>()V

    return-void
.end method


# virtual methods
.method public final closeLogFile()V
    .locals 0

    return-void
.end method

.method public final deleteLogFile()V
    .locals 0

    return-void
.end method

.method public final getLogAsBytes()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLogAsString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final writeToLog(JLjava/lang/String;)V
    .locals 0

    return-void
.end method
