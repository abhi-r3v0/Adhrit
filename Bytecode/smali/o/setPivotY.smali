.class public final Lo/setPivotY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setPivotY$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final arg$1:Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;

.field private final arg$2:Lcom/google/android/gms/tasks/Task;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setPivotY;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;

    iput-object p2, p0, Lo/setPivotY;->arg$2:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/OnCompleteListener;
    .locals 1

    .line 4000
    new-instance v0, Lo/setPivotY;

    invoke-direct {v0, p0, p1}, Lo/setPivotY;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;Lcom/google/android/gms/tasks/Task;)V

    return-object v0
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 3000
    iget-object v0, p0, Lo/setPivotY;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;

    iget-object v1, p0, Lo/setPivotY;->arg$2:Lcom/google/android/gms/tasks/Task;

    invoke-static {v0, v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->lambda$runWithBackoff$0(Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
