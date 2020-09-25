.class final Lo/NoteDetailsJsonAdapter;
.super Ljava/lang/Object;


# static fields
.field private static final extraCallback:Lo/NoteDetails;

.field private static final onPostMessage:Lo/NoteDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lo/NoteDetailsJsonAdapter;->ICustomTabsCallback()Lo/NoteDetails;

    move-result-object v0

    sput-object v0, Lo/NoteDetailsJsonAdapter;->extraCallback:Lo/NoteDetails;

    new-instance v0, Lo/LoanSummary_LoanRepaymentDataJsonAdapter;

    invoke-direct {v0}, Lo/LoanSummary_LoanRepaymentDataJsonAdapter;-><init>()V

    sput-object v0, Lo/NoteDetailsJsonAdapter;->onPostMessage:Lo/NoteDetails;

    return-void
.end method

.method private static ICustomTabsCallback()Lo/NoteDetails;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/NoteDetails;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static extraCallback()Lo/NoteDetails;
    .locals 1

    sget-object v0, Lo/NoteDetailsJsonAdapter;->extraCallback:Lo/NoteDetails;

    return-object v0
.end method

.method static onNavigationEvent()Lo/NoteDetails;
    .locals 1

    sget-object v0, Lo/NoteDetailsJsonAdapter;->onPostMessage:Lo/NoteDetails;

    return-object v0
.end method
