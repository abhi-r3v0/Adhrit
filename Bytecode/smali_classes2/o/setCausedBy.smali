.class final synthetic Lo/setCausedBy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/listIterator;


# instance fields
.field private final arg$1:Lo/setBaseAddress;


# direct methods
.method private constructor <init>(Lo/setBaseAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setCausedBy;->arg$1:Lo/setBaseAddress;

    return-void
.end method

.method public static lambdaFactory$(Lo/setBaseAddress;)Lo/listIterator;
    .locals 1

    new-instance v0, Lo/setCausedBy;

    invoke-direct {v0, p0}, Lo/setCausedBy;-><init>(Lo/setBaseAddress;)V

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo/setCausedBy;->arg$1:Lo/setBaseAddress;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lo/setBaseAddress;->lambda$getNextMutationBatchAfterBatchId$4(Lo/setBaseAddress;Landroid/database/Cursor;)Lo/CrashlyticsReport$Builder;

    move-result-object p1

    return-object p1
.end method
