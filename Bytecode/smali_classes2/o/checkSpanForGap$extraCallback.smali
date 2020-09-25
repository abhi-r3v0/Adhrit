.class public final Lo/checkSpanForGap$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/checkSpanForGap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/utils/list/AsyncListDiffer$Companion;",
        "",
        "()V",
        "sMainThreadExecutor",
        "Lcom/dreamplug/utils/list/AsyncListDiffer$MainThreadExecutor;",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final arg$1:Lo/getEndedAt;

.field private final arg$2:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/getEndedAt;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/checkSpanForGap$extraCallback;->arg$1:Lo/getEndedAt;

    iput-object p2, p0, Lo/checkSpanForGap$extraCallback;->arg$2:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    return-void
.end method

.method public static lambdaFactory$(Lo/getEndedAt;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lo/checkSpanForGap$extraCallback;

    invoke-direct {v0, p0, p1}, Lo/checkSpanForGap$extraCallback;-><init>(Lo/getEndedAt;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/checkSpanForGap$extraCallback;->arg$1:Lo/getEndedAt;

    iget-object v1, p0, Lo/checkSpanForGap$extraCallback;->arg$2:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    invoke-static {v0, v1}, Lo/getEndedAt;->lambda$removeSnapshotsInSyncListener$15(Lo/getEndedAt;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)V

    return-void
.end method
