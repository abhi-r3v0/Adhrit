.class public final enum Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransformType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

.field public static final enum CIRCULAR:Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    const/4 v1, 0x0

    const-string v2, "CIRCULAR"

    invoke-direct {v0, v2, v1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;->CIRCULAR:Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    aput-object v0, v2, v1

    sput-object v2, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;->$VALUES:[Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;->$VALUES:[Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    return-object v0
.end method
