.class public final Lo/OverwritingInputMerger;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lo/setCores;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/setCores;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/OverwritingInputMerger;->arg$1:Lo/setCores;

    return-void
.end method

.method public static lambdaFactory$(Lo/setCores;)Ljava/lang/Runnable;
    .locals 1

    .line 4000
    new-instance v0, Lo/OverwritingInputMerger;

    invoke-direct {v0, p0}, Lo/OverwritingInputMerger;-><init>(Lo/setCores;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 3000
    iget-object v0, p0, Lo/OverwritingInputMerger;->arg$1:Lo/setCores;

    invoke-static {v0}, Lo/setCores;->lambda$startMutationQueue$0(Lo/setCores;)V

    return-void
.end method
