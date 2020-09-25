.class final synthetic Lo/setFile;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/listIterator;


# static fields
.field private static final instance:Lo/setFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/setFile;

    invoke-direct {v0}, Lo/setFile;-><init>()V

    sput-object v0, Lo/setFile;->instance:Lo/setFile;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lo/listIterator;
    .locals 1

    sget-object v0, Lo/setFile;->instance:Lo/setFile;

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->lambda$ensureSequenceNumbers$7(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
