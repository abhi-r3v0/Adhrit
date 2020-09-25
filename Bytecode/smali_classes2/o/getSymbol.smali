.class final synthetic Lo/getSymbol;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Lo/setExecution$onPostMessage;

.field private final arg$2:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method private constructor <init>(Lo/setExecution$onPostMessage;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getSymbol;->arg$1:Lo/setExecution$onPostMessage;

    iput-object p2, p0, Lo/getSymbol;->arg$2:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method

.method public static lambdaFactory$(Lo/setExecution$onPostMessage;Landroid/database/sqlite/SQLiteStatement;)Lo/from;
    .locals 1

    new-instance v0, Lo/getSymbol;

    invoke-direct {v0, p0, p1}, Lo/getSymbol;-><init>(Lo/setExecution$onPostMessage;Landroid/database/sqlite/SQLiteStatement;)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo/getSymbol;->arg$1:Lo/setExecution$onPostMessage;

    iget-object v1, p0, Lo/getSymbol;->arg$2:Landroid/database/sqlite/SQLiteStatement;

    check-cast p1, Lo/setJailbroken;

    invoke-static {v0, v1, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread$1;->lambda$createV8CollectionParentsIndex$10(Lo/setExecution$onPostMessage;Landroid/database/sqlite/SQLiteStatement;Lo/setJailbroken;)V

    return-void
.end method
