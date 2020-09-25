.class final synthetic Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator$$Lambda$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# instance fields
.field private final arg$1:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator$$Lambda$1;->arg$1:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;)Lo/isDefaultApp;
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator$$Lambda$1;-><init>(Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;)V

    return-object v0
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator$$Lambda$1;->arg$1:Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->access$lambda$0(Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;Lcom/google/android/gms/tasks/Task;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
