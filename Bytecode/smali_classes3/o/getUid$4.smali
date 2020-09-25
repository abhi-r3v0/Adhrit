.class final Lo/getUid$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getUid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private extraCallback:Landroid/animation/FloatEvaluator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    iput-object v0, p0, Lo/getUid$4;->extraCallback:Landroid/animation/FloatEvaluator;

    return-void
.end method


# virtual methods
.method public final synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 612
    check-cast p2, Ljava/lang/Float;

    check-cast p3, Ljava/lang/Float;

    .line 1616
    iget-object v0, p0, Lo/getUid$4;->extraCallback:Landroid/animation/FloatEvaluator;

    invoke-virtual {v0, p1, p2, p3}, Landroid/animation/FloatEvaluator;->evaluate(FLjava/lang/Number;Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const p2, 0x3dcccccd    # 0.1f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    const/4 p1, 0x0

    .line 1617
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
