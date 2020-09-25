.class public final Lo/getPaymentItem;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPaymentItem$onNavigationEvent;,
        Lo/getPaymentItem$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final extraCallback:Lo/getPaymentItem$onNavigationEvent;


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

.field private final arg$2:Lo/removeBackgroundStateChangeListener;

.field private final arg$3:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lo/getTotalCount;

    invoke-direct {v0}, Lo/getTotalCount;-><init>()V

    sput-object v0, Lo/getPaymentItem;->extraCallback:Lo/getPaymentItem$onNavigationEvent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/removeBackgroundStateChangeListener;Ljava/lang/Object;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getPaymentItem;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    iput-object p2, p0, Lo/getPaymentItem;->arg$2:Lo/removeBackgroundStateChangeListener;

    iput-object p3, p0, Lo/getPaymentItem;->arg$3:Ljava/lang/Object;

    return-void
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/removeBackgroundStateChangeListener;Ljava/lang/Object;)Lcom/google/android/gms/tasks/OnCompleteListener;
    .locals 1

    .line 4000
    new-instance v0, Lo/getPaymentItem;

    invoke-direct {v0, p0, p1, p2}, Lo/getPaymentItem;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/removeBackgroundStateChangeListener;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static onMessageChannelReady(Lo/getPaymentDueDateWeaklyTyped;Lo/getPaymentItem$onMessageChannelReady;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lo/PaymentRequestItem;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/getPaymentDueDateWeaklyTyped<",
            "TR;>;",
            "Lo/getPaymentItem$onMessageChannelReady<",
            "TR;TT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 2
    sget-object v0, Lo/getPaymentItem;->extraCallback:Lo/getPaymentItem$onNavigationEvent;

    .line 3
    new-instance v1, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v1}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 4
    new-instance v2, Lo/getNextPage;

    invoke-direct {v2, p0, v1, p1, v0}, Lo/getNextPage;-><init>(Lo/getPaymentDueDateWeaklyTyped;Lo/removeBackgroundStateChangeListener;Lo/getPaymentItem$onMessageChannelReady;Lo/getPaymentItem$onNavigationEvent;)V

    invoke-virtual {p0, v2}, Lo/getPaymentDueDateWeaklyTyped;->ICustomTabsCallback(Lo/getPaymentDueDateWeaklyTyped$onMessageChannelReady;)V

    .line 1014
    iget-object p0, v1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object p0
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 3000
    iget-object v0, p0, Lo/getPaymentItem;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;

    iget-object v1, p0, Lo/getPaymentItem;->arg$2:Lo/removeBackgroundStateChangeListener;

    iget-object v2, p0, Lo/getPaymentItem;->arg$3:Ljava/lang/Object;

    invoke-static {v0, v1, v2, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;->lambda$runStreamingResponseRpc$1(Lo/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder;Lo/removeBackgroundStateChangeListener;Ljava/lang/Object;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
