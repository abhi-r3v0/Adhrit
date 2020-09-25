.class Lo/getExecution$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getExecution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final maxElements:I

.field private final queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 178
    invoke-static {}, Lo/AutoValue_CrashlyticsReport_Session_Event_Application$Builder;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lo/getExecution$extraCallback;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput p1, p0, Lo/getExecution$extraCallback;->maxElements:I

    .line 184
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lo/getExecution$extraCallback;->COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lo/getExecution$extraCallback;->queue:Ljava/util/PriorityQueue;

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 0

    .line 178
    invoke-virtual {p1, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method


# virtual methods
.method addElement(Ljava/lang/Long;)V
    .locals 5

    .line 188
    iget-object v0, p0, Lo/getExecution$extraCallback;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget v1, p0, Lo/getExecution$extraCallback;->maxElements:I

    if-ge v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lo/getExecution$extraCallback;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lo/getExecution$extraCallback;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 192
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gez v0, :cond_1

    .line 193
    iget-object v0, p0, Lo/getExecution$extraCallback;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lo/getExecution$extraCallback;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method getMaxValue()J
    .locals 2

    .line 200
    iget-object v0, p0, Lo/getExecution$extraCallback;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
