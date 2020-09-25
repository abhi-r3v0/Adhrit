.class final Lo/access$1308;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/access$1308$extraCallback;,
        Lo/access$1308$onNavigationEvent;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/sendSensitive;

.field final extraCallback:Lo/access$1308$extraCallback;

.field onNavigationEvent:I

.field final onPostMessage:Lo/markSent;


# direct methods
.method constructor <init>(Lo/sendSensitive;Lo/markSent;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    check-cast p1, Lo/sendSensitive;

    iput-object p1, p0, Lo/access$1308;->ICustomTabsCallback:Lo/sendSensitive;

    if-eqz p2, :cond_0

    .line 44
    check-cast p2, Lo/markSent;

    iput-object p2, p0, Lo/access$1308;->onPostMessage:Lo/markSent;

    const p1, 0xffff

    .line 45
    iput p1, p0, Lo/access$1308;->onNavigationEvent:I

    .line 46
    new-instance p2, Lo/access$1308$extraCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, p1}, Lo/access$1308$extraCallback;-><init>(Lo/access$1308;II)V

    iput-object p2, p0, Lo/access$1308;->extraCallback:Lo/access$1308$extraCallback;

    return-void

    .line 2910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "frameWriter"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onPostMessage(Lo/nextRequestNumber;)Lo/access$1308$extraCallback;
    .locals 2

    .line 12441
    iget-object v0, p1, Lo/nextRequestNumber;->extraCallback:Ljava/lang/Object;

    .line 150
    check-cast v0, Lo/access$1308$extraCallback;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lo/access$1308$extraCallback;

    iget v1, p0, Lo/access$1308;->onNavigationEvent:I

    invoke-direct {v0, p0, p1, v1}, Lo/access$1308$extraCallback;-><init>(Lo/access$1308;Lo/nextRequestNumber;I)V

    .line 13437
    iput-object v0, p1, Lo/nextRequestNumber;->extraCallback:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/nextRequestNumber;I)I
    .locals 4

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lo/access$1308;->extraCallback:Lo/access$1308$extraCallback;

    invoke-virtual {p1, p2}, Lo/access$1308$extraCallback;->onPostMessage(I)I

    move-result p1

    .line 90
    invoke-virtual {p0}, Lo/access$1308;->ICustomTabsCallback()V

    goto :goto_1

    .line 93
    :cond_0
    invoke-direct {p0, p1}, Lo/access$1308;->onPostMessage(Lo/nextRequestNumber;)Lo/access$1308$extraCallback;

    move-result-object p1

    .line 94
    invoke-virtual {p1, p2}, Lo/access$1308$extraCallback;->onPostMessage(I)I

    move-result p2

    .line 96
    new-instance v0, Lo/access$1308$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/access$1308$onNavigationEvent;-><init>(B)V

    .line 3275
    iget v2, p1, Lo/access$1308$extraCallback;->extraCallback:I

    iget-object v3, p1, Lo/access$1308$extraCallback;->ICustomTabsCallback:Lo/access$1308;

    .line 4035
    iget-object v3, v3, Lo/access$1308;->extraCallback:Lo/access$1308$extraCallback;

    .line 4239
    iget v3, v3, Lo/access$1308$extraCallback;->extraCallback:I

    .line 3275
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 97
    invoke-virtual {p1, v2, v0}, Lo/access$1308$extraCallback;->ICustomTabsCallback(ILo/access$1308$onNavigationEvent;)I

    .line 5212
    iget p1, v0, Lo/access$1308$onNavigationEvent;->onPostMessage:I

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 6143
    :try_start_0
    iget-object p1, p0, Lo/access$1308;->onPostMessage:Lo/markSent;

    invoke-interface {p1}, Lo/markSent;->onNavigationEvent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6145
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    :goto_0
    move p1, p2

    :goto_1
    return p1
.end method

