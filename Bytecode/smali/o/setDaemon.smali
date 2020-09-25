.class public Lo/setDaemon;
.super Lo/getOverwrite;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0002\u0008\u0003\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0000\u001a\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0006\u001a\u001b\u0010\u0004\u001a\u0004\u0018\u00010\u0005*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\t\u001a\u0013\u0010\n\u001a\u0004\u0018\u00010\u0008*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u000b\u001a\u001b\u0010\n\u001a\u0004\u0018\u00010\u0008*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\u000c\u001a\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u000f\u001a\u001b\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\u0010\u001a\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0013\u001a\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "numberFormatError",
        "",
        "input",
        "",
        "toByteOrNull",
        "",
        "(Ljava/lang/String;)Ljava/lang/Byte;",
        "radix",
        "",
        "(Ljava/lang/String;I)Ljava/lang/Byte;",
        "toIntOrNull",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "(Ljava/lang/String;I)Ljava/lang/Integer;",
        "toLongOrNull",
        "",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "(Ljava/lang/String;I)Ljava/lang/Long;",
        "toShortOrNull",
        "",
        "(Ljava/lang/String;)Ljava/lang/Short;",
        "(Ljava/lang/String;I)Ljava/lang/Short;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0x10
    }
    xi = 0x1
    xs = "kotlin/text/StringsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/getOverwrite;-><init>()V

    return-void
.end method

.method public static final ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "$this$toIntOrNull"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {p0}, Lo/childWrites;->onPostMessage(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final asInterface(Ljava/lang/String;)Ljava/lang/Long;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "$this$toLongOrNull"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 142
    invoke-static {v1}, Lo/removeAllEventRegistrations;->onMessageChannelReady(I)I

    .line 144
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x0

    .line 151
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x1

    if-ge v5, v6, :cond_4

    if-ne v2, v9, :cond_1

    return-object v3

    :cond_1
    const/16 v6, 0x2d

    if-ne v5, v6, :cond_2

    const-wide/high16 v7, -0x8000000000000000L

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/16 v6, 0x2b

    if-ne v5, v6, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    return-object v3

    :cond_4
    :goto_0
    const/4 v9, 0x0

    :goto_1
    const-wide/16 v5, 0x0

    const-wide v10, -0x38e38e38e38e38eL    # -2.772000429909333E291

    move-wide v12, v10

    :goto_2
    if-ge v4, v2, :cond_9

    .line 177
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 2148
    invoke-static {v14, v1}, Ljava/lang/Character;->digit(II)I

    move-result v14

    if-gez v14, :cond_5

    return-object v3

    :cond_5
    const-wide/16 v15, 0xa

    cmp-long v17, v5, v12

    if-gez v17, :cond_7

    cmp-long v17, v12, v10

    if-nez v17, :cond_6

    .line 182
    div-long v12, v7, v15

    cmp-long v17, v5, v12

    if-gez v17, :cond_7

    :cond_6
    return-object v3

    :cond_7
    mul-long v5, v5, v15

    int-to-long v14, v14

    add-long v16, v7, v14

    cmp-long v18, v5, v16

    if-gez v18, :cond_8

    return-object v3

    :cond_8
    sub-long/2addr v5, v14

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    if-eqz v9, :cond_a

    .line 199
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_a
    neg-long v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static final extraCallback(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    const-string v0, "$this$toLongOrNull"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-static {p0}, Lo/childWrites;->asInterface(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final onPostMessage(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11

    const-string v0, "$this$toIntOrNull"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 67
    invoke-static {v0}, Lo/removeAllEventRegistrations;->onMessageChannelReady(I)I

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    const v6, -0x7fffffff

    const/4 v7, 0x1

    if-ge v4, v5, :cond_4

    if-ne v1, v7, :cond_1

    return-object v2

    :cond_1
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_2

    const/high16 v6, -0x80000000

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_0
    const v5, -0x38e38e3

    const v8, -0x38e38e3

    :goto_1
    if-ge v7, v1, :cond_9

    .line 102
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1148
    invoke-static {v9, v0}, Ljava/lang/Character;->digit(II)I

    move-result v9

    if-gez v9, :cond_5

    return-object v2

    :cond_5
    if-ge v3, v8, :cond_7

    if-ne v8, v5, :cond_6

    .line 107
    div-int/lit8 v8, v6, 0xa

    if-ge v3, v8, :cond_7

    :cond_6
    return-object v2

    :cond_7
    mul-int/lit8 v3, v3, 0xa

    add-int v10, v6, v9

    if-ge v3, v10, :cond_8

    return-object v2

    :cond_8
    sub-int/2addr v3, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    if-eqz v4, :cond_a

    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_a
    neg-int p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
