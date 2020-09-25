.class Lin/juspay/mystique/AccordionLayout$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/mystique/AccordionLayout;->setExpand(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/juspay/mystique/AccordionLayout;


# direct methods
.method constructor <init>(Lin/juspay/mystique/AccordionLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lin/juspay/mystique/AccordionLayout$a;->a:Lin/juspay/mystique/AccordionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lin/juspay/mystique/AccordionLayout$a;->a:Lin/juspay/mystique/AccordionLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lin/juspay/mystique/AccordionLayout;->access$002(Lin/juspay/mystique/AccordionLayout;F)F

    .line 2
    iget-object p1, p0, Lin/juspay/mystique/AccordionLayout$a;->a:Lin/juspay/mystique/AccordionLayout;

    invoke-static {p1}, Lin/juspay/mystique/AccordionLayout;->access$100(Lin/juspay/mystique/AccordionLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lin/juspay/mystique/AccordionLayout$a;->a:Lin/juspay/mystique/AccordionLayout;

    invoke-static {p1}, Lin/juspay/mystique/AccordionLayout;->access$200(Lin/juspay/mystique/AccordionLayout;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lin/juspay/mystique/AccordionLayout$a;->a:Lin/juspay/mystique/AccordionLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
