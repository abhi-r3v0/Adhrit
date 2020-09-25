.class Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/apache/commons/collections4/Factory;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/functors/PrototypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrototypeSerializationFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Factory<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x78ce4155b63c4f51L


# instance fields
.field private final iPrototype:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/Serializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;->iPrototype:Ljava/io/Serializable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/Serializable;Lorg/apache/commons/collections4/functors/PrototypeFactory$1;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;-><init>(Ljava/io/Serializable;)V

    return-void
.end method


# virtual methods
.method public create()Ljava/io/Serializable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    .line 177
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 178
    iget-object v3, p0, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;->iPrototype:Ljava/io/Serializable;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 180
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 182
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 191
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 197
    :catch_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-object v1

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_2

    :catch_4
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    .line 187
    :goto_0
    :try_start_4
    new-instance v3, Lorg/apache/commons/collections4/FunctorException;

    invoke-direct {v3, v1}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_5
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    .line 185
    :goto_1
    new-instance v3, Lorg/apache/commons/collections4/FunctorException;

    invoke-direct {v3, v1}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    :goto_2
    if-eqz v2, :cond_0

    .line 191
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 197
    :catch_6
    :cond_0
    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 200
    :catch_7
    throw v1
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;->create()Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method
