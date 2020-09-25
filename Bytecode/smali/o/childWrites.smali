.class public final Lo/childWrites;
.super Lo/getWriteId;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "kotlin/text/StringsKt__AppendableKt",
        "kotlin/text/StringsKt__IndentKt",
        "kotlin/text/StringsKt__RegexExtensionsJVMKt",
        "kotlin/text/StringsKt__RegexExtensionsKt",
        "kotlin/text/StringsKt__StringBuilderJVMKt",
        "kotlin/text/StringsKt__StringBuilderKt",
        "kotlin/text/StringsKt__StringNumberConversionsJVMKt",
        "kotlin/text/StringsKt__StringNumberConversionsKt",
        "kotlin/text/StringsKt__StringsJVMKt",
        "kotlin/text/StringsKt__StringsKt",
        "kotlin/text/StringsKt___StringsJvmKt",
        "kotlin/text/StringsKt___StringsKt"
    }
    k = 0x4
    mv = {
        0x1,
        0x1,
        0x10
    }
    xi = 0x1
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/getWriteId;-><init>()V

    return-void
.end method

.method public static final asBinder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$takeLast"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v1, v0, :cond_0

    move v1, v0

    :cond_0
    sub-int/2addr v0, v1

    .line 536
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final extraCallback(Ljava/lang/CharSequence;)C
    .locals 2

    const-string v0, "$this$last"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "$this$lastIndex"

    .line 141
    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1317
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v1

    .line 141
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    return p0

    .line 140
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Char sequence is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method
