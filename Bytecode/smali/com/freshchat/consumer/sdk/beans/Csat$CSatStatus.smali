.class public final enum Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/beans/Csat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CSatStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

.field public static final enum NOT_RATED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

.field public static final enum RATED_NOT_UPLOADED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

.field public static final enum UPLOADED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;


# instance fields
.field private final intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    const/4 v1, 0x0

    const-string v2, "NOT_RATED"

    invoke-direct {v0, v2, v1, v1}, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->NOT_RATED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    const/4 v2, 0x1

    const-string v3, "RATED_NOT_UPLOADED"

    invoke-direct {v0, v3, v2, v2}, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->RATED_NOT_UPLOADED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    const/4 v3, 0x2

    const-string v4, "UPLOADED"

    invoke-direct {v0, v4, v3, v3}, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->UPLOADED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    sget-object v5, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->NOT_RATED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->RATED_NOT_UPLOADED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

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

    iput p3, p0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->intValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;
    .locals 5

    invoke-static {}, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->values()[Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->asInt()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->NOT_RATED:Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;

    return-object v0
.end method


# virtual methods
.method public final asInt()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/Csat$CSatStatus;->intValue:I

    return v0
.end method
