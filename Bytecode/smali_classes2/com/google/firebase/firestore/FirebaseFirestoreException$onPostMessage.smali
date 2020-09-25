.class public final enum Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/FirebaseFirestoreException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

.field public static final enum ABORTED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

.field public static final enum ALREADY_EXISTS:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

.field public static final enum CANCELLED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

.field public static final enum DATA_LOSS:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

.field public static final enum DEADLINE_EXCEEDED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

.field public static final enum FAILED_PRECONDITION:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

.field public static final enum INTERNAL:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

.field public static final enum INVALID_ARGUMENT:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

.field public static final enum NOT_FOUND:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

.field public static final enum OK:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

.field public static final enum OUT_OF_RANGE:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

.field public static final enum PERMISSION_DENIED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

.field public static final enum RESOURCE_EXHAUSTED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

.field private static final STATUS_LIST:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum UNAUTHENTICATED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

.field public static final enum UNAVAILABLE:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

.field public static final enum UNIMPLEMENTED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

.field public static final enum UNKNOWN:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 36
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->OK:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    .line 39
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "CANCELLED"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->CANCELLED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    .line 42
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v4, v3, v3}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNKNOWN:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    .line 49
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/4 v4, 0x3

    const-string v5, "INVALID_ARGUMENT"

    invoke-direct {v0, v5, v4, v4}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->INVALID_ARGUMENT:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    .line 57
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/4 v5, 0x4

    const-string v6, "DEADLINE_EXCEEDED"

    invoke-direct {v0, v6, v5, v5}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->DEADLINE_EXCEEDED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    .line 60
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/4 v6, 0x5

    const-string v7, "NOT_FOUND"

    invoke-direct {v0, v7, v6, v6}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->NOT_FOUND:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    .line 63
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/4 v7, 0x6

    const-string v8, "ALREADY_EXISTS"

    invoke-direct {v0, v8, v7, v7}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->ALREADY_EXISTS:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    .line 66
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/4 v8, 0x7

    const-string v9, "PERMISSION_DENIED"

    invoke-direct {v0, v9, v8, v8}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->PERMISSION_DENIED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    .line 72
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/16 v9, 0x8

    const-string v10, "RESOURCE_EXHAUSTED"

    invoke-direct {v0, v10, v9, v9}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->RESOURCE_EXHAUSTED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    .line 78
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/16 v10, 0x9

    const-string v11, "FAILED_PRECONDITION"

    invoke-direct {v0, v11, v10, v10}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->FAILED_PRECONDITION:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    .line 83
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/16 v11, 0xa

    const-string v12, "ABORTED"

    invoke-direct {v0, v12, v11, v11}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->ABORTED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    .line 86
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/16 v12, 0xb

    const-string v13, "OUT_OF_RANGE"

    invoke-direct {v0, v13, v12, v12}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->OUT_OF_RANGE:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    .line 89
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/16 v13, 0xc

    const-string v14, "UNIMPLEMENTED"

    invoke-direct {v0, v14, v13, v13}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNIMPLEMENTED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    .line 95
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/16 v14, 0xd

    const-string v15, "INTERNAL"

    invoke-direct {v0, v15, v14, v14}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->INTERNAL:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    .line 101
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/16 v15, 0xe

    const-string v14, "UNAVAILABLE"

    invoke-direct {v0, v14, v15, v15}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNAVAILABLE:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    .line 104
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/16 v14, 0xf

    const-string v15, "DATA_LOSS"

    invoke-direct {v0, v15, v14, v14}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->DATA_LOSS:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    .line 107
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/16 v15, 0x10

    const-string v14, "UNAUTHENTICATED"

    invoke-direct {v0, v14, v15, v15}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNAUTHENTICATED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/16 v14, 0x11

    new-array v14, v14, [Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    .line 31
    sget-object v16, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->OK:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    aput-object v16, v14, v1

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->CANCELLED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    aput-object v1, v14, v2

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNKNOWN:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    aput-object v1, v14, v3

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->INVALID_ARGUMENT:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    aput-object v1, v14, v4

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->DEADLINE_EXCEEDED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    aput-object v1, v14, v5

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->NOT_FOUND:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    aput-object v1, v14, v6

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->ALREADY_EXISTS:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    aput-object v1, v14, v7

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->PERMISSION_DENIED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    aput-object v1, v14, v8

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->RESOURCE_EXHAUSTED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    aput-object v1, v14, v9

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->FAILED_PRECONDITION:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    aput-object v1, v14, v10

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->ABORTED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    aput-object v1, v14, v11

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->OUT_OF_RANGE:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    aput-object v1, v14, v12

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNIMPLEMENTED:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    aput-object v1, v14, v13

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->INTERNAL:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNAVAILABLE:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->DATA_LOSS:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->$VALUES:[Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    .line 121
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->buildStatusList()Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->STATUS_LIST:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    iput p3, p0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->value:I

    return-void
.end method

.method private static buildStatusList()Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 125
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->values()[Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 126
    invoke-virtual {v4}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->value()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    if-nez v5, :cond_0

    .line 131
    invoke-virtual {v4}, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->value()I

    move-result v5

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Code value duplication between "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public static fromValue(I)Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;
    .locals 2

    .line 138
    sget-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->STATUS_LIST:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->UNKNOWN:Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;
    .locals 1

    .line 31
    const-class v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->$VALUES:[Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/google/firebase/firestore/FirebaseFirestoreException$onPostMessage;->value:I

    return v0
.end method
