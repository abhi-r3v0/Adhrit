.class final Lo/populateExceptionData$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/populateExceptionData;->iterator(IZ)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field currentPos:I

.field final synthetic this$0:Lo/populateExceptionData;

.field final synthetic val$pos:I

.field final synthetic val$reverse:Z


# direct methods
.method constructor <init>(Lo/populateExceptionData;IZ)V
    .locals 0

    .line 151
    iput-object p1, p0, Lo/populateExceptionData$2;->this$0:Lo/populateExceptionData;

    iput p2, p0, Lo/populateExceptionData$2;->val$pos:I

    iput-boolean p3, p0, Lo/populateExceptionData$2;->val$reverse:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iget p1, p0, Lo/populateExceptionData$2;->val$pos:I

    iput p1, p0, Lo/populateExceptionData$2;->currentPos:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    .line 156
    iget-boolean v0, p0, Lo/populateExceptionData$2;->val$reverse:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lo/populateExceptionData$2;->currentPos:I

    if-ltz v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget v0, p0, Lo/populateExceptionData$2;->currentPos:I

    iget-object v3, p0, Lo/populateExceptionData$2;->this$0:Lo/populateExceptionData;

    invoke-static {v3}, Lo/populateExceptionData;->access$000(Lo/populateExceptionData;)[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lo/populateExceptionData$2;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lo/populateExceptionData$2;->this$0:Lo/populateExceptionData;

    invoke-static {v0}, Lo/populateExceptionData;->access$000(Lo/populateExceptionData;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lo/populateExceptionData$2;->currentPos:I

    aget-object v0, v0, v1

    .line 162
    iget-object v1, p0, Lo/populateExceptionData$2;->this$0:Lo/populateExceptionData;

    invoke-static {v1}, Lo/populateExceptionData;->access$100(Lo/populateExceptionData;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lo/populateExceptionData$2;->currentPos:I

    aget-object v1, v1, v2

    .line 163
    iget-boolean v3, p0, Lo/populateExceptionData$2;->val$reverse:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :goto_0
    iput v2, p0, Lo/populateExceptionData$2;->currentPos:I

    .line 164
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v2, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final remove()V
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove elements from ImmutableSortedMap"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
