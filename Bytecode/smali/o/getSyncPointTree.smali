.class public Lo/getSyncPointTree;
.super Lo/calcCompleteEventCache;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u000b\u001a!\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0002\u0008\u0004\u001a\u0011\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0002\u00a2\u0006\u0002\u0008\u0007\u001a\u0014\u0010\u0008\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u001aJ\u0010\t\u001a\u00020\u0002*\u0008\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001H\u0082\u0008\u00a2\u0006\u0002\u0008\u000e\u001a\u0014\u0010\u000f\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0002\u001a\u001e\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u001a\n\u0010\u0013\u001a\u00020\u0002*\u00020\u0002\u001a\u0014\u0010\u0014\u001a\u00020\u0002*\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "getIndentFunction",
        "Lkotlin/Function1;",
        "",
        "indent",
        "getIndentFunction$StringsKt__IndentKt",
        "indentWidth",
        "",
        "indentWidth$StringsKt__IndentKt",
        "prependIndent",
        "reindent",
        "",
        "resultSizeEstimate",
        "indentAddFunction",
        "indentCutFunction",
        "reindent$StringsKt__IndentKt",
        "replaceIndent",
        "newIndent",
        "replaceIndentByMargin",
        "marginPrefix",
        "trimIndent",
        "trimMargin",
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

    invoke-direct {p0}, Lo/calcCompleteEventCache;-><init>()V

    return-void
.end method

.method public static final extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "$this$replaceIndentByMargin"

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "newIndent"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "marginPrefix"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lo/childWrites;->ICustomTabsCallback(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_f

    .line 35
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const-string v5, "$this$lines"

    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$this$lineSequence"

    .line 2290
    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "\n"

    const-string v6, "\r\n"

    const-string v7, "\r"

    .line 3283
    filled-new-array {v6, v5, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 4188
    invoke-static {v3, v6, v7, v7}, Lo/childWrites;->onPostMessage(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lo/applyTaggedRangeMerges;

    move-result-object v3

    .line 2290
    invoke-static {v3}, Lo/removeTags;->onMessageChannelReady(Lo/applyTaggedRangeMerges;)Ljava/util/List;

    move-result-object v3

    .line 37
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    mul-int v6, v6, v8

    add-int/2addr v0, v6

    .line 5102
    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    sget-object v1, Lo/getSyncPointTree$onNavigationEvent;->ICustomTabsCallback:Lo/getSyncPointTree$onNavigationEvent;

    check-cast v1, Lo/onDisconnectSetValue;

    goto :goto_1

    .line 5103
    :cond_1
    new-instance v6, Lo/getSyncPointTree$ICustomTabsCallback;

    invoke-direct {v6, v1}, Lo/getSyncPointTree$ICustomTabsCallback;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    check-cast v1, Lo/onDisconnectSetValue;

    :goto_1
    const-string v6, "$this$lastIndex"

    .line 122
    invoke-static {v3, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5210
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .line 123
    check-cast v3, Ljava/lang/Iterable;

    .line 132
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .line 144
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v9, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    if-ltz v9, :cond_d

    .line 142
    check-cast v10, Ljava/lang/String;

    const/4 v12, 0x0

    if-eqz v9, :cond_2

    if-ne v9, v6, :cond_3

    .line 145
    :cond_2
    move-object v9, v10

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lo/childWrites;->ICustomTabsCallback(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v10, v12

    goto :goto_8

    .line 38
    :cond_3
    move-object v9, v10

    check-cast v9, Ljava/lang/CharSequence;

    .line 149
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v13

    const/4 v14, 0x0

    :goto_3
    const/4 v15, -0x1

    if-ge v14, v13, :cond_7

    .line 150
    invoke-interface {v9, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    .line 6072
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v17

    if-nez v17, :cond_5

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v16

    if-eqz v16, :cond_4

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/16 v16, 0x1

    :goto_5
    xor-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_7
    const/4 v14, -0x1

    :goto_6
    if-eq v14, v15, :cond_9

    const-string v9, "$this$startsWith"

    .line 6343
    invoke-static {v10, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "prefix"

    invoke-static {v2, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6345
    invoke-virtual {v10, v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 42
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v14, v9

    if-eqz v10, :cond_8

    invoke-virtual {v10, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const-string v9, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v12, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_7
    if-eqz v12, :cond_b

    .line 44
    invoke-interface {v1, v12}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_a

    goto :goto_8

    :cond_a
    move-object v10, v9

    :cond_b
    :goto_8
    if-eqz v10, :cond_c

    .line 142
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_c
    move v9, v11

    goto/16 :goto_2

    .line 5441
    :cond_d
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 156
    :cond_e
    check-cast v8, Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    check-cast v1, Ljava/lang/Appendable;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v8, v1, v5}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 34
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "marginPrefix must be non-blank string."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
