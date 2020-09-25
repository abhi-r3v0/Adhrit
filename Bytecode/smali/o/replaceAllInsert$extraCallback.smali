.class public final Lo/replaceAllInsert$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/replaceAllInsert;
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
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final arg$1:Lo/getEndedAt;

.field private final arg$2:Lo/removeBackgroundStateChangeListener;

.field private final arg$3:Landroid/content/Context;

.field private final arg$4:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/getEndedAt;Lo/removeBackgroundStateChangeListener;Landroid/content/Context;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/replaceAllInsert$extraCallback;->arg$1:Lo/getEndedAt;

    iput-object p2, p0, Lo/replaceAllInsert$extraCallback;->arg$2:Lo/removeBackgroundStateChangeListener;

    iput-object p3, p0, Lo/replaceAllInsert$extraCallback;->arg$3:Landroid/content/Context;

    iput-object p4, p0, Lo/replaceAllInsert$extraCallback;->arg$4:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    return-void
.end method

.method public static lambdaFactory$(Lo/getEndedAt;Lo/removeBackgroundStateChangeListener;Landroid/content/Context;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)Ljava/lang/Runnable;
    .locals 1

    .line 4000
    new-instance v0, Lo/replaceAllInsert$extraCallback;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/replaceAllInsert$extraCallback;-><init>(Lo/getEndedAt;Lo/removeBackgroundStateChangeListener;Landroid/content/Context;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)V

    return-object v0
.end method

.method public static onNavigationEvent(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/google/android/gms/common/api/Status;->asInterface:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1003
    new-instance v0, Lcom/google/android/gms/common/api/ResolvableApiException;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/ResolvableApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0

    .line 1004
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 3000
    iget-object v0, p0, Lo/replaceAllInsert$extraCallback;->arg$1:Lo/getEndedAt;

    iget-object v1, p0, Lo/replaceAllInsert$extraCallback;->arg$2:Lo/removeBackgroundStateChangeListener;

    iget-object v2, p0, Lo/replaceAllInsert$extraCallback;->arg$3:Landroid/content/Context;

    iget-object v3, p0, Lo/replaceAllInsert$extraCallback;->arg$4:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    invoke-static {v0, v1, v2, v3}, Lo/getEndedAt;->lambda$new$0(Lo/getEndedAt;Lo/removeBackgroundStateChangeListener;Landroid/content/Context;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)V

    return-void
.end method
