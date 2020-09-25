.class public Lorg/apache/commons/lang3/CharSet;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ASCII_ALPHA:Lorg/apache/commons/lang3/CharSet;

.field public static final ASCII_ALPHA_LOWER:Lorg/apache/commons/lang3/CharSet;

.field public static final ASCII_ALPHA_UPPER:Lorg/apache/commons/lang3/CharSet;

.field public static final ASCII_NUMERIC:Lorg/apache/commons/lang3/CharSet;

.field protected static final COMMON:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/lang3/CharSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lorg/apache/commons/lang3/CharSet;

.field private static final serialVersionUID:J = 0x528affa5f57a3936L


# instance fields
.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/lang3/CharRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 48
    new-instance v0, Lorg/apache/commons/lang3/CharSet;

    const/4 v1, 0x0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/commons/lang3/CharSet;-><init>([Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/CharSet;->EMPTY:Lorg/apache/commons/lang3/CharSet;

    .line 54
    new-instance v0, Lorg/apache/commons/lang3/CharSet;

    const-string v2, "a-zA-Z"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/lang3/CharSet;-><init>([Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/CharSet;->ASCII_ALPHA:Lorg/apache/commons/lang3/CharSet;

    .line 60
    new-instance v0, Lorg/apache/commons/lang3/CharSet;

    const-string v3, "a-z"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/apache/commons/lang3/CharSet;-><init>([Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/CharSet;->ASCII_ALPHA_LOWER:Lorg/apache/commons/lang3/CharSet;

    .line 66
    new-instance v0, Lorg/apache/commons/lang3/CharSet;

    const-string v4, "A-Z"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/apache/commons/lang3/CharSet;-><init>([Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/CharSet;->ASCII_ALPHA_UPPER:Lorg/apache/commons/lang3/CharSet;

    .line 72
    new-instance v0, Lorg/apache/commons/lang3/CharSet;

    const-string v5, "0-9"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/apache/commons/lang3/CharSet;-><init>([Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/CharSet;->ASCII_NUMERIC:Lorg/apache/commons/lang3/CharSet;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 82
    sput-object v0, Lorg/apache/commons/lang3/CharSet;->COMMON:Ljava/util/Map;

    sget-object v6, Lorg/apache/commons/lang3/CharSet;->EMPTY:Lorg/apache/commons/lang3/CharSet;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/apache/commons/lang3/CharSet;->COMMON:Ljava/util/Map;

    sget-object v1, Lorg/apache/commons/lang3/CharSet;->EMPTY:Lorg/apache/commons/lang3/CharSet;

    const-string v6, ""

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/apache/commons/lang3/CharSet;->COMMON:Ljava/util/Map;

    sget-object v1, Lorg/apache/commons/lang3/CharSet;->ASCII_ALPHA:Lorg/apache/commons/lang3/CharSet;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/apache/commons/lang3/CharSet;->COMMON:Ljava/util/Map;

    sget-object v1, Lorg/apache/commons/lang3/CharSet;->ASCII_ALPHA:Lorg/apache/commons/lang3/CharSet;

    const-string v2, "A-Za-z"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/apache/commons/lang3/CharSet;->COMMON:Ljava/util/Map;

    sget-object v1, Lorg/apache/commons/lang3/CharSet;->ASCII_ALPHA_LOWER:Lorg/apache/commons/lang3/CharSet;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/apache/commons/lang3/CharSet;->COMMON:Ljava/util/Map;

    sget-object v1, Lorg/apache/commons/lang3/CharSet;->ASCII_ALPHA_UPPER:Lorg/apache/commons/lang3/CharSet;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/apache/commons/lang3/CharSet;->COMMON:Ljava/util/Map;

    sget-object v1, Lorg/apache/commons/lang3/CharSet;->ASCII_NUMERIC:Lorg/apache/commons/lang3/CharSet;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/String;)V
    .locals 3

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/CharSet;->set:Ljava/util/Set;

    .line 161
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 163
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/CharSet;->add(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs getInstance([Ljava/lang/String;)Lorg/apache/commons/lang3/CharSet;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 142
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 143
    sget-object v0, Lorg/apache/commons/lang3/CharSet;->COMMON:Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/CharSet;

    if-eqz v0, :cond_1

    return-object v0

    .line 148
    :cond_1
    new-instance v0, Lorg/apache/commons/lang3/CharSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/CharSet;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected add(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    sub-int v2, v0, v1

    const/16 v3, 0x2d

    const/16 v4, 0x5e

    const/4 v5, 0x4

    if-lt v2, v5, :cond_1

    .line 182
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_1

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_1

    .line 184
    iget-object v2, p0, Lorg/apache/commons/lang3/CharSet;->set:Ljava/util/Set;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v1, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/CharRange;->isNotIn(CC)Lorg/apache/commons/lang3/CharRange;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    if-lt v2, v5, :cond_2

    add-int/lit8 v5, v1, 0x1

    .line 186
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_2

    .line 188
    iget-object v2, p0, Lorg/apache/commons/lang3/CharSet;->set:Ljava/util/Set;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/CharRange;->isIn(CC)Lorg/apache/commons/lang3/CharRange;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    .line 190
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_3

    .line 192
    iget-object v2, p0, Lorg/apache/commons/lang3/CharSet;->set:Ljava/util/Set;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/lang3/CharRange;->isNot(C)Lorg/apache/commons/lang3/CharRange;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 196
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/lang3/CharSet;->set:Ljava/util/Set;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/lang3/CharRange;->is(C)Lorg/apache/commons/lang3/CharRange;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public contains(C)Z
    .locals 2

    .line 224
    iget-object v0, p0, Lorg/apache/commons/lang3/CharSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/lang3/CharRange;

    .line 225
    invoke-virtual {v1, p1}, Lorg/apache/commons/lang3/CharRange;->contains(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 250
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/lang3/CharSet;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 253
    :cond_1
    check-cast p1, Lorg/apache/commons/lang3/CharSet;

    .line 254
    iget-object v0, p0, Lorg/apache/commons/lang3/CharSet;->set:Ljava/util/Set;

    iget-object p1, p1, Lorg/apache/commons/lang3/CharSet;->set:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method getCharRanges()[Lorg/apache/commons/lang3/CharRange;
    .locals 2

    .line 212
    iget-object v0, p0, Lorg/apache/commons/lang3/CharSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/lang3/CharRange;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/CharRange;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/apache/commons/lang3/CharSet;->set:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x59

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/apache/commons/lang3/CharSet;->set:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