.method final ICustomTabsCallback()V
    .locals 12

    .line 164
    iget-object v0, p0, Lo/access$1308;->ICustomTabsCallback:Lo/sendSensitive;

    invoke-virtual {v0}, Lo/sendSensitive;->onPostMessage()[Lo/nextRequestNumber;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lo/access$1308;->extraCallback:Lo/access$1308$extraCallback;

    .line 14239
    iget v1, v1, Lo/access$1308$extraCallback;->extraCallback:I

    .line 166
    array-length v2, v0

    :goto_0
    const/4 v3, 0x0

    if-lez v2, :cond_3

    if-lez v1, :cond_3

    int-to-float v4, v1

    int-to-float v5, v2

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 168
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_2

    if-lez v1, :cond_2

    .line 170
    aget-object v7, v0, v6

    .line 171
    invoke-direct {p0, v7}, Lo/access$1308;->onPostMessage(Lo/nextRequestNumber;)Lo/access$1308$extraCallback;

    move-result-object v8

    .line 14279
    iget v9, v8, Lo/access$1308$extraCallback;->extraCallback:I

    iget-object v10, v8, Lo/access$1308$extraCallback;->onNavigationEvent:Lo/updatePriority;

    .line 15067
    iget-wide v10, v10, Lo/updatePriority;->ICustomTabsCallback:J

    long-to-int v11, v10

    .line 14279
    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 14251
    iget v10, v8, Lo/access$1308$extraCallback;->onPostMessage:I

    sub-int/2addr v9, v10

    .line 173
    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-lez v9, :cond_0

    .line 15243
    iget v10, v8, Lo/access$1308$extraCallback;->onPostMessage:I

    add-int/2addr v10, v9

    iput v10, v8, Lo/access$1308$extraCallback;->onPostMessage:I

    sub-int/2addr v1, v9

    .line 15279
    :cond_0
    iget v9, v8, Lo/access$1308$extraCallback;->extraCallback:I

    iget-object v10, v8, Lo/access$1308$extraCallback;->onNavigationEvent:Lo/updatePriority;

    .line 16067
    iget-wide v10, v10, Lo/updatePriority;->ICustomTabsCallback:J

    long-to-int v11, v10

    .line 15279
    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 15251
    iget v8, v8, Lo/access$1308$extraCallback;->onPostMessage:I

    sub-int/2addr v9, v8

    if-lez v9, :cond_1

    add-int/lit8 v8, v5, 0x1

    .line 182
    aput-object v7, v0, v5

    move v5, v8

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_0

    .line 189
    :cond_3
    new-instance v0, Lo/access$1308$onNavigationEvent;

    invoke-direct {v0, v3}, Lo/access$1308$onNavigationEvent;-><init>(B)V

    .line 190
    iget-object v1, p0, Lo/access$1308;->ICustomTabsCallback:Lo/sendSensitive;

    invoke-virtual {v1}, Lo/sendSensitive;->onPostMessage()[Lo/nextRequestNumber;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 191
    invoke-direct {p0, v5}, Lo/access$1308;->onPostMessage(Lo/nextRequestNumber;)Lo/access$1308$extraCallback;

    move-result-object v5

    .line 16247
    iget v6, v5, Lo/access$1308$extraCallback;->onPostMessage:I

    .line 192
    invoke-virtual {v5, v6, v0}, Lo/access$1308$extraCallback;->ICustomTabsCallback(ILo/access$1308$onNavigationEvent;)I

    .line 16255
    iput v3, v5, Lo/access$1308$extraCallback;->onPostMessage:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 17212
    :cond_4
    iget v0, v0, Lo/access$1308$onNavigationEvent;->onPostMessage:I

    if-lez v0, :cond_5

    const/4 v3, 0x1

    :cond_5
    if-eqz v3, :cond_6

    .line 18143
    :try_start_0
    iget-object v0, p0, Lo/access$1308;->onPostMessage:Lo/markSent;

    invoke-interface {v0}, Lo/markSent;->onNavigationEvent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 18145
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    return-void
.end method

.method final extraCallback(ZILo/updatePriority;Z)V
    .locals 7

    if-eqz p3, :cond_5

    .line 111
    iget-object v0, p0, Lo/access$1308;->ICustomTabsCallback:Lo/sendSensitive;

    invoke-virtual {v0, p2}, Lo/sendSensitive;->extraCallback(I)Lo/nextRequestNumber;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-direct {p0, p2}, Lo/access$1308;->onPostMessage(Lo/nextRequestNumber;)Lo/access$1308$extraCallback;

    move-result-object p2

    .line 7275
    iget v0, p2, Lo/access$1308$extraCallback;->extraCallback:I

    iget-object v1, p2, Lo/access$1308$extraCallback;->ICustomTabsCallback:Lo/access$1308;

    .line 8035
    iget-object v1, v1, Lo/access$1308;->extraCallback:Lo/access$1308$extraCallback;

    .line 8239
    iget v1, v1, Lo/access$1308$extraCallback;->extraCallback:I

    .line 7275
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8286
    iget-object v1, p2, Lo/access$1308$extraCallback;->onNavigationEvent:Lo/updatePriority;

    .line 9067
    iget-wide v1, v1, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 10067
    :goto_0
    iget-wide v2, p3, Lo/updatePriority;->ICustomTabsCallback:J

    long-to-int v3, v2

    if-nez v1, :cond_2

    if-lt v0, v3, :cond_2

    .line 126
    invoke-virtual {p2, p3, v3, p1}, Lo/access$1308$extraCallback;->ICustomTabsCallback(Lo/updatePriority;IZ)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    if-lez v0, :cond_3

    .line 130
    invoke-virtual {p2, p3, v0, v5}, Lo/access$1308$extraCallback;->ICustomTabsCallback(Lo/updatePriority;IZ)V

    .line 11067
    :cond_3
    iget-wide v0, p3, Lo/updatePriority;->ICustomTabsCallback:J

    long-to-int v1, v0

    .line 11337
    iget-object v0, p2, Lo/access$1308$extraCallback;->onNavigationEvent:Lo/updatePriority;

    int-to-long v1, v1

    invoke-virtual {v0, p3, v1, v2}, Lo/updatePriority;->onPostMessage(Lo/updatePriority;J)V

    .line 11338
    iget-boolean p3, p2, Lo/access$1308$extraCallback;->onMessageChannelReady:Z

    or-int/2addr p1, p3

    iput-boolean p1, p2, Lo/access$1308$extraCallback;->onMessageChannelReady:Z

    :goto_1
    if-eqz p4, :cond_4

    .line 12143
    :try_start_0
    iget-object p1, p0, Lo/access$1308;->onPostMessage:Lo/markSent;

    invoke-interface {p1}, Lo/markSent;->onNavigationEvent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12145
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    return-void

    .line 6910
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "source"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
