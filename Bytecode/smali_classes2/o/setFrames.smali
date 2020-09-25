.class final synthetic Lo/setFrames;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/from;


# instance fields
.field private final arg$1:Lo/setBaseAddress;

.field private final arg$2:Ljava/util/List;


# direct methods
.method private constructor <init>(Lo/setBaseAddress;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setFrames;->arg$1:Lo/setBaseAddress;

    iput-object p2, p0, Lo/setFrames;->arg$2:Ljava/util/List;

    return-void
.end method

.method public static lambdaFactory$(Lo/setBaseAddress;Ljava/util/List;)Lo/from;
    .locals 1

    new-instance v0, Lo/setFrames;

    invoke-direct {v0, p0, p1}, Lo/setFrames;-><init>(Lo/setBaseAddress;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lo/setFrames;->arg$1:Lo/setBaseAddress;

    iget-object v1, p0, Lo/setFrames;->arg$2:Ljava/util/List;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, p1}, Lo/setBaseAddress;->lambda$getAllMutationBatchesAffectingDocumentKey$7(Lo/setBaseAddress;Ljava/util/List;Landroid/database/Cursor;)V

    return-void
.end method
