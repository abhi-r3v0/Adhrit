.class public final enum Lcom/freshchat/consumer/sdk/service/e/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/service/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/service/e/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum go:Lcom/freshchat/consumer/sdk/service/e/f$a;

.field public static final enum gp:Lcom/freshchat/consumer/sdk/service/e/f$a;

.field private static final synthetic gq:[Lcom/freshchat/consumer/sdk/service/e/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/f$a;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/freshchat/consumer/sdk/service/e/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/f$a;->go:Lcom/freshchat/consumer/sdk/service/e/f$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/service/e/f$a;

    const/4 v2, 0x1

    const-string v3, "LAID_BACK"

    invoke-direct {v0, v3, v2}, Lcom/freshchat/consumer/sdk/service/e/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/service/e/f$a;->gp:Lcom/freshchat/consumer/sdk/service/e/f$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/freshchat/consumer/sdk/service/e/f$a;

    sget-object v4, Lcom/freshchat/consumer/sdk/service/e/f$a;->go:Lcom/freshchat/consumer/sdk/service/e/f$a;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/freshchat/consumer/sdk/service/e/f$a;->gq:[Lcom/freshchat/consumer/sdk/service/e/f$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/service/e/f$a;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/service/e/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/service/e/f$a;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/service/e/f$a;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/service/e/f$a;->gq:[Lcom/freshchat/consumer/sdk/service/e/f$a;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/service/e/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/service/e/f$a;

    return-object v0
.end method
