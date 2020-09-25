.class final synthetic Lo/AutoValue_CrashlyticsReport_Session_Event_Application;
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

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application;->arg$1:Lo/getExecution$extraCallback;

    return-void
.end method

.method public static lambdaFactory$(Lo/getExecution$extraCallback;)Lo/from;
    .locals 1

    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application;

    invoke-direct {v0, p0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application;-><init>(Lo/getExecution$extraCallback;)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application;->arg$1:Lo/getExecution$extraCallback;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Lo/getExecution$extraCallback;->addElement(Ljava/lang/Long;)V

    return-void
.end method
