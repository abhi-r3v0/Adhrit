.class final Lorg/apache/commons/collections4/ListUtils$CharSequenceAsList;
.super Ljava/util/AbstractList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/ListUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CharSequenceAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field private final sequence:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 616
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 617
    iput-object p1, p0, Lorg/apache/commons/collections4/ListUtils$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Character;
    .locals 1

    .line 622
    iget-object v0, p0, Lorg/apache/commons/collections4/ListUtils$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/ListUtils$CharSequenceAsList;->get(I)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 627
    iget-object v0, p0, Lorg/apache/commons/collections4/ListUtils$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method
