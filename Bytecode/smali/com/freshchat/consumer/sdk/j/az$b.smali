.class public final enum Lcom/freshchat/consumer/sdk/j/az$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/j/az$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum kR:Lcom/freshchat/consumer/sdk/j/az$b;

.field private static final synthetic kS:[Lcom/freshchat/consumer/sdk/j/az$b;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/freshchat/consumer/sdk/j/az$b;

    const/4 v1, 0x0

    const-string v2, "TYPE_IMAGE"

    const-string v3, "image/*"

    invoke-direct {v0, v2, v1, v3}, Lcom/freshchat/consumer/sdk/j/az$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/az$b;->kR:Lcom/freshchat/consumer/sdk/j/az$b;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/freshchat/consumer/sdk/j/az$b;

    aput-object v0, v2, v1

    sput-object v2, Lcom/freshchat/consumer/sdk/j/az$b;->kS:[Lcom/freshchat/consumer/sdk/j/az$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/j/az$b;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/az$b;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/j/az$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/j/az$b;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/j/az$b;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/az$b;->kS:[Lcom/freshchat/consumer/sdk/j/az$b;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/j/az$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/j/az$b;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/az$b;->type:Ljava/lang/String;

    return-object v0
.end method
