.class final Lo/access$1308$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/access$1308;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/access$1308;

.field private asBinder:Lo/nextRequestNumber;

.field extraCallback:I

.field onMessageChannelReady:Z

.field final onNavigationEvent:Lo/updatePriority;

.field onPostMessage:I

.field private onRelationshipValidationResult:I


# direct methods
.method constructor <init>(Lo/access$1308;II)V
    .locals 0

    .line 227
    iput-object p1, p0, Lo/access$1308$extraCallback;->ICustomTabsCallback:Lo/access$1308;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 225
    iput-boolean p1, p0, Lo/access$1308$extraCallback;->onMessageChannelReady:Z

    .line 228
    iput p2, p0, Lo/access$1308$extraCallback;->onRelationshipValidationResult:I

    .line 229
    iput p3, p0, Lo/access$1308$extraCallback;->extraCallback:I

    .line 230
    new-instance p1, Lo/updatePriority;

    invoke-direct {p1}, Lo/updatePriority;-><init>()V

    iput-object p1, p0, Lo/access$1308$extraCallback;->onNavigationEvent:Lo/updatePriority;

    return-void
.end method

.method constructor <init>(Lo/access$1308;Lo/nextRequestNumber;I)V
    .locals 1

    .line 1124
    iget v0, p2, Lo/nextRequestNumber;->onMessageChannelReady:I

    .line 234
    invoke-direct {p0, p1, v0, p3}, Lo/access$1308$extraCallback;-><init>(Lo/access$1308;II)V

    .line 235
    iput-object p2, p0, Lo/access$1308$extraCallback;->asBinder:Lo/nextRequestNumber;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(ILo/access$1308$onNavigationEvent;)I
    .locals 9

    .line 1275
    iget v0, p0, Lo/access$1308$extraCallback;->extraCallback:I

    iget-object v1, p0, Lo/access$1308$extraCallback;->ICustomTabsCallback:Lo/access$1308;

    .line 2035
    iget-object v1, v1, Lo/access$1308;->extraCallback:Lo/access$1308$extraCallback;

    .line 2239
    iget v1, v1, Lo/access$1308$extraCallback;->extraCallback:I

    .line 1275
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 294
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2286
    :goto_0
    iget-object v3, p0, Lo/access$1308$extraCallback;->onNavigationEvent:Lo/updatePriority;

    .line 3067
    iget-wide v3, v3, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-lez v8, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    if-lez v0, :cond_2

    int-to-long v3, v0

    .line 296
    iget-object v5, p0, Lo/access$1308$extraCallback;->onNavigationEvent:Lo/updatePriority;

    .line 4067
    iget-wide v5, v5, Lo/updatePriority;->ICustomTabsCallback:J

    cmp-long v8, v3, v5

    if-ltz v8, :cond_1

    .line 298
    iget-object v0, p0, Lo/access$1308$extraCallback;->onNavigationEvent:Lo/updatePriority;

    .line 5067
    iget-wide v3, v0, Lo/updatePriority;->ICustomTabsCallback:J

    long-to-int v0, v3

    add-int/2addr v2, v0

    .line 299
    iget-object v0, p0, Lo/access$1308$extraCallback;->onNavigationEvent:Lo/updatePriority;

    .line 6067
    iget-wide v3, v0, Lo/updatePriority;->ICustomTabsCallback:J

    long-to-int v4, v3

    .line 299
    iget-boolean v3, p0, Lo/access$1308$extraCallback;->onMessageChannelReady:Z

    invoke-virtual {p0, v0, v4, v3}, Lo/access$1308$extraCallback;->ICustomTabsCallback(Lo/updatePriority;IZ)V

    goto :goto_2

    :cond_1
    add-int/2addr v2, v0

    .line 302
    iget-object v3, p0, Lo/access$1308$extraCallback;->onNavigationEvent:Lo/updatePriority;

    invoke-virtual {p0, v3, v0, v1}, Lo/access$1308$extraCallback;->ICustomTabsCallback(Lo/updatePriority;IZ)V

    .line 6208
    :goto_2
    iget v0, p2, Lo/access$1308$onNavigationEvent;->onPostMessage:I

    add-int/2addr v0, v7

    iput v0, p2, Lo/access$1308$onNavigationEvent;->onPostMessage:I

    sub-int v0, p1, v2

    .line 6275
    iget v3, p0, Lo/access$1308$extraCallback;->extraCallback:I

    iget-object v4, p0, Lo/access$1308$extraCallback;->ICustomTabsCallback:Lo/access$1308;

    .line 7035
    iget-object v4, v4, Lo/access$1308;->extraCallback:Lo/access$1308$extraCallback;

    .line 7239
    iget v4, v4, Lo/access$1308$extraCallback;->extraCallback:I

    .line 6275
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 306
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_2
    return v2
.end method

.method final ICustomTabsCallback(Lo/updatePriority;IZ)V
    .locals 6

    .line 321
    :cond_0
    iget-object v0, p0, Lo/access$1308$extraCallback;->ICustomTabsCallback:Lo/access$1308;

    .line 8035
    iget-object v0, v0, Lo/access$1308;->onPostMessage:Lo/markSent;

    .line 321
    invoke-interface {v0}, Lo/markSent;->extraCallback()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 322
    iget-object v1, p0, Lo/access$1308$extraCallback;->ICustomTabsCallback:Lo/access$1308;

    .line 9035
    iget-object v1, v1, Lo/access$1308;->extraCallback:Lo/access$1308$extraCallback;

    neg-int v2, v0

    .line 322
    invoke-virtual {v1, v2}, Lo/access$1308$extraCallback;->onPostMessage(I)I

    .line 323
    invoke-virtual {p0, v2}, Lo/access$1308$extraCallback;->onPostMessage(I)I

    .line 9067
    :try_start_0
    iget-wide v1, p1, Lo/updatePriority;->ICustomTabsCallback:J

    int-to-long v3, v0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 327
    :goto_0
    iget-object v2, p0, Lo/access$1308$extraCallback;->ICustomTabsCallback:Lo/access$1308;

    .line 10035
    iget-object v2, v2, Lo/access$1308;->onPostMessage:Lo/markSent;

    .line 327
    iget v3, p0, Lo/access$1308$extraCallback;->onRelationshipValidationResult:I

    invoke-interface {v2, v1, v3, p1, v0}, Lo/markSent;->onNavigationEvent(ZILo/updatePriority;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    iget-object v1, p0, Lo/access$1308$extraCallback;->asBinder:Lo/nextRequestNumber;

    .line 10108
    iget-object v1, v1, Lo/nextRequestNumber;->ICustomTabsCallback:Lo/nextRequestNumber$onNavigationEvent;

    .line 331
    invoke-virtual {v1, v0}, Lo/getLeft$onPostMessage;->extraCallback(I)V

    sub-int/2addr p2, v0

    if-gtz p2, :cond_0

    return-void

    :catch_0
    move-exception p1

    .line 329
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method final onPostMessage(I)I
    .locals 2

    if-lez p1, :cond_1

    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    .line 263
    iget v1, p0, Lo/access$1308$extraCallback;->extraCallback:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Window size overflow for stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/access$1308$extraCallback;->onRelationshipValidationResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 266
    :cond_1
    :goto_0
    iget v0, p0, Lo/access$1308$extraCallback;->extraCallback:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/access$1308$extraCallback;->extraCallback:I

    return v0
.end method
