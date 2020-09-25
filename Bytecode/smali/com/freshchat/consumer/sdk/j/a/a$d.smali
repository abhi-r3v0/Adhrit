.class public final enum Lcom/freshchat/consumer/sdk/j/a/a$d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/j/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/j/a/a$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum jc:Lcom/freshchat/consumer/sdk/j/a/a$d;

.field public static final enum jd:Lcom/freshchat/consumer/sdk/j/a/a$d;

.field public static final enum je:Lcom/freshchat/consumer/sdk/j/a/a$d;

.field private static final synthetic jf:[Lcom/freshchat/consumer/sdk/j/a/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/freshchat/consumer/sdk/j/a/a$d;

    const/4 v1, 0x0

    const-string v2, "PENDING"

    invoke-direct {v0, v2, v1}, Lcom/freshchat/consumer/sdk/j/a/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/a/a$d;->jc:Lcom/freshchat/consumer/sdk/j/a/a$d;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/a/a$d;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lcom/freshchat/consumer/sdk/j/a/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/a/a$d;->jd:Lcom/freshchat/consumer/sdk/j/a/a$d;

    new-instance v0, Lcom/freshchat/consumer/sdk/j/a/a$d;

    const/4 v3, 0x2

    const-string v4, "FINISHED"

    invoke-direct {v0, v4, v3}, Lcom/freshchat/consumer/sdk/j/a/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/j/a/a$d;->je:Lcom/freshchat/consumer/sdk/j/a/a$d;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/freshchat/consumer/sdk/j/a/a$d;

    sget-object v5, Lcom/freshchat/consumer/sdk/j/a/a$d;->jc:Lcom/freshchat/consumer/sdk/j/a/a$d;

    aput-object v5, v4, v1

    sget-object v1, Lcom/freshchat/consumer/sdk/j/a/a$d;->jd:Lcom/freshchat/consumer/sdk/j/a/a$d;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/freshchat/consumer/sdk/j/a/a$d;->jf:[Lcom/freshchat/consumer/sdk/j/a/a$d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/j/a/a$d;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/j/a/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/j/a/a$d;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/j/a/a$d;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/j/a/a$d;->jf:[Lcom/freshchat/consumer/sdk/j/a/a$d;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/j/a/a$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/j/a/a$d;

    return-object v0
.end method
