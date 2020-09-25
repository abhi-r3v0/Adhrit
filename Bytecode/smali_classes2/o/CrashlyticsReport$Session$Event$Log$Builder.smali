.class final synthetic Lo/CrashlyticsReport$Session$Event$Log$Builder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

.field private final arg$2:Lo/CrashlyticsReport$Type;


# direct methods
.method private constructor <init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;Lo/CrashlyticsReport$Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CrashlyticsReport$Session$Event$Log$Builder;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    iput-object p2, p0, Lo/CrashlyticsReport$Session$Event$Log$Builder;->arg$2:Lo/CrashlyticsReport$Type;

    return-void
.end method

.method public static lambdaFactory$(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;Lo/CrashlyticsReport$Type;)Lo/from;
    .locals 1

    new-instance v0, Lo/CrashlyticsReport$Session$Event$Log$Builder;

    invoke-direct {v0, p0, p1}, Lo/CrashlyticsReport$Session$Event$Log$Builder;-><init>(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;Lo/CrashlyticsReport$Type;)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo/CrashlyticsReport$Session$Event$Log$Builder;->arg$1:Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;

    iget-object v1, p0, Lo/CrashlyticsReport$Session$Event$Log$Builder;->arg$2:Lo/CrashlyticsReport$Type;

    check-cast p1, Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;

    invoke-static {v0, v1, p1}, Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;->lambda$new$1(Lo/CrashlyticsReport$Session$Event$Application$Execution$Thread;Lo/CrashlyticsReport$Type;Lo/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$onNavigationEvent;)V

    return-void
.end method
