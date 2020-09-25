.class Lorg/apache/commons/collections4/list/TreeList$AVLNode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/TreeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AVLNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private height:I

.field private left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field private leftIsPrevious:Z

.field private relativePosition:I

.field private right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field private rightIsNext:Z

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;)V"
        }
    .end annotation

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 332
    iput-object p2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    .line 334
    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    .line 335
    iput-object p3, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 336
    iput-object p4, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$1;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 347
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    add-int/lit8 v3, p1, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(Ljava/util/Iterator;IIILorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Collection;Lorg/apache/commons/collections4/list/TreeList$1;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Iterator;IIILorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;III",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;)V"
        }
    .end annotation

    move-object v7, p0

    move v2, p2

    move v8, p3

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-int v0, v8, v2

    .line 373
    div-int/lit8 v0, v0, 0x2

    add-int v9, v2, v0

    const/4 v10, 0x1

    if-ge v2, v9, :cond_0

    .line 375
    new-instance v11, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    add-int/lit8 v3, v9, -0x1

    move-object v0, v11

    move-object v1, p1

    move v2, p2

    move v4, v9

    move-object/from16 v5, p5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(Ljava/util/Iterator;IIILorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    iput-object v11, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    goto :goto_0

    .line 377
    :cond_0
    iput-boolean v10, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    move-object/from16 v0, p5

    .line 378
    iput-object v0, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 380
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    sub-int v0, v9, p4

    .line 381
    iput v0, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-ge v9, v8, :cond_1

    .line 383
    new-instance v10, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    add-int/lit8 v2, v9, 0x1

    move-object v0, v10

    move-object v1, p1

    move v3, p3

    move v4, v9

    move-object v5, p0

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(Ljava/util/Iterator;IIILorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    iput-object v10, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    goto :goto_1

    .line 385
    :cond_1
    iput-boolean v10, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    move-object/from16 v0, p6

    .line 386
    iput-object v0, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 388
    :goto_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I
    .locals 0

    .line 305
    iget p0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    return p0
.end method

.method static synthetic access$300(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 0

    .line 305
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->addAll(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)Ljava/lang/Object;
    .locals 0

    .line 305
    iget-object p0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    return-object p0
.end method

.method private addAll(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;I)",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 811
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    .line 812
    invoke-direct {p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    .line 820
    iget v2, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    iget v3, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-le v2, v3, :cond_5

    .line 825
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeMax()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v2

    .line 831
    new-instance v3, Lorg/apache/commons/collections4/ArrayStack;

    invoke-direct {v3}, Lorg/apache/commons/collections4/ArrayStack;-><init>()V

    .line 833
    iget v6, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v6, p2

    move-object v7, p1

    move v4, v6

    const/4 v6, 0x0

    :goto_0
    if-eqz v7, :cond_1

    .line 835
    iget v8, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    invoke-direct {p0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getHeight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v9

    if-le v8, v9, :cond_1

    .line 837
    invoke-virtual {v3, v7}, Lorg/apache/commons/collections4/ArrayStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    iget-object v7, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-eqz v7, :cond_0

    .line 840
    iget v6, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v6, v4

    move v10, v6

    move v6, v4

    move v4, v10

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_0

    .line 847
    :cond_1
    invoke-direct {v0, v2, v5}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 848
    invoke-direct {v0, v7, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    if-eqz v2, :cond_2

    .line 850
    invoke-direct {v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {v1, v5, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 851
    iget v1, v2, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/lit8 v8, p2, -0x1

    sub-int/2addr v1, v8

    iput v1, v2, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    :cond_2
    if-eqz v7, :cond_3

    .line 854
    invoke-direct {v7}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {v1, v5, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    sub-int/2addr v4, p2

    add-int/lit8 v4, v4, 0x1

    .line 855
    iput v4, v7, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    :cond_3
    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v6

    .line 857
    iput v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 858
    iget v1, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v1, p2

    iput v1, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 862
    :goto_1
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 863
    invoke-virtual {v3}, Lorg/apache/commons/collections4/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 864
    invoke-direct {p1, v0, v5}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 865
    invoke-direct {p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    goto :goto_1

    :cond_4
    return-object v0

    .line 875
    :cond_5
    invoke-direct {p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeMin()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    .line 877
    new-instance v2, Lorg/apache/commons/collections4/ArrayStack;

    invoke-direct {v2}, Lorg/apache/commons/collections4/ArrayStack;-><init>()V

    .line 879
    iget v3, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    move-object v6, p0

    move v4, v3

    const/4 v3, 0x0

    :goto_2
    if-eqz v6, :cond_7

    .line 881
    iget v7, v6, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getHeight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v8

    if-le v7, v8, :cond_7

    .line 883
    invoke-virtual {v2, v6}, Lorg/apache/commons/collections4/ArrayStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    iget-object v6, v6, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-eqz v6, :cond_6

    .line 886
    iget v3, v6, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v3, v4

    move v10, v4

    move v4, v3

    move v3, v10

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_2

    .line 890
    :cond_7
    invoke-direct {v1, p1, v5}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 891
    invoke-direct {v1, v6, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    if-eqz p1, :cond_8

    .line 893
    invoke-direct {p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {v0, v5, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 894
    iget v0, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    :cond_8
    if-eqz v6, :cond_9

    .line 897
    invoke-direct {v6}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    invoke-direct {p1, v5, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    sub-int/2addr v4, p2

    .line 898
    iput v4, v6, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    :cond_9
    sub-int/2addr p2, v3

    .line 900
    iput p2, v1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 903
    :goto_3
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 904
    invoke-virtual {v2}, Lorg/apache/commons/collections4/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 905
    invoke-direct {p1, v1, v5}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 906
    invoke-direct {p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    goto :goto_3

    :cond_a
    return-object v1
.end method

.method private balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 676
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 687
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    if-gez v0, :cond_0

    .line 688
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rotateRight()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 690
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rotateLeft()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 692
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "tree inconsistent!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p0

    .line 682
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    if-lez v0, :cond_4

    .line 683
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rotateLeft()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 685
    :cond_4
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rotateRight()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0
.end method

.method private getHeight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 731
    :cond_0
    iget p1, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    return p1
.end method

.method private getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 536
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-object v0
.end method

.method private getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 703
    :cond_0
    iget p1, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    return p1
.end method

.method private getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 543
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-object v0
.end method

.method private heightRightMinusLeft()I
    .locals 2

    .line 738
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getHeight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v0

    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getHeight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private insertOnLeft(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 503
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 504
    new-instance p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    const/4 v0, -0x1

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {p1, v0, p2, p0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    goto :goto_0

    .line 506
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->insert(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 509
    :goto_0
    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-ltz p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 510
    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 512
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    .line 513
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    return-object p1
.end method

.method private insertOnRight(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 518
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 519
    new-instance p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {p1, v1, p2, v0, p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;-><init>(ILjava/lang/Object;Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->insert(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 523
    :goto_0
    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-gez p1, :cond_1

    sub-int/2addr p1, v1

    .line 524
    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 526
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    .line 527
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    return-object p1
.end method

.method private max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    move-object v0, p0

    .line 552
    :goto_0
    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    goto :goto_0
.end method

.method private min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    move-object v0, p0

    .line 561
    :goto_0
    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    goto :goto_0
.end method

.method private recalcHeight()V
    .locals 3

    .line 722
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iget v0, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    iget v1, v1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->height:I

    return-void
.end method

.method private removeMax()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 592
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 593
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeSelf()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 595
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeMax()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 596
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-gez v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 597
    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 599
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    .line 600
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0
.end method

.method private removeMin()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 604
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 605
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeSelf()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 607
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeMin()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 608
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 609
    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 611
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    .line 612
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0
.end method

.method private removeSelf()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 621
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 624
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 625
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-lez v0, :cond_2

    .line 626
    iget-object v4, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget v5, v4, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    add-int/2addr v0, v2

    add-int/2addr v5, v0

    iput v5, v4, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 628
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 629
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-object v0

    .line 631
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_5

    .line 632
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget v4, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    iget v5, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-gez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    :goto_1
    sub-int/2addr v5, v2

    add-int/2addr v4, v5

    iput v4, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 633
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 634
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-object v0

    .line 637
    :cond_5
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->heightRightMinusLeft()I

    move-result v0

    if-lez v0, :cond_7

    .line 639
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    .line 640
    iget-object v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    .line 641
    iget-boolean v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-eqz v1, :cond_6

    .line 642
    iget-object v0, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 644
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeMin()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 645
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-gez v0, :cond_a

    add-int/2addr v0, v3

    .line 646
    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    goto :goto_2

    .line 650
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    .line 651
    iget-object v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    .line 652
    iget-boolean v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    if-eqz v1, :cond_8

    .line 653
    iget-object v0, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 655
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget-object v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 656
    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeMax()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-nez v0, :cond_9

    .line 660
    iput-object v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 661
    iput-boolean v3, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    .line 663
    :cond_9
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-lez v0, :cond_a

    sub-int/2addr v0, v3

    .line 664
    iput v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 667
    :cond_a
    :goto_2
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    return-object p0
.end method

.method private rotateLeft()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 743
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    .line 745
    iget v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v3

    add-int/2addr v2, v3

    .line 746
    iget v3, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    neg-int v3, v3

    .line 747
    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v4

    invoke-direct {p0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v5

    add-int/2addr v4, v5

    .line 749
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    const/4 v5, 0x0

    .line 750
    invoke-direct {v0, p0, v5}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 752
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I

    .line 753
    invoke-direct {p0, p0, v3}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I

    .line 754
    invoke-direct {p0, v1, v4}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I

    return-object v0
.end method

.method private rotateRight()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 759
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 760
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    invoke-direct {v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    .line 762
    iget v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v3

    add-int/2addr v2, v3

    .line 763
    iget v3, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    neg-int v3, v3

    .line 764
    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v4

    invoke-direct {p0, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v5

    add-int/2addr v4, v5

    .line 766
    invoke-direct {p0, v1, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    const/4 v5, 0x0

    .line 767
    invoke-direct {v0, p0, v5}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 769
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I

    .line 770
    invoke-direct {p0, p0, v3}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I

    .line 771
    invoke-direct {p0, v1, v4}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I

    return-object v0
.end method

.method private setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 782
    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-eqz v0, :cond_1

    move-object p1, p2

    .line 783
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 784
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    return-void
.end method

.method private setOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;I)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 713
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getOffset(Lorg/apache/commons/collections4/list/TreeList$AVLNode;)I

    move-result v0

    .line 714
    iput p2, p1, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    return v0
.end method

.method private setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 794
    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    if-eqz v0, :cond_1

    move-object p1, p2

    .line 795
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    .line 796
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    return-void
.end method


# virtual methods
.method get(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 414
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    sub-int/2addr p1, v0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-gez p1, :cond_1

    .line 420
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 424
    :cond_2
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1
.end method

.method getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 3

    .line 431
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget v2, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, v2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v0

    .line 437
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return p2

    .line 440
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 441
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->indexOf(Ljava/lang/Object;I)I

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method insert(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 494
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    sub-int/2addr p1, v0

    if-gtz p1, :cond_0

    .line 497
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->insertOnLeft(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1

    .line 499
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->insertOnRight(ILjava/lang/Object;)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1
.end method

.method next()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 468
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-nez v0, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->min()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 469
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-object v0
.end method

.method previous()Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 480
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->leftIsPrevious:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    if-nez v0, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    invoke-direct {v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->max()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    return-object v0

    .line 481
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    return-object v0
.end method

.method remove(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/collections4/list/TreeList$AVLNode<",
            "TE;>;"
        }
    .end annotation

    .line 571
    iget v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    sub-int/2addr p1, v0

    if-nez p1, :cond_0

    .line 574
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->removeSelf()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1

    :cond_0
    if-lez p1, :cond_1

    .line 577
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->remove(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setRight(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 578
    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-gez p1, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 579
    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    goto :goto_0

    .line 582
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->remove(I)Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->setLeft(Lorg/apache/commons/collections4/list/TreeList$AVLNode;Lorg/apache/commons/collections4/list/TreeList$AVLNode;)V

    .line 583
    iget p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 584
    iput p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    .line 587
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->recalcHeight()V

    .line 588
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->balance()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object p1

    return-object p1
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 406
    iput-object p1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    return-void
.end method

.method toArray([Ljava/lang/Object;I)V
    .locals 2

    .line 453
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    aput-object v0, p1, p2

    .line 454
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getLeftSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->toArray([Ljava/lang/Object;I)V

    .line 457
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->right:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    iget v1, v0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->toArray([Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AVLNode("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->relativePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->left:Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->getRightSubTree()Lorg/apache/commons/collections4/list/TreeList$AVLNode;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", faedelung "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/commons/collections4/list/TreeList$AVLNode;->rightIsNext:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
