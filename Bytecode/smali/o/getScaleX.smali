.class public Lo/getScaleX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final arg$1:Lo/getArch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/getArch;)V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getScaleX;->arg$1:Lo/getArch;

    return-void
.end method

.method public static lambdaFactory$(Lo/getArch;)Ljava/util/Comparator;
    .locals 1

    .line 4000
    new-instance v0, Lo/getScaleX;

    invoke-direct {v0, p0}, Lo/getScaleX;-><init>(Lo/getArch;)V

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 3000
    iget-object v0, p0, Lo/getScaleX;->arg$1:Lo/getArch;

    check-cast p1, Lo/setContents;

    check-cast p2, Lo/setContents;

    invoke-static {v0, p1, p2}, Lo/getArch;->lambda$applyChanges$0(Lo/getArch;Lo/setContents;Lo/setContents;)I

    move-result p1

    return p1
.end method

.method public onNavigationEvent(Lo/onIdTokenChanged;FFF)V
    .locals 0

    return-void
.end method
