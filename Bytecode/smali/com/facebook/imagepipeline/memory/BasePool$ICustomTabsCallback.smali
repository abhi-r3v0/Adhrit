.class final Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/memory/BasePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field onMessageChannelReady:I

.field onNavigationEvent:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(I)V
    .locals 3

    .line 818
    iget v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    const/4 v1, 0x1

    if-lt v0, p1, :cond_0

    iget v2, p0, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onNavigationEvent:I

    if-lez v2, :cond_0

    sub-int/2addr v2, v1

    .line 819
    iput v2, p0, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onNavigationEvent:I

    sub-int/2addr v0, p1

    .line 820
    iput v0, p0, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 825
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    iget p1, p0, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onMessageChannelReady:I

    .line 826
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    iget v1, p0, Lcom/facebook/imagepipeline/memory/BasePool$ICustomTabsCallback;->onNavigationEvent:I

    .line 827
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "com.facebook.imagepipeline.memory.BasePool.Counter"

    const-string v1, "Unexpected decrement of %d. Current numBytes = %d, count = %d"

    .line 822
    invoke-static {p1, v1, v0}, Lo/setTranslateX;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
