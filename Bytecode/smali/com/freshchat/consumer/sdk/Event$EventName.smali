.class public final enum Lcom/freshchat/consumer/sdk/Event$EventName;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freshchat/consumer/sdk/Event$EventName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventChannelListOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventConversationOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventCsatExpiry:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventCsatOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventCsatSubmit:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventFAQCategoryListOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventFAQListOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventFAQOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventFAQSearch:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventFAQVote:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventIdTokenStatusChange:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventLinkTap:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventMessageReceive:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventMessageSent:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventNotificationReceive:Lcom/freshchat/consumer/sdk/Event$EventName;

.field public static final enum FCEventScreenView:Lcom/freshchat/consumer/sdk/Event$EventName;

.field static eventNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/freshchat/consumer/sdk/Event$EventName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v1, "FCEventFAQCategoryListOpen"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventFAQCategoryListOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v1, "FCEventFAQListOpen"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventFAQListOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    const/4 v1, 0x2

    const-string v4, "FCEventFAQOpen"

    invoke-direct {v0, v4, v1, v4}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventFAQOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    const/4 v4, 0x3

    const-string v5, "FCEventFAQSearch"

    invoke-direct {v0, v5, v4, v5}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventFAQSearch:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    const/4 v5, 0x4

    const-string v6, "FCEventFAQVote"

    invoke-direct {v0, v6, v5, v6}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventFAQVote:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    const/4 v6, 0x5

    const-string v7, "FCEventChannelListOpen"

    invoke-direct {v0, v7, v6, v7}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventChannelListOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    const/4 v7, 0x6

    const-string v8, "FCEventMessageSent"

    invoke-direct {v0, v8, v7, v8}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventMessageSent:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    const/4 v8, 0x7

    const-string v9, "FCEventConversationOpen"

    invoke-direct {v0, v9, v8, v9}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventConversationOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    const/16 v9, 0x8

    const-string v10, "FCEventCsatOpen"

    invoke-direct {v0, v10, v9, v10}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCsatOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    const/16 v10, 0x9

    const-string v11, "FCEventCsatSubmit"

    invoke-direct {v0, v11, v10, v11}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCsatSubmit:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    const/16 v11, 0xa

    const-string v12, "FCEventCsatExpiry"

    invoke-direct {v0, v12, v11, v12}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCsatExpiry:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v12, "FCEventLinkTap"

    const/16 v13, 0xb

    const-string v14, "FCEventLinkTap"

    invoke-direct {v0, v12, v13, v14}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventLinkTap:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v12, "FCEventScreenView"

    const/16 v13, 0xc

    const-string v14, "FCEventScreenView"

    invoke-direct {v0, v12, v13, v14}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventScreenView:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v12, "FCEventMessageReceive"

    const/16 v13, 0xd

    const-string v14, "FCEventMessageReceive"

    invoke-direct {v0, v12, v13, v14}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventMessageReceive:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v12, "FCEventNotificationReceive"

    const/16 v13, 0xe

    const-string v14, "FCEventNotificationReceive"

    invoke-direct {v0, v12, v13, v14}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventNotificationReceive:Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    const-string v12, "FCEventIdTokenStatusChange"

    const/16 v13, 0xf

    const-string v14, "FCEventIdTokenStatusChange"

    invoke-direct {v0, v12, v13, v14}, Lcom/freshchat/consumer/sdk/Event$EventName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventIdTokenStatusChange:Lcom/freshchat/consumer/sdk/Event$EventName;

    const/16 v12, 0x10

    new-array v12, v12, [Lcom/freshchat/consumer/sdk/Event$EventName;

    sget-object v13, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventFAQCategoryListOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    aput-object v13, v12, v2

    sget-object v13, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventFAQListOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    aput-object v13, v12, v3

    sget-object v3, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventFAQOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    aput-object v3, v12, v1

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventFAQSearch:Lcom/freshchat/consumer/sdk/Event$EventName;

    aput-object v1, v12, v4

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventFAQVote:Lcom/freshchat/consumer/sdk/Event$EventName;

    aput-object v1, v12, v5

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventChannelListOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    aput-object v1, v12, v6

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventMessageSent:Lcom/freshchat/consumer/sdk/Event$EventName;

    aput-object v1, v12, v7

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventConversationOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    aput-object v1, v12, v8

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCsatOpen:Lcom/freshchat/consumer/sdk/Event$EventName;

    aput-object v1, v12, v9

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCsatSubmit:Lcom/freshchat/consumer/sdk/Event$EventName;

    aput-object v1, v12, v10

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCsatExpiry:Lcom/freshchat/consumer/sdk/Event$EventName;

    aput-object v1, v12, v11

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventLinkTap:Lcom/freshchat/consumer/sdk/Event$EventName;

    const/16 v3, 0xb

    aput-object v1, v12, v3

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventScreenView:Lcom/freshchat/consumer/sdk/Event$EventName;

    const/16 v3, 0xc

    aput-object v1, v12, v3

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventMessageReceive:Lcom/freshchat/consumer/sdk/Event$EventName;

    const/16 v3, 0xd

    aput-object v1, v12, v3

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventNotificationReceive:Lcom/freshchat/consumer/sdk/Event$EventName;

    const/16 v3, 0xe

    aput-object v1, v12, v3

    const/16 v1, 0xf

    aput-object v0, v12, v1

    sput-object v12, Lcom/freshchat/consumer/sdk/Event$EventName;->$VALUES:[Lcom/freshchat/consumer/sdk/Event$EventName;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->eventNameMap:Ljava/util/Map;

    :try_start_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/Event$EventName;->values()[Lcom/freshchat/consumer/sdk/Event$EventName;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/freshchat/consumer/sdk/Event$EventName;->eventNameMap:Ljava/util/Map;

    iget-object v5, v3, Lcom/freshchat/consumer/sdk/Event$EventName;->name:Ljava/lang/String;

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

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/Event$EventName;->name:Ljava/lang/String;

    return-void
.end method

.method public static get(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/Event$EventName;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "event_name"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/freshchat/consumer/sdk/Event$EventName;->eventNameMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/Event$EventName;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/Event$EventName;
    .locals 1

    const-class v0, Lcom/freshchat/consumer/sdk/Event$EventName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freshchat/consumer/sdk/Event$EventName;

    return-object p0
.end method

.method public static values()[Lcom/freshchat/consumer/sdk/Event$EventName;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->$VALUES:[Lcom/freshchat/consumer/sdk/Event$EventName;

    invoke-virtual {v0}, [Lcom/freshchat/consumer/sdk/Event$EventName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freshchat/consumer/sdk/Event$EventName;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Event$EventName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/Event$EventName;->name:Ljava/lang/String;

    return-object v0
.end method
