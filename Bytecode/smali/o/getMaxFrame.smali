.class public final Lo/getMaxFrame;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getMaxFrame$extraCallback;
    }
.end annotation


# instance fields
.field private final arg$1:Lo/setCores;

.field private final arg$2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/setCores;I)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getMaxFrame;->arg$1:Lo/setCores;

    iput p2, p0, Lo/getMaxFrame;->arg$2:I

    return-void
.end method

.method public static lambdaFactory$(Lo/setCores;I)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lo/getMaxFrame;

    invoke-direct {v0, p0, p1}, Lo/getMaxFrame;-><init>(Lo/setCores;I)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/getMaxFrame;->arg$1:Lo/setCores;

    iget v1, p0, Lo/getMaxFrame;->arg$2:I

    invoke-static {v0, v1}, Lo/setCores;->lambda$releaseTarget$8(Lo/setCores;I)V

    return-void
.end method
