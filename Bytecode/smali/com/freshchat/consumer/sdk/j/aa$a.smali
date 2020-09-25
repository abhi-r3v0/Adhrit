.class public final enum Lcom/freshchat/consumer/sdk/j/aa$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/j/aa$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum eD:Lcom/freshchat/consumer/sdk/j/aa$a;

.field public static final enum kF:Lcom/freshchat/consumer/sdk/j/aa$a;

.field private static final synthetic kG:[Lcom/freshchat/consumer/sdk/j/aa$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/freshchat/consumer/sdk/j/aa$a;

    const/4 v1, 0x0

    const-string v2, "CLEAR_USER_INFO"

    invoke-direct {v0, v2, v1}, Lcom/freshchat/consumer/sdk/j/aa$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/aa$a;->eD:Lcom/freshchat/consumer/sdk/j/aa$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/aa$a;

    const/4 v2, 0x1

    const-string v3, "CLEAR_ALL_INFO"

    invoke-direct {v0, v3, v2}, Lcom/freshchat/consumer/sdk/j/aa$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/aa$a;->kF:Lcom/freshchat/consumer/sdk/j/aa$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/freshchat/consumer/sdk/j/aa$a;

    sget-object v4, Lcom/freshchat/consumer/sdk/j/aa$a;->eD:Lcom/freshchat/consumer/sdk/j/aa$a;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/freshchat/consumer/sdk/j/aa$a;->kG:[Lcom/freshchat/consumer/sdk/j/aa$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/aa$a;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/j/aa$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/j/aa$a;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/j/aa$a;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/aa$a;->kG:[Lcom/freshchat/consumer/sdk/j/aa$a;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/j/aa$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/j/aa$a;

    return-object v0
.end method
