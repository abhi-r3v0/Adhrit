.class public final enum Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServerErrorCodes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

.field public static final enum ERROR_CODE_APP_DELETED:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "20"
    .end annotation
.end field

.field public static final enum ERROR_CODE_BAD_REQUEST:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "5"
    .end annotation
.end field

.field public static final enum ERROR_CODE_INVALID_JWT_TOKEN:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "23"
    .end annotation
.end field

.field public static final enum ERROR_CODE_JWT_CLAIMS_TOO_LARGE:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "25"
    .end annotation
.end field

.field public static final enum ERROR_CODE_JWT_TOKEN_EXPIRED:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "26"
    .end annotation
.end field

.field public static final enum ERROR_CODE_NO_APP:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "3"
    .end annotation
.end field

.field public static final enum ERROR_CODE_NO_USER:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "1"
    .end annotation
.end field

.field public static final enum ERROR_CODE_USER_ALREADY_PRESENT:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "4"
    .end annotation
.end field

.field public static final enum ERROR_CODE_USER_DELETED:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "19"
    .end annotation
.end field

.field public static final enum ERROR_CODE_USER_MISMATCH:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "2"
    .end annotation
.end field


# instance fields
.field private intVal:I

.field private strVal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const/4 v1, 0x0

    const-string v2, "ERROR_CODE_NO_USER"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3, v2}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_NO_USER:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const-string v2, "ERROR_CODE_USER_MISMATCH"

    const/4 v4, 0x2

    invoke-direct {v0, v2, v3, v4, v2}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_USER_MISMATCH:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const-string v2, "ERROR_CODE_NO_APP"

    const/4 v5, 0x3

    invoke-direct {v0, v2, v4, v5, v2}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_NO_APP:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const-string v2, "ERROR_CODE_USER_ALREADY_PRESENT"

    const/4 v6, 0x4

    invoke-direct {v0, v2, v5, v6, v2}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_USER_ALREADY_PRESENT:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const-string v2, "ERROR_CODE_BAD_REQUEST"

    const/4 v7, 0x5

    invoke-direct {v0, v2, v6, v7, v2}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_BAD_REQUEST:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const-string v2, "ERROR_CODE_USER_DELETED"

    const/16 v8, 0x13

    invoke-direct {v0, v2, v7, v8, v2}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_USER_DELETED:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const/4 v2, 0x6

    const-string v8, "ERROR_CODE_APP_DELETED"

    const/16 v9, 0x14

    invoke-direct {v0, v8, v2, v9, v8}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_APP_DELETED:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const/4 v8, 0x7

    const-string v9, "ERROR_CODE_INVALID_JWT_TOKEN"

    const/16 v10, 0x17

    invoke-direct {v0, v9, v8, v10, v9}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_INVALID_JWT_TOKEN:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const/16 v9, 0x8

    const-string v10, "ERROR_CODE_JWT_CLAIMS_TOO_LARGE"

    const/16 v11, 0x19

    const-string v12, "ERROR_CODE_JWT_CLAIMS_SIZE_EXCEEDED"

    invoke-direct {v0, v10, v9, v11, v12}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_JWT_CLAIMS_TOO_LARGE:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const/16 v10, 0x9

    const-string v11, "ERROR_CODE_JWT_TOKEN_EXPIRED"

    const/16 v12, 0x1a

    const-string v13, "ERROR_CODE_EXPIRED_JWT_TOKEN"

    invoke-direct {v0, v11, v10, v12, v13}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_JWT_TOKEN_EXPIRED:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    sget-object v12, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_NO_USER:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    aput-object v12, v11, v1

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_USER_MISMATCH:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    aput-object v1, v11, v3

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_NO_APP:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    aput-object v1, v11, v4

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_USER_ALREADY_PRESENT:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    aput-object v1, v11, v5

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_BAD_REQUEST:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    aput-object v1, v11, v6

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_USER_DELETED:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    aput-object v1, v11, v7

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_APP_DELETED:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    aput-object v1, v11, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_INVALID_JWT_TOKEN:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    aput-object v1, v11, v8

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->ERROR_CODE_JWT_CLAIMS_TOO_LARGE:Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->intVal:I

    iput-object p4, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->strVal:Ljava/lang/String;

    return-void
.end method

.method public static fromInt(I)Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .locals 5

    invoke-static {}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->values()[Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->getIntVal()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;

    return-object v0
.end method


# virtual methods
.method public final getIntVal()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->intVal:I

    return v0
.end method

.method public final getStrVal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes;->strVal:Ljava/lang/String;

    return-object v0
.end method
