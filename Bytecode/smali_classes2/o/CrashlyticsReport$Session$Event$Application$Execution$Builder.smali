.class final synthetic Lo/CrashlyticsReport$Session$Event$Application$Execution$Builder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addLifecycleEventListener;


# static fields
.field private static final instance:Lo/CrashlyticsReport$Session$Event$Application$Execution$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Builder;

    invoke-direct {v0}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Builder;-><init>()V

    sput-object v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Builder;->instance:Lo/CrashlyticsReport$Session$Event$Application$Execution$Builder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lo/addLifecycleEventListener;
    .locals 1

    sget-object v0, Lo/CrashlyticsReport$Session$Event$Application$Execution$Builder;->instance:Lo/CrashlyticsReport$Session$Event$Application$Execution$Builder;

    return-object v0
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lo/resetPreviouslyActiveTrackedQueries;

    invoke-virtual {p1}, Lo/resetPreviouslyActiveTrackedQueries;->halfClose()V

    return-void
.end method
