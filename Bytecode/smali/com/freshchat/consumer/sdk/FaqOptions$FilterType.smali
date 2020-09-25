.class public final enum Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/FaqOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

.field public static final enum ARTICLE:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

.field public static final enum CATEGORY:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    const/4 v1, 0x0

    const-string v2, "ARTICLE"

    invoke-direct {v0, v2, v1, v1}, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->ARTICLE:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    new-instance v0, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    const/4 v2, 0x1

    const-string v3, "CATEGORY"

    invoke-direct {v0, v3, v2, v2}, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->CATEGORY:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    sget-object v4, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->ARTICLE:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->$VALUES:[Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

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

    iput p3, p0, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->$VALUES:[Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    return-object v0
.end method
