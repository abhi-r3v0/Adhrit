.class final synthetic Lo/setReason;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/listIterator;


# instance fields
.field private final arg$1:Lo/setBaseAddress;

.field private final arg$2:I


# direct methods
.method private constructor <init>(Lo/setBaseAddress;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setReason;->arg$1:Lo/setBaseAddress;

    iput p2, p0, Lo/setReason;->arg$2:I

    return-void
.end method

.method public static lambdaFactory$(Lo/setBaseAddress;I)Lo/listIterator;
    .locals 1

    new-instance v0, Lo/setReason;

    invoke-direct {v0, p0, p1}, Lo/setReason;-><init>(Lo/setBaseAddress;I)V

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lo/setReason;->arg$1:Lo/setBaseAddress;

    iget v1, p0, Lo/setReason;->arg$2:I

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, p1}, Lo/setBaseAddress;->lambda$lookupMutationBatch$3(Lo/setBaseAddress;ILandroid/database/Cursor;)Lo/CrashlyticsReport$Builder;

    move-result-object p1

    return-object p1
.end method
