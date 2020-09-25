.class public Lorg/apache/commons/collections4/QueueUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EMPTY_QUEUE:Ljava/util/Queue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/collections4/queue/UnmodifiableQueue;->unmodifiableQueue(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections4/QueueUtils;->EMPTY_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 106
    sget-object v0, Lorg/apache/commons/collections4/QueueUtils;->EMPTY_QUEUE:Ljava/util/Queue;

    return-object v0
.end method

.method public static predicatedQueue(Ljava/util/Queue;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 74
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/queue/PredicatedQueue;->predicatedQueue(Ljava/util/Queue;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/queue/PredicatedQueue;

    move-result-object p0

    return-object p0
.end method

.method public static transformingQueue(Ljava/util/Queue;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 95
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/queue/TransformedQueue;->transformingQueue(Ljava/util/Queue;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/queue/TransformedQueue;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableQueue(Ljava/util/Queue;)Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "+TE;>;)",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 56
    invoke-static {p0}, Lorg/apache/commons/collections4/queue/UnmodifiableQueue;->unmodifiableQueue(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method
