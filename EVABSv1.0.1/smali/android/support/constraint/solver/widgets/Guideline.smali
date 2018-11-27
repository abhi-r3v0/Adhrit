.class public Landroid/support/constraint/solver/widgets/Guideline;
.super Landroid/support/constraint/solver/widgets/ConstraintWidget;
.source "Guideline.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final RELATIVE_BEGIN:I = 0x1

.field public static final RELATIVE_END:I = 0x2

.field public static final RELATIVE_PERCENT:I = 0x0

.field public static final RELATIVE_UNKNWON:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

.field private mHead:Landroid/support/constraint/solver/widgets/Rectangle;

.field private mHeadSize:I

.field private mIsPositionRelaxed:Z

.field private mMinimumPosition:I

.field private mOrientation:I

.field protected mRelativeBegin:I

.field protected mRelativeEnd:I

.field protected mRelativePercent:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 32
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 34
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    .line 36
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    .line 38
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    .line 39
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mMinimumPosition:I

    .line 41
    new-instance v0, Landroid/support/constraint/solver/widgets/Rectangle;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/Rectangle;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    const/16 v0, 0x8

    .line 42
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    .line 45
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addToSolver(Landroid/support/constraint/solver/LinearSystem;I)V
    .locals 8

    .line 184
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p2

    check-cast p2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-nez p2, :cond_0

    return-void

    .line 188
    :cond_0
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 189
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 190
    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v2, :cond_1

    .line 191
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->TOP:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v0

    .line 192
    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v1

    .line 194
    :cond_1
    iget p2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p2, v3, :cond_2

    .line 195
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object p2

    .line 196
    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 197
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 199
    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object p2

    .line 197
    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_0

    .line 200
    :cond_2
    iget p2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq p2, v3, :cond_3

    .line 201
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object p2

    .line 202
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v0

    .line 203
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    neg-int v1, v1

    .line 205
    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/constraint/solver/LinearSystem;->createRowEquals(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;IZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object p2

    .line 203
    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    goto :goto_0

    .line 206
    :cond_3
    iget p2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float p2, p2, v2

    if-eqz p2, :cond_4

    .line 207
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v3

    .line 208
    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    .line 209
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v5

    .line 210
    iget v6, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    iget-boolean v7, p0, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    move-object v2, p1

    .line 211
    invoke-static/range {v2 .. v7}, Landroid/support/constraint/solver/LinearSystem;->createRowDimensionPercent(Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;Landroid/support/constraint/solver/SolverVariable;FZ)Landroid/support/constraint/solver/ArrayRow;

    move-result-object p2

    .line 210
    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/LinearSystem;->addConstraint(Landroid/support/constraint/solver/ArrayRow;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public cyclePosition()V
    .locals 3

    .line 285
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 287
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativePercentPosition()V

    goto :goto_0

    .line 288
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativeEndPosition()V

    goto :goto_0

    .line 291
    :cond_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v1, :cond_2

    .line 293
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->inferRelativeBeginPosition()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getAnchor()Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 1

    .line 88
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object v0
.end method

.method public getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .locals 1

    .line 118
    sget-object v0, Landroid/support/constraint/solver/widgets/Guideline$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    iget p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez p1, :cond_0

    .line 129
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    .line 121
    :pswitch_1
    iget p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 122
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    return-object p1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAnchors()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHead()Landroid/support/constraint/solver/widgets/Rectangle;
    .locals 6

    .line 63
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawX()I

    move-result v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawY()I

    move-result v2

    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v3, v4

    iget v5, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v5, v4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 65
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawX()I

    move-result v1

    iget v2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v2, v4

    sub-int/2addr v1, v2

    .line 67
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getDrawY()I

    move-result v2

    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v3, v4

    iget v5, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHeadSize:I

    mul-int/2addr v4, v5

    .line 66
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/constraint/solver/widgets/Rectangle;->setBounds(IIII)V

    .line 70
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mHead:Landroid/support/constraint/solver/widgets/Rectangle;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 102
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    return v0
.end method

.method public getRelativeBegin()I
    .locals 1

    .line 175
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    return v0
.end method

.method public getRelativeBehaviour()I
    .locals 2

    .line 50
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 53
    :cond_0
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    .line 56
    :cond_1
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    return v1
.end method

.method public getRelativeEnd()I
    .locals 1

    .line 179
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    return v0
.end method

.method public getRelativePercent()F
    .locals 1

    .line 171
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "Guideline"

    return-object v0
.end method

.method inferRelativeBeginPosition()V
    .locals 2

    .line 269
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getX()I

    move-result v0

    .line 270
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_0

    .line 271
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getY()I

    move-result v0

    .line 273
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    return-void
.end method

.method inferRelativeEndPosition()V
    .locals 2

    .line 277
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 278
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_0

    .line 279
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getY()I

    move-result v1

    sub-int/2addr v0, v1

    .line 281
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    return-void
.end method

.method inferRelativePercentPosition()V
    .locals 2

    .line 261
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 262
    iget v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-nez v1, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 265
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    return-void
.end method

.method public setDrawOrigin(II)V
    .locals 4

    .line 237
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 238
    iget p2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOffsetX:I

    sub-int/2addr p1, p2

    .line 239
    iget p2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    if-eq p2, v2, :cond_0

    .line 240
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_0

    .line 241
    :cond_0
    iget p2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq p2, v2, :cond_1

    .line 242
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_0

    .line 243
    :cond_1
    iget p2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_5

    int-to-float p1, p1

    .line 244
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 245
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    goto :goto_0

    .line 248
    :cond_2
    iget p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOffsetY:I

    sub-int/2addr p2, p1

    .line 249
    iget p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    if-eq p1, v2, :cond_3

    .line 250
    invoke-virtual {p0, p2}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_0

    .line 251
    :cond_3
    iget p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    if-eq p1, v2, :cond_4

    .line 252
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_0

    .line 253
    :cond_4
    iget p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_5

    int-to-float p1, p2

    .line 254
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 255
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setGuideBegin(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .line 156
    iput v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 157
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 158
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    :cond_0
    return-void
.end method

.method public setGuideEnd(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .line 164
    iput v1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    .line 165
    iput v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 166
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    :cond_0
    return-void
.end method

.method public setGuidePercent(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 148
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativePercent:F

    const/4 p1, -0x1

    .line 149
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeBegin:I

    .line 150
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mRelativeEnd:I

    :cond_0
    return-void
.end method

.method public setGuidePercent(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 143
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Guideline;->setGuidePercent(F)V

    return-void
.end method

.method public setMinimumPosition(I)V
    .locals 0

    .line 106
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mMinimumPosition:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 74
    iget v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    if-ne v0, p1, :cond_0

    return-void

    .line 77
    :cond_0
    iput p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    .line 78
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 79
    iget p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 80
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    goto :goto_0

    .line 82
    :cond_1
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iput-object p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 84
    :goto_0
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPositionRelaxed(Z)V
    .locals 1

    .line 110
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 113
    :cond_0
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/Guideline;->mIsPositionRelaxed:Z

    return-void
.end method

.method public updateFromSolver(Landroid/support/constraint/solver/LinearSystem;I)V
    .locals 2

    .line 218
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mAnchor:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    .line 222
    iget p2, p0, Landroid/support/constraint/solver/widgets/Guideline;->mOrientation:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 223
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Guideline;->setX(I)V

    .line 224
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setY(I)V

    .line 225
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Guideline;->setHeight(I)V

    .line 226
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setWidth(I)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setX(I)V

    .line 229
    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Guideline;->setY(I)V

    .line 230
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/Guideline;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/constraint/solver/widgets/Guideline;->setWidth(I)V

    .line 231
    invoke-virtual {p0, v1}, Landroid/support/constraint/solver/widgets/Guideline;->setHeight(I)V

    :goto_0
    return-void
.end method
