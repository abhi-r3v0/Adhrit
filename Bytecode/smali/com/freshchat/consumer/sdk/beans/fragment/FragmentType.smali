.class public final enum Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

.field public static final enum AUDIO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

.field public static final enum BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

.field public static final enum IMAGE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

.field public static final enum TEXT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

.field public static final enum VIDEO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;


# instance fields
.field private final clz:Ljava/lang/Class;

.field private final intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    const-class v1, Lcom/freshchat/consumer/sdk/beans/fragment/TextFragment;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "TEXT"

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->TEXT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    const-class v1, Lcom/freshchat/consumer/sdk/beans/fragment/ImageFragment;

    const/4 v4, 0x2

    const-string v5, "IMAGE"

    invoke-direct {v0, v5, v3, v4, v1}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->IMAGE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    const-class v1, Lcom/freshchat/consumer/sdk/beans/fragment/AudioFragment;

    const/4 v5, 0x3

    const-string v6, "AUDIO"

    invoke-direct {v0, v6, v4, v5, v1}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->AUDIO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    const-class v1, Lcom/freshchat/consumer/sdk/beans/fragment/VideoFragment;

    const/4 v6, 0x4

    const-string v7, "VIDEO"

    invoke-direct {v0, v7, v5, v6, v1}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->VIDEO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    new-instance v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    const-class v1, Lcom/freshchat/consumer/sdk/beans/fragment/ButtonFragment;

    const/4 v7, 0x5

    const-string v8, "BUTTON"

    invoke-direct {v0, v8, v6, v7, v1}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->BUTTON:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    new-array v1, v7, [Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    sget-object v7, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->TEXT:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    aput-object v7, v1, v2

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->IMAGE:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->AUDIO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->VIDEO:Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->intValue:I

    iput-object p4, p0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->clz:Ljava/lang/Class;

    return-void
.end method

.method public static fromInt(I)Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;
    .locals 5

    invoke-static {}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->values()[Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->asInt()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->$VALUES:[Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;

    return-object v0
.end method


# virtual methods
.method public final asInt()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->intValue:I

    return v0
.end method

.method public final getClz()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/beans/fragment/FragmentType;->clz:Ljava/lang/Class;

    return-object v0
.end method
