.class final synthetic Lo/AutoValue_CrashlyticsReport_Session_Event$Builder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Lo/getExecution$extraCallback;


# direct methods
.method private constructor <init>(Lo/getExecution$extraCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event$Builder;->arg$1:Lo/getExecution$extraCallback;

    return-void
.end method

.method public static lambdaFactory$(Lo/getExecution$extraCallback;)Lo/from;
    .locals 1

    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event$Builder;

    invoke-direct {v0, p0}, Lo/AutoValue_CrashlyticsReport_Session_Event$Builder;-><init>(Lo/getExecution$extraCallback;)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event$Builder;->arg$1:Lo/getExecution$extraCallback;

    check-cast p1, Lo/setBatteryVelocity;

    invoke-static {v0, p1}, Lo/getExecution;->lambda$getNthSequenceNumber$0(Lo/getExecution$extraCallback;Lo/setBatteryVelocity;)V

    return-void
.end method
