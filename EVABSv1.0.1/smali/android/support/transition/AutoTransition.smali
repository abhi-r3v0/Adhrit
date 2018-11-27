.class public Landroid/support/transition/AutoTransition;
.super Landroid/support/transition/TransitionSet;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/transition/TransitionSet;-><init>()V

    .line 38
    invoke-direct {p0}, Landroid/support/transition/AutoTransition;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/support/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Landroid/support/transition/AutoTransition;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Landroid/support/transition/AutoTransition;->setOrdering(I)Landroid/support/transition/TransitionSet;

    .line 48
    new-instance v1, Landroid/support/transition/Fade;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/support/transition/Fade;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/support/transition/AutoTransition;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroid/support/transition/ChangeBounds;

    invoke-direct {v2}, Landroid/support/transition/ChangeBounds;-><init>()V

    .line 49
    invoke-virtual {v1, v2}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroid/support/transition/Fade;

    invoke-direct {v2, v0}, Landroid/support/transition/Fade;-><init>(I)V

    .line 50
    invoke-virtual {v1, v2}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    return-void
.end method
