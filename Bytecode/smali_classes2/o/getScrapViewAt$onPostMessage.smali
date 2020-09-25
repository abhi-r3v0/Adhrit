.class public final Lo/getScrapViewAt$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getScrapViewAt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/network/internals/MoshiMigrationConverterFactory$Companion;",
        "",
        "()V",
        "GSON",
        "",
        "MOSHI",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final arg$1:Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getScrapViewAt$onPostMessage;->arg$1:Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;)Lo/isDefaultApp;
    .locals 1

    .line 3000
    new-instance v0, Lo/getScrapViewAt$onPostMessage;

    invoke-direct {v0, p0}, Lo/getScrapViewAt$onPostMessage;-><init>(Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;)V

    return-object v0
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/getScrapViewAt$onPostMessage;->arg$1:Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;

    invoke-static {v0, p1}, Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;->lambda$getAsync$0(Lo/AutoValue_CrashlyticsReport_CustomAttribute$1;Lcom/google/android/gms/tasks/Task;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;

    move-result-object p1

    return-object p1
.end method
