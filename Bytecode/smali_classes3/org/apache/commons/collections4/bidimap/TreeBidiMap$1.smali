.class synthetic Lorg/apache/commons/collections4/bidimap/TreeBidiMap$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$commons$collections4$bidimap$TreeBidiMap$DataElement:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1402
    invoke-static {}, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->values()[Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$1;->$SwitchMap$org$apache$commons$collections4$bidimap$TreeBidiMap$DataElement:[I

    :try_start_0
    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->KEY:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$1;->$SwitchMap$org$apache$commons$collections4$bidimap$TreeBidiMap$DataElement:[I

    sget-object v1, Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;->VALUE:Lorg/apache/commons/collections4/bidimap/TreeBidiMap$DataElement;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
