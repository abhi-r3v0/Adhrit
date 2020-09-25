.class final Lo/onConversionDataSuccess;
.super Lo/afInfoLog;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/afInfoLog<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private onRelationshipValidationResult:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lo/setPageTransformer<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0, v0}, Lo/afInfoLog;-><init>(IIIZ)V

    .line 22
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lo/onConversionDataSuccess;->onRelationshipValidationResult:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lo/afInfoLog;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setPageTransformer;

    .line 1053
    iget-object v1, v0, Lo/setPageTransformer;->onPostMessage:Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lo/setPageTransformer;->onPostMessage:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1057
    :goto_0
    iget-object v3, v0, Lo/setPageTransformer;->onPostMessage:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_1

    .line 1058
    iget-object v3, v0, Lo/setPageTransformer;->onPostMessage:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->clear()V

    .line 1059
    iput-object v2, v0, Lo/setPageTransformer;->onPostMessage:Ljava/lang/ref/SoftReference;

    .line 1061
    :cond_1
    iget-object v3, v0, Lo/setPageTransformer;->onMessageChannelReady:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_2

    .line 1062
    iget-object v3, v0, Lo/setPageTransformer;->onMessageChannelReady:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->clear()V

    .line 1063
    iput-object v2, v0, Lo/setPageTransformer;->onMessageChannelReady:Ljava/lang/ref/SoftReference;

    .line 1065
    :cond_2
    iget-object v3, v0, Lo/setPageTransformer;->extraCallback:Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_3

    .line 1066
    iget-object v3, v0, Lo/setPageTransformer;->extraCallback:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->clear()V

    .line 1067
    iput-object v2, v0, Lo/setPageTransformer;->extraCallback:Ljava/lang/ref/SoftReference;

    .line 30
    :cond_3
    iget-object v2, p0, Lo/onConversionDataSuccess;->onRelationshipValidationResult:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method final onPostMessage(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lo/onConversionDataSuccess;->onRelationshipValidationResult:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setPageTransformer;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lo/setPageTransformer;

    invoke-direct {v0}, Lo/setPageTransformer;-><init>()V

    .line 2046
    :cond_0
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lo/setPageTransformer;->onPostMessage:Ljava/lang/ref/SoftReference;

    .line 2047
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lo/setPageTransformer;->onMessageChannelReady:Ljava/lang/ref/SoftReference;

    .line 2048
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lo/setPageTransformer;->extraCallback:Ljava/lang/ref/SoftReference;

    .line 41
    iget-object p1, p0, Lo/afInfoLog;->onPostMessage:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
