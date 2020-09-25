.class public final enum Lcom/freshchat/consumer/sdk/Event$Property;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Property"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/Event$Property;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyChannelID:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyChannelName:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyComment:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyConversationID:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyFAQCategoryID:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyFAQCategoryName:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyFAQID:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyFAQTitle:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyInputTags:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyIsHelpful:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyIsRelevant:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyRating:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyResolutionStatus:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertySearchFAQCount:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertySearchKey:Lcom/freshchat/consumer/sdk/Event$Property;

.field public static final enum FCPropertyURL:Lcom/freshchat/consumer/sdk/Event$Property;

.field static eventPropertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/Event$Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v1, "FCPropertyInputTags"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyInputTags:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v1, "FCPropertyFAQCategoryID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyFAQCategoryID:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$Property;

    const/4 v1, 0x2

    const-string v4, "FCPropertyFAQCategoryName"

    invoke-direct {v0, v4, v1, v4}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyFAQCategoryName:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$Property;

    const/4 v4, 0x3

    const-string v5, "FCPropertyFAQID"

    invoke-direct {v0, v5, v4, v5}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyFAQID:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$Property;

    const/4 v5, 0x4

    const-string v6, "FCPropertyFAQTitle"

    invoke-direct {v0, v6, v5, v6}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyFAQTitle:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$Property;

    const/4 v6, 0x5

    const-string v7, "FCPropertySearchKey"

    invoke-direct {v0, v7, v6, v7}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertySearchKey:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$Property;

    const/4 v7, 0x6

    const-string v8, "FCPropertySearchFAQCount"

    invoke-direct {v0, v8, v7, v8}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertySearchFAQCount:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$Property;

    const/4 v8, 0x7

    const-string v9, "FCPropertyIsRelevant"

    invoke-direct {v0, v9, v8, v9}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyIsRelevant:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$Property;

    const/16 v9, 0x8

    const-string v10, "FCPropertyIsHelpful"

    invoke-direct {v0, v10, v9, v10}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyIsHelpful:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$Property;

    const/16 v10, 0x9

    const-string v11, "FCPropertyChannelID"

    invoke-direct {v0, v11, v10, v11}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyChannelID:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$Property;

    const/16 v11, 0xa

    const-string v12, "FCPropertyConversationID"

    invoke-direct {v0, v12, v11, v12}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyConversationID:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v12, "FCPropertyChannelName"

    const/16 v13, 0xb

    const-string v14, "FCPropertyChannelName"

    invoke-direct {v0, v12, v13, v14}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyChannelName:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v12, "FCPropertyResolutionStatus"

    const/16 v13, 0xc

    const-string v14, "FCPropertyResolutionStatus"

    invoke-direct {v0, v12, v13, v14}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyResolutionStatus:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v12, "FCPropertyRating"

    const/16 v13, 0xd

    const-string v14, "FCPropertyRating"

    invoke-direct {v0, v12, v13, v14}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyRating:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v12, "FCPropertyComment"

    const/16 v13, 0xe

    const-string v14, "FCPropertyComment"

    invoke-direct {v0, v12, v13, v14}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyComment:Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$Property;

    const-string v12, "FCPropertyURL"

    const/16 v13, 0xf

    const-string v14, "FCPropertyURL"

    invoke-direct {v0, v12, v13, v14}, Lcom/freshchat/consumer/sdk/Event$Property;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyURL:Lcom/freshchat/consumer/sdk/Event$Property;

    const/16 v12, 0x10

    new-array v12, v12, [Lcom/freshchat/consumer/sdk/Event$Property;

    sget-object v13, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyInputTags:Lcom/freshchat/consumer/sdk/Event$Property;

    aput-object v13, v12, v2

    sget-object v13, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyFAQCategoryID:Lcom/freshchat/consumer/sdk/Event$Property;

    aput-object v13, v12, v3

    sget-object v3, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyFAQCategoryName:Lcom/freshchat/consumer/sdk/Event$Property;

    aput-object v3, v12, v1

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyFAQID:Lcom/freshchat/consumer/sdk/Event$Property;

    aput-object v1, v12, v4

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyFAQTitle:Lcom/freshchat/consumer/sdk/Event$Property;

    aput-object v1, v12, v5

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertySearchKey:Lcom/freshchat/consumer/sdk/Event$Property;

    aput-object v1, v12, v6

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertySearchFAQCount:Lcom/freshchat/consumer/sdk/Event$Property;

    aput-object v1, v12, v7

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyIsRelevant:Lcom/freshchat/consumer/sdk/Event$Property;

    aput-object v1, v12, v8

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyIsHelpful:Lcom/freshchat/consumer/sdk/Event$Property;

    aput-object v1, v12, v9

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyChannelID:Lcom/freshchat/consumer/sdk/Event$Property;

    aput-object v1, v12, v10

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyConversationID:Lcom/freshchat/consumer/sdk/Event$Property;

    aput-object v1, v12, v11

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyChannelName:Lcom/freshchat/consumer/sdk/Event$Property;

    const/16 v3, 0xb

    aput-object v1, v12, v3

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyResolutionStatus:Lcom/freshchat/consumer/sdk/Event$Property;

    const/16 v3, 0xc

    aput-object v1, v12, v3

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyRating:Lcom/freshchat/consumer/sdk/Event$Property;

    const/16 v3, 0xd

    aput-object v1, v12, v3

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyComment:Lcom/freshchat/consumer/sdk/Event$Property;

    const/16 v3, 0xe

    aput-object v1, v12, v3

    const/16 v1, 0xf

    aput-object v0, v12, v1

    sput-object v12, Lcom/freshchat/consumer/sdk/Event$Property;->$VALUES:[Lcom/freshchat/consumer/sdk/Event$Property;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->eventPropertyMap:Ljava/util/Map;

    :try_start_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/Event$Property;->values()[Lcom/freshchat/consumer/sdk/Event$Property;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/freshchat/consumer/sdk/Event$Property;->eventPropertyMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/freshchat/consumer/sdk/Event$Property;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

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

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/Event$Property;->name:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/Event$Property;
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->eventPropertyMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/Event$Property;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/Event$Property;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/Event$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/Event$Property;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/Event$Property;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/Event$Property;->$VALUES:[Lcom/freshchat/consumer/sdk/Event$Property;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/Event$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/Event$Property;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Event$Property;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Event$Property;->name:Ljava/lang/String;

    return-object v0
.end method
