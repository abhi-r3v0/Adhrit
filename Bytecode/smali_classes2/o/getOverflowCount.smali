.class final synthetic Lo/getOverflowCount;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Lo/setBaseAddress;

.field private final arg$2:Ljava/util/List;

.field private final arg$3:I


# direct methods
.method private constructor <init>(Lo/setBaseAddress;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getOverflowCount;->arg$1:Lo/setBaseAddress;

    iput-object p2, p0, Lo/getOverflowCount;->arg$2:Ljava/util/List;

    iput p3, p0, Lo/getOverflowCount;->arg$3:I

    return-void
.end method

.method public static lambdaFactory$(Lo/setBaseAddress;Ljava/util/List;I)Lo/from;
    .locals 1

    new-instance v0, Lo/getOverflowCount;

    invoke-direct {v0, p0, p1, p2}, Lo/getOverflowCount;-><init>(Lo/setBaseAddress;Ljava/util/List;I)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lo/getOverflowCount;->arg$1:Lo/setBaseAddress;

    iget-object v1, p0, Lo/getOverflowCount;->arg$2:Ljava/util/List;

    iget v2, p0, Lo/getOverflowCount;->arg$3:I

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Lo/setBaseAddress;->lambda$getAllMutationBatchesAffectingQuery$10(Lo/setBaseAddress;Ljava/util/List;ILandroid/database/Cursor;)V

    return-void
.end method
