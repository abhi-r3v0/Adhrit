.class final synthetic Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/listIterator;


# static fields
.field private static final instance:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal;

    invoke-direct {v0}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal;-><init>()V

    sput-object v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal;->instance:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lo/listIterator;
    .locals 1

    sget-object v0, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal;->instance:Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal;

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal$Builder;->lambda$getPageCount$1(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
