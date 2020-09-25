.class final synthetic Lo/setSdkVersion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;


# instance fields
.field private final arg$1:Lo/removeBackgroundStateChangeListener;

.field private final arg$2:Lo/removeBackgroundStateChangeListener;

.field private final arg$3:Lo/AutoValue_CrashlyticsReport_CustomAttribute;


# direct methods
.method private constructor <init>(Lo/removeBackgroundStateChangeListener;Lo/removeBackgroundStateChangeListener;Lo/AutoValue_CrashlyticsReport_CustomAttribute;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setSdkVersion;->arg$1:Lo/removeBackgroundStateChangeListener;

    iput-object p2, p0, Lo/setSdkVersion;->arg$2:Lo/removeBackgroundStateChangeListener;

    iput-object p3, p0, Lo/setSdkVersion;->arg$3:Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    return-void
.end method

.method public static lambdaFactory$(Lo/removeBackgroundStateChangeListener;Lo/removeBackgroundStateChangeListener;Lo/AutoValue_CrashlyticsReport_CustomAttribute;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;
    .locals 1

    new-instance v0, Lo/setSdkVersion;

    invoke-direct {v0, p0, p1, p2}, Lo/setSdkVersion;-><init>(Lo/removeBackgroundStateChangeListener;Lo/removeBackgroundStateChangeListener;Lo/AutoValue_CrashlyticsReport_CustomAttribute;)V

    return-object v0
.end method


# virtual methods
.method public final onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 3

    iget-object v0, p0, Lo/setSdkVersion;->arg$1:Lo/removeBackgroundStateChangeListener;

    iget-object v1, p0, Lo/setSdkVersion;->arg$2:Lo/removeBackgroundStateChangeListener;

    iget-object v2, p0, Lo/setSdkVersion;->arg$3:Lo/AutoValue_CrashlyticsReport_CustomAttribute;

    check-cast p1, Lo/setSession;

    invoke-static {v0, v1, v2, p1, p2}, Lo/setInstallationUuid;->lambda$getViaSnapshotListener$1(Lo/removeBackgroundStateChangeListener;Lo/removeBackgroundStateChangeListener;Lo/AutoValue_CrashlyticsReport_CustomAttribute;Lo/setSession;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method
