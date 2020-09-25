.class final synthetic Lo/setSignal;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setSignal;->arg$1:Ljava/util/ArrayList;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/ArrayList;)Lo/from;
    .locals 1

    new-instance v0, Lo/setSignal;

    invoke-direct {v0, p0}, Lo/setSignal;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lo/setSignal;->arg$1:Ljava/util/ArrayList;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage;->lambda$getCollectionParents$0(Ljava/util/ArrayList;Landroid/database/Cursor;)V

    return-void
.end method
