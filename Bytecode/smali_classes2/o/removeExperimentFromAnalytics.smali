.class public final Lo/removeExperimentFromAnalytics;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isDefaultApp;


# static fields
.field public static final $instance:Lo/isDefaultApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3000
    new-instance v0, Lo/removeExperimentFromAnalytics;

    invoke-direct {v0}, Lo/removeExperimentFromAnalytics;-><init>()V

    sput-object v0, Lo/removeExperimentFromAnalytics;->$instance:Lo/isDefaultApp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    .line 2000
    invoke-static {p1}, Lo/parseSession;->lambda$bindToMessagingService$3$FcmBroadcastProcessor(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
