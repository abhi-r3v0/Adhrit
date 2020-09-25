.class public Lo/collectDistinctViewsForSubTree;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u001a\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0001\u001a\u0018\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0000\u001a\r\u0010\u000e\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0010\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0011\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0012\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0013\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0014\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0015\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0016\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0017\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0018\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u0019\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u001a\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u001b\u001a\u00020\u000f*\u00020\u0002H\u0087\u0008\u001a\n\u0010\u001c\u001a\u00020\u000f*\u00020\u0002\u001a\r\u0010\u001d\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u001e\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\u001a\r\u0010\u001f\u001a\u00020\u0002*\u00020\u0002H\u0087\u0008\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0006*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006 "
    }
    d2 = {
        "category",
        "Lkotlin/text/CharCategory;",
        "",
        "getCategory",
        "(C)Lkotlin/text/CharCategory;",
        "directionality",
        "Lkotlin/text/CharDirectionality;",
        "getDirectionality",
        "(C)Lkotlin/text/CharDirectionality;",
        "checkRadix",
        "",
        "radix",
        "digitOf",
        "char",
        "isDefined",
        "",
        "isDigit",
        "isHighSurrogate",
        "isISOControl",
        "isIdentifierIgnorable",
        "isJavaIdentifierPart",
        "isJavaIdentifierStart",
        "isLetter",
        "isLetterOrDigit",
        "isLowSurrogate",
        "isLowerCase",
        "isTitleCase",
        "isUpperCase",
        "isWhitespace",
        "toLowerCase",
        "toTitleCase",
        "toUpperCase",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x1,
        0x10
    }
    xi = 0x1
    xs = "kotlin/text/CharsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final onMessageChannelReady(I)I
    .locals 5

    const/4 v0, 0x2

    const/16 v1, 0x24

    if-gt v0, p0, :cond_0

    if-lt v1, p0, :cond_0

    return p0

    .line 156
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "radix "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " was not in valid range "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lo/forEachTree;

    invoke-direct {p0, v0, v1}, Lo/forEachTree;-><init>(II)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method
