.class public final enum Lcom/freshchat/consumer/sdk/JwtTokenStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/JwtTokenStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/JwtTokenStatus;

.field public static final enum TOKEN_EXPIRED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

.field public static final enum TOKEN_INVALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

.field public static final enum TOKEN_NOT_PROCESSED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

.field public static final enum TOKEN_NOT_SET:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

.field public static final enum TOKEN_VALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;


# instance fields
.field private final intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "TOKEN_NOT_SET"

    invoke-direct {v0, v3, v1, v2}, Lcom/freshchat/consumer/sdk/JwtTokenStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_NOT_SET:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    new-instance v0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    const/4 v3, 0x2

    const-string v4, "TOKEN_NOT_PROCESSED"

    invoke-direct {v0, v4, v2, v3}, Lcom/freshchat/consumer/sdk/JwtTokenStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_NOT_PROCESSED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    new-instance v0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    const/4 v4, 0x3

    const-string v5, "TOKEN_VALID"

    invoke-direct {v0, v5, v3, v4}, Lcom/freshchat/consumer/sdk/JwtTokenStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_VALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    new-instance v0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    const/4 v5, 0x4

    const-string v6, "TOKEN_INVALID"

    invoke-direct {v0, v6, v4, v5}, Lcom/freshchat/consumer/sdk/JwtTokenStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_INVALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    new-instance v0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    const/4 v6, 0x5

    const-string v7, "TOKEN_EXPIRED"

    invoke-direct {v0, v7, v5, v6}, Lcom/freshchat/consumer/sdk/JwtTokenStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_EXPIRED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    new-array v6, v6, [Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    sget-object v7, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_NOT_SET:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    aput-object v7, v6, v1

    sget-object v1, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_NOT_PROCESSED:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    aput-object v1, v6, v2

    sget-object v1, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_VALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    aput-object v1, v6, v3

    sget-object v1, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_INVALID:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->$VALUES:[Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->intValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/freshchat/consumer/sdk/JwtTokenStatus;
    .locals 5

    invoke-static {}, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->values()[Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->asInt()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->TOKEN_NOT_SET:Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/JwtTokenStatus;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/JwtTokenStatus;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->$VALUES:[Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/JwtTokenStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/JwtTokenStatus;

    return-object v0
.end method


# virtual methods
.method public final asInt()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/JwtTokenStatus;->intValue:I

    return v0
.end method
