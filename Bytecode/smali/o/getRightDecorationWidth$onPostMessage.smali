.class public final Lo/getRightDecorationWidth$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRightDecorationWidth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/qr/QrCodeActivity$Companion;",
        "",
        "()V",
        "CAMERA_PERMISSION_REQUEST_CODE",
        "",
        "PROMO_CODE_DATA",
        "",
        "QR_CODE_DATA",
        "SHOULD_SKIP",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final MAX_PATH_DEPTH:I = 0x20

.field public static final MAX_PATH_LENGTH_BYTES:I = 0x300


# instance fields
.field private byteLength:I

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/ExecutorUtils$2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getRightDecorationWidth$onPostMessage;->parts:Ljava/util/List;

    const/4 v0, 0x0

    .line 1033
    iput v0, p0, Lo/getRightDecorationWidth$onPostMessage;->byteLength:I

    .line 1039
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LogFileManager;

    .line 1040
    iget-object v2, p0, Lo/getRightDecorationWidth$onPostMessage;->parts:Ljava/util/List;

    invoke-virtual {v1}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1044
    :cond_0
    iget-object p1, p0, Lo/getRightDecorationWidth$onPostMessage;->parts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lo/getRightDecorationWidth$onPostMessage;->byteLength:I

    .line 1045
    :goto_1
    iget-object p1, p0, Lo/getRightDecorationWidth$onPostMessage;->parts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 1046
    iget p1, p0, Lo/getRightDecorationWidth$onPostMessage;->byteLength:I

    iget-object v1, p0, Lo/getRightDecorationWidth$onPostMessage;->parts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lo/getRightDecorationWidth$onPostMessage;->utf8Bytes(Ljava/lang/CharSequence;)I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p0, Lo/getRightDecorationWidth$onPostMessage;->byteLength:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1048
    :cond_1
    invoke-direct {p0}, Lo/getRightDecorationWidth$onPostMessage;->checkValid()V

    return-void
.end method

.method private checkValid()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 1101
    iget v0, p0, Lo/getRightDecorationWidth$onPostMessage;->byteLength:I

    const/16 v1, 0x300

    if-gt v0, v1, :cond_1

    .line 1109
    iget-object v0, p0, Lo/getRightDecorationWidth$onPostMessage;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    return-void

    .line 1110
    :cond_0
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Path specified exceeds the maximum depth that can be written (32) or object contains a cycle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1114
    invoke-direct {p0}, Lo/getRightDecorationWidth$onPostMessage;->toErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1102
    :cond_1
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Data has a key path longer than 768 bytes ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lo/getRightDecorationWidth$onPostMessage;->byteLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static joinStringList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1127
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    .line 1129
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1133
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private pop()Ljava/lang/String;
    .locals 3

    .line 1091
    iget-object v0, p0, Lo/getRightDecorationWidth$onPostMessage;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1092
    iget v1, p0, Lo/getRightDecorationWidth$onPostMessage;->byteLength:I

    invoke-static {v0}, Lo/getRightDecorationWidth$onPostMessage;->utf8Bytes(Ljava/lang/CharSequence;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lo/getRightDecorationWidth$onPostMessage;->byteLength:I

    .line 1094
    iget-object v1, p0, Lo/getRightDecorationWidth$onPostMessage;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1095
    iget v1, p0, Lo/getRightDecorationWidth$onPostMessage;->byteLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lo/getRightDecorationWidth$onPostMessage;->byteLength:I

    :cond_0
    return-object v0
.end method

.method private push(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Lo/getRightDecorationWidth$onPostMessage;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1083
    iget v0, p0, Lo/getRightDecorationWidth$onPostMessage;->byteLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/getRightDecorationWidth$onPostMessage;->byteLength:I

    .line 1085
    :cond_0
    iget-object v0, p0, Lo/getRightDecorationWidth$onPostMessage;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    iget v0, p0, Lo/getRightDecorationWidth$onPostMessage;->byteLength:I

    invoke-static {p1}, Lo/getRightDecorationWidth$onPostMessage;->utf8Bytes(Ljava/lang/CharSequence;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lo/getRightDecorationWidth$onPostMessage;->byteLength:I

    .line 1087
    invoke-direct {p0}, Lo/getRightDecorationWidth$onPostMessage;->checkValid()V

    return-void
.end method

.method private toErrorString()Ljava/lang/String;
    .locals 3

    .line 1119
    iget-object v0, p0, Lo/getRightDecorationWidth$onPostMessage;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "in path \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/getRightDecorationWidth$onPostMessage;->parts:Ljava/util/List;

    const-string v2, "/"

    invoke-static {v2, v1}, Lo/getRightDecorationWidth$onPostMessage;->joinStringList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static utf8Bytes(Ljava/lang/CharSequence;)I
    .locals 5

    .line 1142
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1143
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/16 v4, 0x7ff

    if-gt v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 1148
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static validateWithObject(Lo/ExecutorUtils$2;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 1052
    new-instance v0, Lo/getRightDecorationWidth$onPostMessage;

    invoke-direct {v0, p0}, Lo/getRightDecorationWidth$onPostMessage;-><init>(Lo/ExecutorUtils$2;)V

    invoke-direct {v0, p1}, Lo/getRightDecorationWidth$onPostMessage;->withObject(Ljava/lang/Object;)V

    return-void
.end method

.method private withObject(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    .line 1056
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 1057
    check-cast p1, Ljava/util/Map;

    .line 1058
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "."

    .line 1059
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1062
    invoke-direct {p0, v1}, Lo/getRightDecorationWidth$onPostMessage;->push(Ljava/lang/String;)V

    .line 1063
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/getRightDecorationWidth$onPostMessage;->withObject(Ljava/lang/Object;)V

    .line 1064
    invoke-direct {p0}, Lo/getRightDecorationWidth$onPostMessage;->pop()Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void

    .line 1069
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1070
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    .line 1071
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1072
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1073
    invoke-direct {p0, v1}, Lo/getRightDecorationWidth$onPostMessage;->push(Ljava/lang/String;)V

    .line 1074
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/getRightDecorationWidth$onPostMessage;->withObject(Ljava/lang/Object;)V

    .line 1075
    invoke-direct {p0}, Lo/getRightDecorationWidth$onPostMessage;->pop()Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
