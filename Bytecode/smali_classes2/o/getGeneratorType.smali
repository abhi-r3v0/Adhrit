.class final synthetic Lo/getGeneratorType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/retainAll;


# instance fields
.field private final arg$1:Lo/getEndedAt;

.field private final arg$2:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final arg$3:Lo/removeBackgroundStateChangeListener;

.field private final arg$4:Lo/CrashlyticsReport$Type;


# direct methods
.method private constructor <init>(Lo/getEndedAt;Ljava/util/concurrent/atomic/AtomicBoolean;Lo/removeBackgroundStateChangeListener;Lo/CrashlyticsReport$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getGeneratorType;->arg$1:Lo/getEndedAt;

    iput-object p2, p0, Lo/getGeneratorType;->arg$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lo/getGeneratorType;->arg$3:Lo/removeBackgroundStateChangeListener;

    iput-object p4, p0, Lo/getGeneratorType;->arg$4:Lo/CrashlyticsReport$Type;

    return-void
.end method

.method public static lambdaFactory$(Lo/getEndedAt;Ljava/util/concurrent/atomic/AtomicBoolean;Lo/removeBackgroundStateChangeListener;Lo/CrashlyticsReport$Type;)Lo/retainAll;
    .locals 1

    new-instance v0, Lo/getGeneratorType;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/getGeneratorType;-><init>(Lo/getEndedAt;Ljava/util/concurrent/atomic/AtomicBoolean;Lo/removeBackgroundStateChangeListener;Lo/CrashlyticsReport$Type;)V

    return-object v0
.end method


# virtual methods
.method public final onValue(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lo/getGeneratorType;->arg$1:Lo/getEndedAt;

    iget-object v1, p0, Lo/getGeneratorType;->arg$2:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lo/getGeneratorType;->arg$3:Lo/removeBackgroundStateChangeListener;

    iget-object v3, p0, Lo/getGeneratorType;->arg$4:Lo/CrashlyticsReport$Type;

    check-cast p1, Lo/AutoValue_CrashlyticsReport_FilesPayload$1;

    invoke-static {v0, v1, v2, v3, p1}, Lo/getEndedAt;->lambda$new$2(Lo/getEndedAt;Ljava/util/concurrent/atomic/AtomicBoolean;Lo/removeBackgroundStateChangeListener;Lo/CrashlyticsReport$Type;Lo/AutoValue_CrashlyticsReport_FilesPayload$1;)V

    return-void
.end method
